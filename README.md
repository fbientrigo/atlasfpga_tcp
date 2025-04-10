# Guía de Depuración e Implementación del DHCP en MB40CH_wUART

Este documento resume los hallazgos, observaciones y pasos a seguir respecto al problema con el DHCP en la aplicación basada en Zynq (proyecto MB40CH_wUART). El problema fue discutido con el ingeniero electrónico **Mauro** y previametne con el investigador jefe **Orlando**.

## Tabla de Contenidos

- [Introducción](#introducción)
- [Antecedentes](#antecedentes)
- [Descripción del Problema](#descripción-del-problema)
- [Evidencia en el Código Fuente](#evidencia-en-el-código-fuente)
  - [main.c](#mainc)
  - [tcp_com.c](#tcp_comc)
- [Análisis y Observaciones](#análisis-y-observaciones)
- [Pruebas y Siguientes Pasos](#pruebas-y-siguientes-pasos)
- [Mejoras Futuras](#mejoras-futuras)
- [Referencias y Notas Adicionales](#referencias-y-notas-adicionales)

## Introducción

En el sistema implementado con la FPGA y el SDK en la tarjeta **MB40CH_wUART**, se ha detectado que el proceso de adquisición de la dirección IP vía DHCP **no funciona correctamente**. Aunque la conexión se establece (se puede acceder vía SSH y enviar comandos con *netcat*), el sistema **no obtiene la IP asignada por un servidor DHCP** y por ello siempre cae en una configuración de IP por defecto.

## Antecedentes

- **Conexión activa:** La red se conecta correctamente (ej. SSH y TCP/IP funcionan).
- **Problema específico:** El comando `ping` no responde porque no está habilitado, aunque el envío de comandos vía TCP/IP sí se realiza mediante herramientas como *netcat*.
- **Configuración de DHCP:** La función `dhcp_start()` se invoca y se espera a que se obtenga una IP. Cuando el contador de tiempo (`dhcp_timoutcntr`) expira, se asigna una IP por defecto (192.168.1.10).

> **Nota:** Según Mauro, el problema podría estar en la invocación o en el funcionamiento de `dhcp_start()` – quizá falte alguna llamada o parámetro, o la librería no esté incluyendo el componente necesario para iniciar correctamente el DHCP.

## Descripción del Problema

El proceso de DHCP debería:
- Iniciar y comunicarse con el servidor DHCP para obtener la dirección IP, máscara de red y puerta de enlace.
- Configurar correctamente la interfaz de red (`echo_netif`).

Actualmente, se observa lo siguiente:
- **Conexión establecida:** Se recibe la conexión mediante SSH y TCP/IP.
- **Fallo en DHCP:** Durante el proceso:
  - Se invoca `dhcp_start(echo_netif)` y se reinicia el contador `dhcp_timoutcntr` a 24.
  - Se entra en un bucle `while` que espera que `echo_netif->ip_addr.addr` se establezca.
  - Al agotarse el contador, el sistema asigna la IP por defecto y no obtiene la configuración real de la red.
  
Además, se ha discutido el manejo del gateway (la “puerta de enlace”); en conexiones punto a punto (configuradas por Mauro) se requiere que las IP tengan valores *invertidos* o configuraciones especiales para que la comunicación funcione correctamente con routers o servidores DHCP.

## Evidencia en el Código Fuente

### main.c

En el archivo `main.c` se encuentra la inicialización de la red y la configuración DHCP:

```c
// Inicialización de la interfaz de red
echo_netif = &server_netif;
...
ipaddr.addr = 0;
gw.addr = 0;
netmask.addr = 0;

lwip_init();
...
if (!xemac_add(echo_netif, &ipaddr, &netmask, &gw, mac_ethernet_address, PLATFORM_EMAC_BASEADDR)) {
    xil_printf("Error adding N/W interface\n\r");
    return -1;
}

netif_set_default(echo_netif);
netif_set_up(echo_netif);

// Inicio del cliente DHCP
dhcp_start(echo_netif);
dhcp_timoutcntr = 24;

while(((echo_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
    xemacif_input(echo_netif);

// Configuración por defecto si expira el tiempo
if (dhcp_timoutcntr <= 0) {
    if ((echo_netif->ip_addr.addr) == 0) {
        xil_printf("DHCP Timeout\r\n");
        xil_printf("Configuring default IP of 192.168.1.10\r\n");
        IP4_ADDR(&(echo_netif->ip_addr), 192, 168, 1, 10);
        IP4_ADDR(&(echo_netif->netmask), 255, 255, 255, 0);
        IP4_ADDR(&(echo_netif->gw), 192, 168, 1, 1);
    }
}
```

> **Observación:** La función `dhcp_start()` o algún comando previo en la inicialización del cliente DHCP (especialmente en Zynq) podría estar incompleto o no funcionando según lo esperado, lo cual impide que el servidor DHCP entregue la configuración de red.

### tcp_com.c

En `tcp_com.c` se gestiona la comunicación TCP, la cual funciona correctamente, ya que se reciben y envían comandos. Esto confirma que el problema se limita a la parte de asignación de IP vía DHCP.

Funciones y aspectos relevantes:
- **Funciones de envío de datos:** `transfer_data()`, `transfer_data_bkup()`
- **Callback de recepción:** `recv_callback()` procesa comandos, entre ellos los relacionados a la consulta de estado del sistema.
- **Inicio del servidor TCP:** en `start_application()`, donde se configura la PCB, se habilita la escucha en el puerto definido y se asignan callbacks.

Esta parte de la aplicación confirma que la transmisión de datos y las comunicaciones a nivel de aplicación sobre TCP/IP funcionan bien, aislando el problema al proceso DHCP.

## Análisis y Observaciones

- **Conexión establecida, DHCP fallido:** La conexión a la red se crea correctamente, pero el proceso DHCP no logra obtener una IP asignada.  
- **Tiempo límite y configuración por defecto:** Al agotarse `dhcp_timoutcntr` (24 ciclos de intento), la interfaz utiliza una configuración IP por defecto.  
- **Posibles causas:**
  - El comando `dhcp_start(echo_netif)` podría no estar ejecutándose correctamente o puede faltar una llamada a otra función necesaria en la secuencia de inicialización.
  - Puede existir un problema con la biblioteca DHCP en el entorno configurado para el Zynq.
  - La configuración de parámetros de red (máscara, gateway) o el formato de la dirección puede no ser compatible, en especial considerando la configuración punto a punto que implementó Mauro (la necesidad de “invertir” la IP para conectividad).
  - En ausencia de cable de red, el sistema falla (problema conocido a futuro).

- **Otros datos observados:**
  - Cuando se utiliza un router con la configuración IP por defecto, los datos se envían correctamente, lo que sugiere que el problema radica en la comunicación con un servidor DHCP en redes externas.
  - **Orlando** comprobó que los datos de DHCP no funcionaban, incluso llegando a redirigir información al puerto UART para verificación.

## Pruebas y Siguientes Pasos

1. **Validar la Secuencia DHCP:**
   - Revisar la documentación y ejemplos de la biblioteca lwIP para confirmar que la secuencia de inicialización y llamadas a `dhcp_start()` sean correctas.
   - Probar la ejecución de funciones relacionadas (como `dhcp_fine_tmr()` y `dhcp_coarse_tmr()`) en los intervalos adecuados, si es que se requieren en la versión de la librería utilizada.

2. **Verificación con Hardware Real:**
   - Realizar pruebas con la tarjeta (tarjetita) en un entorno controlado con cable conectado a un servidor DHCP real.
   - Ejecutar pequeños scripts de prueba que activen la función DHCP en un subconjunto de la librería para aislar el comportamiento.

3. **Revisar la Configuración de Red (echo_netif):**
   - Verificar que la estructura `echo_netif` se esté inicializando correctamente con la configuración de la IP, máscara y gateway.
   - Confirmar que el gateway se configura de acuerdo con la conexión punto a punto (en caso de no utilizar un router tradicional).

4. **Implementar Manejo de Errores:**
   - Desarrollar una rutina que, en ausencia de cable o fallo prolongado en DHCP, no “muera” la aplicación, sino que reporte el fallo y permita una recuperación o reintento sin reiniciar el sistema.

5. **Revisión en Zynq:**
   - Investigar si existe alguna configuración o inicialización adicional necesaria para que el cliente DHCP funcione correctamente en el entorno Zynq.

## Mejoras Futuras

- **Tolerancia a la Desconexión de Cable:**  
  Actualmente, si no hay cable conectado, el programa se bloquea o “muere”. Se debe implementar una gestión de tiempo o un modo “standby” que permita al sistema continuar ejecutándose sin reiniciarse.

- **Depuración Profunda de la Biblioteca DHCP:**  
  Verificar la implementación de `dhcp_start()` y la posible necesidad de llamar a funciones adicionales como `dhcp_fine_tmr()` y `dhcp_coarse_tmr()` en intervalos predeterminados.

- **Optimización de la Configuración de Red:**  
  Si se trabaja en redes con configuraciones específicas (por ejemplo, punto a punto), ajustar la inicialización de la interfaz (incluyendo la máscara de red y puerta de enlace) para asegurar compatibilidad.

## Referencias y Notas Adicionales

- **Conversación con Mauro y Orlando:**  
  - **Mauro** sugiere que el fallo puede estar en la función `dhcp_start()` o en una línea de código faltante.  
  - **Orlando** comprobó el fallo en los datos de DHCP enviándolos al puerto UART, lo que confirma que la asignación vía DHCP no se completa.

- **Código Fuente:**  
  - Las secciones comentadas en el código resaltan los puntos críticos en el proceso DHCP y establecen dónde se podría intervenir para depuración.
  - Se recomienda revisar la documentación de lwIP y la configuración del entorno Zynq para mayor información.
