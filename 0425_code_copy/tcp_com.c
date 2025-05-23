/*
 * tcp_com.c
 *
 *  Created on: 01-06-2021
 *      Author: DAQatlas
 */
 #include "tcp_com.h"
 //#include "main.h"
 
 #define dcorr 256426847
 #define kaliv 264652860
 #define recok 273088441
 
 #define DEBUG
 
 /**
  * rand_data
  *
  * Genera datos aleatorios para simular la adquisición de datos de hardware.
  * Se reserva memoria para un arreglo de 1017*9 enteros y se asignan valores
  * aleatorios en el rango [1950, 2050]. Esta función se utiliza para poblar la variable
  * global "datos_PL", la cual se emplea posteriormente en el empaquetado de datos.
  *
  * No recibe parámetros.
  *
  * Ejemplo:
  *     // Inicializa la tabla de datos aleatorios
  *     rand_data();
  */
 void rand_data()
 {
     xil_printf("\nstart_rand_data\n");
     int i;
     datos_PL = (int*)malloc(sizeof(int)*1017);
 
     for(i = 0;i<1017*9;i++)//9*113 datos
     {
         datos_PL[i] = rand() %100 +1950;//Numeros entre 1950 y 2050 ""aleatorios""
 
     }
 
     xil_printf("\nend_rand_data \n");
 
 }
 
 
 /**
  * Referencias rapidas, esto se encuentra definido en el .h
  * 	#define Char_per_line 46
     #define PBUF_LENGTH 50000
     #define buffer_length 49900
     #define PORT 6543
  *
  * borrar despues de usar, esto solo agrega clutter
  *
  *
  */
 
 
 /**
  * packer
  *
  * Empaqueta los datos almacenados en la matriz global "datos_PL" en un único buffer
  * formateado. La función recorre "datos_PL" en bloques de 9 valores (representando los datos
  * de cada línea) y crea una cadena con formato utilizando separadores de tabulación y un
  * salto de línea al final de cada fila. Este buffer (almacenado en la variable global "buffer")
  * es el que se utilizará para enviar los datos mediante TCP.
  *
  * No recibe parámetros.
  *
  * Ejemplo:
  *     // Empaqueta los datos en el buffer antes de enviarlos por TCP
  *     packer();
  *
  * Diagrama de flujo (simplificado):
  *
  *     datos_PL --> Iteración por bloques de 9 elementos
  *                  > Formatea la línea y concatena en "buffer"
  */
 void packer() //
 {
     xil_printf("\nstart_packer\n");
     int i =0 ;
     char line[Char_per_line*N_lines]={'\0'}; // necesario para definir el final de la linea con strlen()
     char line2[Char_per_line]={'\0'};  //mandar de a 100 lineas
     //line2=(char*)malloc(sizeof(char)*321); // ft: existe un malloc comentado, parece haber sido reemplazado por la version ed arriba
     //int Lines_saves = N_lines/N_lines; //Entero se redondea...0.5 por que son 2 bytes por char
     printf("\nLineas: %d\n", N_lines);
 
     for(i=0;i<N_lines;i++)
     {
         snprintf(line2,Char_per_line,"%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\n",datos_PL[9*i],datos_PL[9*i+1],datos_PL[9*i+2],datos_PL[9*i+3]
            ,datos_PL[9*i+4],datos_PL[9*i+5],datos_PL[9*i+6],datos_PL[9*i+7],datos_PL[9*i+8]);
         //xil_printf("Linea %d: %s\n",i,line2);
 
         #ifdef DEBUG
             xil_printf("[DEBUG packer] Line %d content: %s", i, line2);
         #endif
         strcat(line,line2);
         #ifdef DEBUG
             xil_printf("[DEBUG packer] Accumulated length: %u\n", (unsigned)strlen(line));
         #endif
         //xil_printf("Linea %d: %s\n",i,line);
     }
 
 
     strncpy(buffer,line,N_lines*Char_per_line);
 
     #ifdef DEBUG
         xil_printf("[DEBUG packer] Final buffer (%u bytes):\n%s\n",
                    (unsigned)strlen(buffer), buffer);
     #endif
     //xil_printf("\nLines\n%s\n\nBuffer:\n%s\n\n",line,buffer);
     //printf("%s\n",line);
     //strcpy(buffer,*line);
     //free(line);
     //free(line2);
     xil_printf("\nend_packer\n");
 }
 
 
 
 /**
  * hash
  *
  * Calcula un valor hash para una cadena de caracteres usando el algoritmo djb2.
  *
  * Parameters
  * ----------
  * str : unsigned char*
  *     La cadena para la que se calculará el hash.
  *
  * Returns
  * -------
  * unsigned long
  *     El valor hash calculado.
  *
  * Ejemplo:
  *     unsigned long valor = hash((unsigned char*)"Ejemplo");
  */
 unsigned long hash(unsigned char *str)
 {
     unsigned long hash = 5381;
     int c;
 
     while (c = *str++)
         hash = ((hash << 5) + hash) + c; /* hash * 33 + c */
 
     return hash;
 }
 
 
 // ft: comentario parece fuera de lugar:
 /*
  * Callback cuando se recibe un mensaje correctamente, actualmente retorna informacion de buffer
  */
 
 
 /**
  * print_ip
  *
  * Imprime una dirección IP en la salida utilizando xil_printf, precedida de un mensaje.
  *
  * Parameters
  * ----------
  * msg : char*
  *     Mensaje descriptivo a imprimir.
  * ip : ip_addr_t*
  *     Puntero a la estructura que contiene la dirección IP.
  *
  * Ejemplo:
  *     print_ip("Dirección IP de la placa: ", &ipaddr);
  */
 void print_ip(char *msg, ip_addr_t *ip)
 {
     print(msg);
     xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
             ip4_addr3(ip), ip4_addr4(ip));
 }
 
 
 /**
  * print_ip_settings
  *
  * Imprime la configuración completa de la red: IP, máscara de subred y gateway.
  *
  * Parameters
  * ----------
  * ip : ip_addr_t*
  *     Dirección IP de la placa.
  * mask : ip_addr_t*
  *     Máscara de subred.
  * gw : ip_addr_t*
  *     Gateway.
  *
  * Ejemplo:
  *     print_ip_settings(&ipaddr, &netmask, &gateway);
  */
 void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
 {
 
     print_ip("Board IP: ", ip);
     print_ip("Netmask : ", mask);
     print_ip("Gateway : ", gw);
 }
 
 
 /**
  * transfer_data_bkup
  *
  * Versión alternativa para transferir datos vía TCP. Crea una estructura pbuf para
  * encapsular el contenido del buffer y lo envía de una sola vez.
  *
  * NOTA: Esta versión se mantiene como respaldo y es menos elaborada que transfer_data.
  *
  * Parameters
  * ----------
  * buffer : unsigned char*
  *     Buffer de datos a enviar.
  *
  * Returns
  * -------
  * int
  *     ERR_OK (generalmente 0) si la operación es exitosa.
  *
  * Ejemplo:
  *     int ret = transfer_data_bkup(buffer);
  */
 int transfer_data_bkup(unsigned char *buffer)
 {
         err_t err;
         struct pbuf * p;
         p = pbuf_alloc(PBUF_TRANSPORT,PBUF_LENGTH,PBUF_RAM);
 
             //tcp_arg(tpcb, NULL);
             if (!p) {
                     tcp_close(pcb);
                     tcp_recv(pcb, NULL);
                     return ERR_OK;
                 }
         xil_printf("TCP Buffer to be sent:<----\n%s\n--->\n",buffer);
         p->payload = buffer;
         p->len = (uint16_t)strlen(buffer);
         xil_printf("tcp_sndbuf:%d;p->len=%d\n", tcp_sndbuf(pcb),p->len);
         if (tcp_sndbuf(pcb) > p->len)
             {
                 err = tcp_write(pcb,p->payload,p->len, TCP_WRITE_FLAG_COPY);
 
                 if(err != ERR_OK)
                     xil_printf("error write %d\n", err);
             }
             pbuf_free(p);
         usleep(200);
         return 0;
 }
 
 
 
 
 /**
  * transfer_data
  *
  * Envía el contenido del buffer global a través de la conexión TCP, gestionando el envío en
  * múltiples trozos si el buffer de envío (tcp_sndbuf) es insuficiente. La función divide el
  * buffer en fragmentos y envía cada uno hasta que se transmitan todos los datos. Al finalizar,
  * envía una secuencia de fin ("!#\n") para indicar la conclusión de la transmisión.
  *
  * Parameters
  * ----------
  * buffer : unsigned char*
  *     Buffer de datos a enviar.
  *
  * Returns
  * -------
  * int
  *     0 si la transmisión se realizó con éxito.
  *
  * Ejemplo:
  *     // Envío de datos empaquetados previamente
  *     transfer_data(buffer);
  *
  * Detalles:
  *  - Mientras hayan datos pendientes, se consulta el espacio disponible en tcp_sndbuf.
  *  - Se utiliza tcp_write para enviar el fragmento actual y tcp_output para forzar el envío inmediato.
  *  - Si tcp_sndbuf está lleno, se espera (con usleep) antes de reintentar.
  */
 int transfer_data(unsigned char *buffer)
 {
 
     u16_t total = (uint16_t)strlen(buffer); // ft: valor maximo de 65535, cual es el tamaño total de un buffer?
     u16_t remaining = total; 	// ft: bytes por enviar
     u8_t *data_ptr = buffer;	// ft: un puntero hacia el inicio de buffer; avanzara tras cada fragmento enviado
         // u8_t viene a ser un alias de unsigned char asi que no introduce alisains
 
     xil_printf("TCP Buffer to be sent:<----\n%s\n--->\n",buffer);
     xil_printf("tcp_sndbuf size/ buffer size --- %d/%d\n", tcp_sndbuf(pcb), remaining);
         // tcp_snedbuff() accede al control de congestion de window y send queue de lwip devolviendo cuantos bytes se pueden encolar
 
     while (remaining > 0) {
         /* 	pcb: protocol control block, es un struc tcp_pcb *pcb;
          * 		contiene: dirección ip y puertos remoto y local
          * 		estado de la maquina tcp (syn_sent, established, fin_wait, etc..)
          * 		callbacks_registrados: tcp_recv, tcp_sent, tcp_err
          *
          * */
 
         u16_t available_space = tcp_sndbuf(pcb);	// !!!!! <---- una logica que detiene el envio en caso de congestionar
         u16_t to_send = LWIP_MIN(remaining, available_space); // se define cuantos bytes enviar, elige el minimo
             /*	osea se detendra en 2 casos:
              * 1) 	que completemos todo el remainig
              * 2)	que utilicemos todo el espacio disponible en el tcp_sndbuff
              * */
 
         #ifdef DEBUG
             xil_printf("[DEBUG transfer_data] remaining=%u, avail=%u, to_send=%u\n",
                        (unsigned)remaining, (unsigned)avail, (unsigned)to_send);
         #endif
 
         err_t err = tcp_write(pcb, data_ptr, to_send, TCP_WRITE_FLAG_COPY);
         if (err == ERR_OK && available_space>0) {
             // force send as soon as possible
             tcp_output(pcb);      //  empaqueta la información en segmentos TCP y pasarlos al driver ethernet
             // la logica es interna y deberia manejarse el empaquetado
 
             // ya que enviamos hemos de actualizar; pero hay forma de saber si en verdad enviamos?
             // TODO: considerar la posibilidad de mezclar logica de los callbacks de acknowledgments
             remaining -= to_send; // la idea de remaininig que reduce de esa manera
             data_ptr += to_send;	// recorre el pointer
             #ifdef DEBUG
                 xil_printf("[DEBUG transfer_data] Sent %u bytes, now remaining=%u\n",
                            (unsigned)to_send, (unsigned)remaining);
             #endif
 
 
         } else if (err == ERR_MEM) { // esta condición ocurre a la vez que available_space < 0?
             // if the snd buff is full, wait to send
 
                 #ifdef DEBUG
                 xil_printf("[DEBUG transfer_data] ERR_MEM, sndbuf full, available_space is %d, sleeping 10ms\n", available_space);
                 #endif
 
 
             usleep(10000); // 10ms, esto permite esperar para recibir ACKs y liberar pbufs
                             // existe la posibilidad de bloquear timers de lwIP? al ser baremetal
         } else if (err != ERR_OK){
             #ifdef DEBUG
                 xil_printf("Error sending,error code: %d\n",err);
             #endif
             break;
         }
         usleep(100); // permite la ejecución de otras tareas
 
         // asumiendo un error de avaiable_space lleno, el codigo deberia volver a ejecutarse al tener un while
     }
 
 
     // --- block de remaining <= 0 , solo se entra aqui despues del while
     usleep(100);
 
     /* memset(puntero al inicio ed la región a limpiar, valor rellenar cada bytes, numero de bytes a llenar)
      * 		entonces esta limpiando el data_ptr a 0
      * snprintf
      *
      * */
 
 
     size_t tail_len = strlen((const char*)data_ptr); // aqui hago explicito ela conversion de unsigned char a char
     memset(data_ptr, 0, tail_len); // entonces estamos limpiando o llenando el data pointer con 0 una vez ya no hay remaining
     snprintf((char*)data_ptr, 40, "!#\n"); //end character sequence
     remaining = (u16_t)strlen((const char*)data_ptr);
     #ifdef DEBUG
         xil_printf("[DEBUG transfer_data] Appending terminator, length=%u\n",
                    (unsigned)remaining);
     #endif
     //sending end characters sequence
     while (remaining > 0) {
             u16_t available_space = tcp_sndbuf(pcb);
             u16_t to_send = LWIP_MIN(remaining, available_space);
 
             err_t err = tcp_write(pcb, data_ptr, to_send, TCP_WRITE_FLAG_COPY);
             if (err == ERR_OK) {
                 tcp_output(pcb);      // force send as soon as possible
                 remaining -= to_send;
                 data_ptr += to_send;
 
                 #ifdef DEBUG
                     xil_printf("[DEBUG transfer_data] Sent terminator %u bytes, rem=%u\n",
                                (unsigned)to_send, (unsigned)remaining);
                 #endif
             } else if (err == ERR_MEM) {
                 #ifdef DEBUG
                 xil_printf("[DEBUG transfer_data] ERR_MEM on terminator, sleeping 10ms...\n");
                 #endif
                 // if the snd buff is full, wait to send
                 usleep(10000); // son 10ms
             } else {
                 xil_printf("Error sending,error code: %d\n",err);
                 break;
             }
     }
     usleep(100);
 }
 
 
 
 /**
  * tcp_server_close
  *
  * Cierra la conexión TCP asociada a "pcb" de forma ordenada. Se deshabilitan callbacks
  * de recepción y errores antes de intentar cerrar la conexión. Si el cierre falla, se aborta
  * la conexión para liberar recursos.
  *
  * Parameters
  * ----------
  * pcb : struct tcp_pcb*
  *     Puntero a la estructura PCB de la conexión TCP.
  *
  * Ejemplo:
  *     tcp_server_close(pcb);
  */
 void tcp_server_close(struct tcp_pcb *pcb)
 {
     err_t err;
 
     if (pcb != NULL) {
         tcp_recv(pcb, NULL);
         tcp_err(pcb, NULL);
         err = tcp_close(pcb);
         if (err != ERR_OK) {
             /* Free memory with abort */
             tcp_abort(pcb);
         }
     }
 }
 
 
 
 /**
  * tcp_server_err
  *
  * Función callback que se invoca cuando ocurre un error en la conexión TCP. Se utiliza
  * para limpiar la conexión llamando a tcp_server_close y notifica mediante mensajes de log.
  *
  * Parameters
  * ----------
  * arg : void*
  *     Argumento de callback (no utilizado en este caso).
  * err : err_t
  *     Código de error que ha provocado el callback.
  *
  * Ejemplo:
  *     // Esta función se registra como callback de error en tcp_err:
  *     tcp_err(pcb, tcp_server_err);
  */
 void tcp_server_err(void *arg, err_t err)
 {
     LWIP_UNUSED_ARG(err);
     tcp_server_close(pcb);
     pcb = NULL;
     //tcp_conn_report(diff_ms, TCP_ABORTED_REMOTE);
     xil_printf("TCP connection aborted\n\r");
     //start_application();
 }
 
 
 /**
  * accept_callback
  *
  * Callback que se ejecuta cuando el servidor TCP acepta una nueva conexión. Esta función
  * asigna la nueva conexión al PCB global, configura los callbacks de recepción, envío y error,
  * e incrementa un contador para futuras conexiones. Además, habilita los flags pertinentes (por
  * ejemplo, flag_ready2sent) para indicar que la conexión está establecida.
  *
  * Parameters
  * ----------
  * arg : void*
  *     Argumento de callback (en este caso un entero que indica el ID de la conexión).
  * newpcb : struct tcp_pcb*
  *     PCB de la nueva conexión establecida.
  * err : err_t
  *     Código de error (se espera ERR_OK en una conexión exitosa).
  *
  * Returns
  * -------
  * err_t
  *     ERR_OK si la conexión se aceptó correctamente.
  *
  * Ejemplo:
  *     // Se configura el callback de aceptación en start_application:
  *     tcp_accept(pcb, accept_callback);
  *
  * Diagrama de relaciones:
  *
  *     accept_callback --> Asigna PCB global --> (pcb)
  *                      --> Configura: recv_callback, sent_callback, tcp_server_err
  *                      --> Habilita flag_ready2sent
  */
 err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
 {
     static int connection = 1;
     xil_printf("*Conexion aceptada\n");
     /* set the receive callback for this connection */
     ////
     pcb = newpcb;
     /////
     /* just use an integer number indicating the connection id as the
        callback argument */
     tcp_arg(pcb, (void*)(UINTPTR)connection);
 
     //transfer_data(newpcb);
 
     /* increment for subsequent accepted connections */
     /*
     tcp_recv(newpcb, recv_callback);
     tcp_sent(newpcb, (tcp_sent_fn)sent_callback);
     tcp_err(newpcb, tcp_server_err);
     */
     tcp_recv(pcb, recv_callback);
     tcp_sent(pcb, (tcp_sent_fn)sent_callback);
     tcp_err(pcb, tcp_server_err);
     flag_accept_conn = 1;
     connection++;
     flag_ready2sent = 1;
     return ERR_OK;
 }
 
 /**
  * start_application
  *
  * Inicializa el servidor TCP creando un nuevo PCB, vinculándolo al puerto definido (6543), y
  * pasando al modo listen. Además, asigna el callback de aceptación (accept_callback) para gestionar
  * conexiones entrantes. Actualiza flags globales para el control de la conexión.
  *
  * Returns
  * -------
  * int
  *     0 si el servidor se inició correctamente, o un valor negativo en caso de error.
  *
  * Ejemplo:
  *     if (start_application() != 0) {
  *         xil_printf("Error iniciando la aplicación TCP.\n");
  *     }
  *
  * Flujo:
  *     tcp_new() -> tcp_bind() -> tcp_listen() -> tcp_accept() --> Conexión en espera
  */
 int start_application()
 {
 
     err_t err;
     unsigned port = PORT;
     flag_ready2sent =0;
     flag_senddata = 0;
     flag_accept_conn = 0;
     /* create new TCP PCB structure */
     //pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
     pcb = tcp_new();
     if (!pcb) {
         xil_printf("Error creating PCB. Out of Memory\n\r");
         return -1;
     }
     tcp_nagle_disable(pcb);
     //For keep alive
     //pcb->keep_cnt = 1;
     //pcb->keep_intvl = 4;
     //pcb->keep_idle = 1;
     //
     /* bind to specified @port */
     err = tcp_bind(pcb, IP_ANY_TYPE, port);
     if (err != ERR_OK) {
         xil_printf("Unable to bind to port %d: err = %d\n\r", port, err);
         return -2;
     }
 
     /* we do not need any arguments to callback functions */
     tcp_arg(pcb, NULL);
     /* listen for connections */
     pcb = tcp_listen(pcb);
     if (!pcb) {
         xil_printf("Out of memory while tcp_listen\n\r");
         return -3;
     }
 
     /* specify callback to use for incoming connections */
 
 
     tcp_accept(pcb, accept_callback);
     xil_printf("TCP server started @ port %d\n\r", port);
     flag_tcp_done=1;
 
 
 
     return 0;
 }
 
 /**
  * sent_callback
  *
  * Callback que se invoca cuando se confirma que un paquete de datos fue enviado exitosamente.
  * Esta función restablece el flag flag_ready2sent para permitir el envío de nuevos datos.
  *
  * Parameters
  * ----------
  * arg : void*
  *     Argumento de callback (no utilizado en esta implementación).
  * tpcb : struct tcp_pcb*
  *     PCB de la conexión TCP.
  * len : u16_t
  *     Longitud del paquete enviado.
  *
  * Returns
  * -------
  * tcp_sent_fn (err_t)
  *     ERR_OK, indicando que la operación se realizó correctamente.
  *
  * Ejemplo:
  *     // Se asigna en accept_callback:
  *     tcp_sent(pcb, sent_callback);
  */
 tcp_sent_fn sent_callback(void *arg, struct tcp_pcb *tpcb, u16_t len)
 {
     // Marcamos que podemos enviar más datos
     flag_ready2sent = 1;
 
     //flag_sentdata = 1;
     //pcb = tpcb;
 
     #ifdef DEBUG
     xil_printf("[DEBUG sent_callback] ACK received for %u bytes\n", (unsigned)len);
     xil_printf("[DEBUG sent_callback] PCB at %p:\n", (void*)tpcb);
     xil_printf("  state=%d, snd_queuelen=%d, rcv_queuelen=%d\n",
                tpcb->state, tpcb->snd_queuelen, tpcb->snd_queuelen);
     #endif
 
     return ERR_OK;
 
 }
 
 