/*
 * tcp_com.h
 *
 *  Created on: 01-06-2021
 *      Author: DAQatlas
 */

#ifndef SRC_TCP_COM_H_
#define SRC_TCP_COM_H_

#include "lwip/tcp.h"
#include "xil_cache.h"
#include <string.h>
#include "netif/xadapter.h"

#include "platform.h"
#include "platform_config.h"
#include "xil_printf.h"
#if LWIP_IPV6==1
#include "lwip/ip.h"
#else
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif
#endif

#define Char_per_line 46
#define PBUF_LENGTH 50000
#define buffer_length 49900

#define N_lines buffer_length/Char_per_line
unsigned char buffer[buffer_length];
unsigned port;
short flag_accept_conn;
int flag_ready2sent;
int flag_senddata ;
int flag_tcp_done;
static struct tcp_pcb *pcb;

struct pbuf* p;
//Values for hash table of receibing message
int *datos_PL;



int start_application();

int transfer_data(unsigned char*);
err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err);
err_t recv_callback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err);
tcp_sent_fn sent_callback(void *arg, struct tcp_pcb *tpcb, u16_t len);
void tcp_server_err(void *arg, err_t err);
void tcp_server_close(struct tcp_pcb *pcb);
void packer();
#endif /* SRC_TCP_COM_H_ */
