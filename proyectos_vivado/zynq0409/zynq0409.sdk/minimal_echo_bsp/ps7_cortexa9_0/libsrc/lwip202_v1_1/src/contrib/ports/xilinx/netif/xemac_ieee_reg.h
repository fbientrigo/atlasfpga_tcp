/******************************************************************************
*
* Copyright (C) 2018 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#ifndef __XEMAC_IEEE_REGS_H_
#define __XEMAC_IEEE_REGS_H_

/* Advertisement control register. */
#define ADVERTISE_10HALF            0x0020  /* Try for 10mbps half-duplex  */
#define ADVERTISE_1000XFULL         0x0020  /* Try for 1000BASE-X full-duplex */
#define ADVERTISE_10FULL            0x0040  /* Try for 10mbps full-duplex  */
#define ADVERTISE_1000XHALF         0x0040  /* Try for 1000BASE-X half-duplex */
#define ADVERTISE_100HALF           0x0080  /* Try for 100mbps half-duplex */
#define ADVERTISE_1000XPAUSE        0x0080  /* Try for 1000BASE-X pause    */
#define ADVERTISE_100FULL           0x0100  /* Try for 100mbps full-duplex */
#define ADVERTISE_1000XPSE_ASYM     0x0100  /* Try for 1000BASE-X asym pause */
#define ADVERTISE_100BASE4          0x0200  /* Try for 100mbps 4k packets  */


#define ADVERTISE_100_AND_10        (ADVERTISE_10FULL | ADVERTISE_100FULL | \
					ADVERTISE_10HALF | ADVERTISE_100HALF)
#define ADVERTISE_100               (ADVERTISE_100FULL | ADVERTISE_100HALF)
#define ADVERTISE_10                (ADVERTISE_10FULL | ADVERTISE_10HALF)

#define ADVERTISE_1000              0x0300


#define IEEE_CONTROL_REG_OFFSET                    0
#define IEEE_STATUS_REG_OFFSET                     1
#define IEEE_AUTONEGO_ADVERTISE_REG                4
#define IEEE_PARTNER_ABILITIES_1_REG_OFFSET        5
#define IEEE_PARTNER_ABILITIES_2_REG_OFFSET        8
#define IEEE_PARTNER_ABILITIES_3_REG_OFFSET        10
#define IEEE_1000_ADVERTISE_REG_OFFSET             9
#define IEEE_MMD_ACCESS_CONTROL_REG                13
#define IEEE_MMD_ACCESS_ADDRESS_DATA_REG           14
#define IEEE_COPPER_SPECIFIC_CONTROL_REG           16
#define IEEE_SPECIFIC_STATUS_REG                   17
#define IEEE_COPPER_SPECIFIC_STATUS_REG_2          19
#define IEEE_EXT_PHY_SPECIFIC_CONTROL_REG          20
#define IEEE_CONTROL_REG_MAC                       21
#define IEEE_PAGE_ADDRESS_REGISTER                 22

#define IEEE_CTRL_1GBPS_LINKSPEED_MASK             0x2040
#define IEEE_CTRL_LINKSPEED_MASK                   0x0040
#define IEEE_CTRL_LINKSPEED_1000M                  0x0040
#define IEEE_CTRL_LINKSPEED_100M                   0x2000
#define IEEE_CTRL_LINKSPEED_10M                    0x0000
#define IEEE_CTRL_FULL_DUPLEX                      0x100
#define IEEE_CTRL_RESET_MASK                       0x8000
#define IEEE_CTRL_AUTONEGOTIATE_ENABLE             0x1000
#define IEEE_STAT_AUTONEGOTIATE_CAPABLE            0x0008
#define IEEE_STAT_AUTONEGOTIATE_COMPLETE           0x0020
#define IEEE_STAT_AUTONEGOTIATE_RESTART            0x0200
#define IEEE_STAT_LINK_STATUS                      0x0004
#define IEEE_STAT_1GBPS_EXTENSIONS                 0x0100
#define IEEE_AN1_ABILITY_MASK                      0x1FE0
#define IEEE_AN3_ABILITY_MASK_1GBPS                0x0C00
#define IEEE_AN1_ABILITY_MASK_100MBPS              0x0380
#define IEEE_AN1_ABILITY_MASK_10MBPS               0x0060
#define IEEE_RGMII_TXRX_CLOCK_DELAYED_MASK         0x0030

#define IEEE_SPEED_MASK                            0xC000
#define IEEE_SPEED_1000                            0x8000
#define IEEE_SPEED_100                             0x4000

#define IEEE_ASYMMETRIC_PAUSE_MASK                 0x0800
#define IEEE_PAUSE_MASK                            0x0400
#define IEEE_AUTONEG_ERROR_MASK                    0x8000

#define IEEE_MMD_ACCESS_CTRL_DEVAD_MASK            0x1F
#define IEEE_MMD_ACCESS_CTRL_PIDEVAD_MASK          0x801F
#define IEEE_MMD_ACCESS_CTRL_NOPIDEVAD_MASK        0x401F

#endif /* __XEMAC_IEEE_REGS_H_ */
