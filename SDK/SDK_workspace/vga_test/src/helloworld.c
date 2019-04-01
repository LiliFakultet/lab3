/*
 * Copyright (c) 2009-2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xio.h"

void print(char *str);

int main()
{
    init_platform();

	XIo_Out32(XPAR_VGA_PERIPH_0_BASEADDR, 0x0);
	XIo_Out32(XPAR_VGA_PERIPH_0_BASEADDR + 0x01, 0x3);
	XIo_Out32(XPAR_VGA_PERIPH_0_BASEADDR + 0x02, 0x1);
	XIo_Out32(XPAR_VGA_PERIPH_0_BASEADDR + 0x03, 2);
	XIo_Out32(XPAR_VGA_PERIPH_0_BASEADDR + 0x04, 0xFF0000);
	XIo_Out32(XPAR_VGA_PERIPH_0_BASEADDR + 0x05, 0x333333);
	XIo_Out32(XPAR_VGA_PERIPH_0_BASEADDR + 0x06, 0x0000FF);

    return 0;
}
