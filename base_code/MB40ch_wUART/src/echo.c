#include <stdio.h>
#include <string.h>

#include "lwip/err.h"
#include "lwip/tcp.h"
#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif


/**
 * print_app_header
 *
 * Imprime en la salida un encabezado informativo para el servidor TCP, diferenciando
 * entre IPv4 e IPv6 (según configuración de lwIP) y mostrando el puerto en el que se
 * recibirán paquetes (6543). Es la primera llamada que se realiza para indicar el inicio de
 * la aplicación.
 *
 * No recibe parámetros.
 *
 * Ejemplo:
 *     print_app_header();
 *
 * Nota:
 *     La función utiliza xil_printf para la salida, por lo tanto, se adapta a entornos ARM.
 */
void print_app_header()
{
#if (LWIP_IPV6==0)
	xil_printf("\n\r\n\r-----lwIP TCP server for DAQ Motherboard ------\n\r");
#else
	xil_printf("\n\r\n\r-----lwIPv6 TCP server ------\n\r");
#endif
	xil_printf("TCP packets sent to port 6543 \n\r");
}
