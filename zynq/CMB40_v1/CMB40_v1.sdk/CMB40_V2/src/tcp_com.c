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


void packer() //
{
	xil_printf("\nstart_packer\n");
	int i =0 ;
	char line[Char_per_line*N_lines]={'\0'};
	char line2[Char_per_line]={'\0'};//mandar de a 100 lineas
	//line2=(char*)malloc(sizeof(char)*321);
	//int Lines_saves = N_lines/N_lines; //Entero se redondea...0.5 por que son 2 bytes por char
	printf("\nLineas: %d\n", N_lines);

	for(i=0;i<N_lines;i++)
	{
	snprintf(line2,Char_per_line,"%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\n",datos_PL[9*i],datos_PL[9*i+1],datos_PL[9*i+2],datos_PL[9*i+3]
		,datos_PL[9*i+4],datos_PL[9*i+5],datos_PL[9*i+6],datos_PL[9*i+7],datos_PL[9*i+8]);
	//xil_printf("Linea %d: %s\n",i,line2);
	strcat(line,line2);
	//xil_printf("Linea %d: %s\n",i,line);
	}

	strncpy(buffer,line,N_lines*Char_per_line);
	//xil_printf("\nLines\n%s\n\nBuffer:\n%s\n\n",line,buffer);
	//printf("%s\n",line);
	//strcpy(buffer,*line);
	//free(line);
	//free(line2);
	xil_printf("\nend_packer\n");
}



/*
 *
 */


unsigned long hash(unsigned char *str)
{
    unsigned long hash = 5381;
    int c;

    while (c = *str++)
        hash = ((hash << 5) + hash) + c; /* hash * 33 + c */

    return hash;
}




/*
 * Callback cuando se recibe un mensaje correctamente, actualmente retorna informacion de buffer
 */




void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}

int transfer_data(unsigned char *buffer)
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
		//xil_printf("Buffer:\n%s\n",buffer);
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

void tcp_server_err(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(err);
	tcp_server_close(pcb);
	pcb = NULL;
	//tcp_conn_report(diff_ms, TCP_ABORTED_REMOTE);
	xil_printf("TCP connection aborted\n\r");
	//start_application();
}

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
int start_application()
{

	err_t err;
	unsigned port = 6543;
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
	xil_printf("TCP echo server started @ port %d\n\r", port);
	flag_tcp_done=1;



	return 0;
}

/*
 * callback cuando se envia un mensaje correctamente
 *
 */
tcp_sent_fn sent_callback(void *arg, struct tcp_pcb *tpcb, u16_t len)
{
	flag_ready2sent = 1;
	//flag_sentdata = 1;
	//pcb = tpcb;
	return ERR_OK;

}

