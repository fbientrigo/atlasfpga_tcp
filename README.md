# DHCP Debugging and Implementation Guide for MB40CH\_wUART

This document summarizes findings, observations, and next steps regarding the DHCP issue in the Zynq-based application (MB40CH\_wUART project). The problem was discussed with electronic engineer **Mauro** and previously with lead researcher **Orlando**.

## Table of Contents

* [Introduction](#introduction)
* [Background](#background)
* [Problem Description](#problem-description)
* [Source Code Evidence](#source-code-evidence)

  * [main.c](#mainc)
  * [tcp\_com.c](#tcp_comc)
* [Analysis and Observations](#analysis-and-observations)
* [Tests and Next Steps](#tests-and-next-steps)
* [Future Improvements](#future-improvements)
* [References and Additional Notes](#references-and-additional-notes)

## Introduction

In the system implemented with the FPGA and SDK on the **MB40CH\_wUART** board, it has been detected that the IP address acquisition via DHCP **does not work properly**. Although the connection is established (SSH access and command sending via *netcat* is possible), the system **does not obtain the IP assigned by a DHCP server**, and therefore always falls back to a default IP configuration.

## Background

* **Active connection:** The network connects correctly (e.g., SSH and TCP/IP work).
* **Specific problem:** The `ping` command does not respond because it is disabled, although command sending via TCP/IP works through tools like *netcat*.
* **DHCP configuration:** The function `dhcp_start()` is called and waits for an IP. When the timeout counter (`dhcp_timoutcntr`) expires, a default IP (192.168.1.10) is assigned.

> **Note:** According to Mauro, the issue might lie in the invocation or operation of `dhcp_start()` – possibly missing a call, parameter, or the library not including the required component to properly start DHCP.

## Problem Description

The DHCP process should:

* Start and communicate with the DHCP server to obtain IP address, subnet mask, and gateway.
* Properly configure the network interface (`echo_netif`).

Currently, the following is observed:

* **Connection established:** Connection via SSH and TCP/IP is received.
* **DHCP failure:** During the process:

  * `dhcp_start(echo_netif)` is invoked, and the timeout counter `dhcp_timoutcntr` is reset to 24.
  * It enters a `while` loop waiting for `echo_netif->ip_addr.addr` to be set.
  * When the counter expires, the system assigns the default IP and does not obtain the real network configuration.

Additionally, gateway handling was discussed; in point-to-point connections (configured by Mauro), IPs need *inverted* values or special setups for communication to work properly with routers or DHCP servers.

## Source Code Evidence

### main.c

In the file `main.c` the network initialization and DHCP configuration is found:

```c
// Network interface initialization
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

// Start DHCP client
dhcp_start(echo_netif);
dhcp_timoutcntr = 24;

while(((echo_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
    xemacif_input(echo_netif);

// Default config if timeout expires
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

> **Observation:** The function `dhcp_start()` or a prior command in DHCP client initialization (especially in Zynq) might be incomplete or not working as expected, preventing the DHCP server from delivering the network configuration.

### tcp\_com.c

In `tcp_com.c`, TCP communication is handled correctly, as commands are sent and received. This confirms that the problem is limited to the DHCP IP assignment part.

Relevant functions and aspects:

* **Data sending functions:** `transfer_data()`, `transfer_data_bkup()`
* **Receive callback:** `recv_callback()` processes commands, including those related to system status queries.
* **TCP server start:** in `start_application()`, where PCB is configured, listening enabled on the defined port, and callbacks assigned.

This confirms that data transmission and application-level TCP/IP communication work well, isolating the issue to DHCP processing.

## Analysis and Observations

* **Connection established, DHCP failed:** The network connection is created properly, but DHCP fails to get an assigned IP.

* **Timeout and default config:** When `dhcp_timoutcntr` expires (24 retry cycles), the interface uses a default IP configuration.

* **Possible causes:**

  * The command `dhcp_start(echo_netif)` may not be executing correctly or missing another necessary function call in the init sequence.
  * There may be an issue with the DHCP library in the Zynq environment.
  * Network parameter configuration (mask, gateway) or address format may be incompatible, especially considering Mauro’s point-to-point IP inversion for connectivity.
  * Without a network cable, the system fails (known future issue).

* **Other observed data:**

  * Using a router with the default IP config allows data transmission, suggesting the problem lies in communicating with an external DHCP server.
  * **Orlando** verified DHCP data was not functioning by redirecting information to UART port for checking.

## Tests and Next Steps

1. **Validate DHCP Sequence:**

   * Review lwIP library documentation and examples to confirm that `dhcp_start()` initialization and calls are correct.
   * Test execution of related functions (`dhcp_fine_tmr()`, `dhcp_coarse_tmr()`) at proper intervals if required by the library version.

2. **Verification with Real Hardware:**

   * Run tests on the board in a controlled environment with cable connected to a real DHCP server.
   * Execute small test scripts triggering DHCP functions in library subsets to isolate behavior.

3. **Review Network Configuration (`echo_netif`):**

   * Verify that `echo_netif` structure is properly initialized with IP, mask, and gateway settings.
   * Confirm gateway is configured according to point-to-point connection (if not using a traditional router).

4. **Implement Error Handling:**

   * Develop routines so that absence of cable or prolonged DHCP failure does not cause application to “die” but reports failure and allows recovery or retry without system restart.

5. **Review in Zynq Environment:**

   * Investigate if additional configurations or initializations are needed for DHCP client to function properly in Zynq.

## Future Improvements

* **Cable Disconnection Tolerance:**
  Currently, lack of network cable causes program to hang or crash. Implement a timeout or standby mode allowing the system to continue running without reboot.

* **In-depth DHCP Library Debugging:**
  Verify `dhcp_start()` implementation and the potential need to call additional functions like `dhcp_fine_tmr()` and `dhcp_coarse_tmr()` at specified intervals.

* **Network Configuration Optimization:**
  For networks with special setups (e.g., point-to-point), adjust interface initialization (including netmask and gateway) to ensure compatibility.

## References and Additional Notes

* **Discussions with Mauro and Orlando:**

  * **Mauro** suggests the fault may be in `dhcp_start()` or a missing code line.
  * **Orlando** verified the DHCP data failure by sending output to UART, confirming DHCP assignment is incomplete.

* **Source Code:**

  * Commented sections highlight critical points in the DHCP process and possible intervention areas for debugging.
  * Reviewing lwIP documentation and Zynq environment setup is recommended for further insights.
