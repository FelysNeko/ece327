/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
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
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"

// Define the number of tests you want to run on hardware
#define NUM_TESTS 20

int main()
{
    // Initialize the platform and print "Application started!" message
    init_platform();
    xil_printf("Application started!\r\n");

    // Initialize and set the directions of the 4 GPIOs in the ALU system.
    // All GPIOs we use have a single channel, so we always set the channel argument to 1.
    // Direction 0x00 means output (i.e., PS->PL) and 0x01 means input (i.e., PL->PS).
    XGpio dataa, datab, op, result;
    XGpio_Initialize(&dataa, XPAR_XGPIO_0_BASEADDR);
    XGpio_SetDataDirection(&dataa, 1, 0x00);
    XGpio_Initialize(&datab, XPAR_XGPIO_1_BASEADDR);
    XGpio_SetDataDirection(&datab, 1, 0x00);
    XGpio_Initialize(&op, XPAR_XGPIO_2_BASEADDR);
    XGpio_SetDataDirection(&op, 1, 0x00);
    XGpio_Initialize(&result, XPAR_XGPIO_3_BASEADDR);
    XGpio_SetDataDirection(&result, 1, 0x01);

    // Declare the integer variables we will use for ALU inputs, output, and the golden result.
    int dataa_value, datab_value, op_value, result_value, golden_result_value;
    
    for (int i = 0; i < NUM_TESTS; i++){
        // Generate two random operands with values between 0 and 255
        dataa_value = rand() % 256; 
        datab_value = rand() % 256; 
        // Generate a random opcode and mask only the least-significant two bits
        op_value = rand() & 0x00000003;

        // Calculate the golden result for the randomly generated operands and opcode
        // Opcodes: 00 - add, 01 - subtract, 10 - multiply, 11 - square
        if (op_value == 0) golden_result_value = dataa_value + datab_value;
        else if (op_value == 1) golden_result_value = dataa_value - datab_value;
        else if (op_value == 2) golden_result_value = dataa_value * datab_value;
        else golden_result_value = dataa_value * dataa_value;

        // Write the opcode and inputs to the appropriate GPIOs
        XGpio_DiscreteWrite(&op, 1, op_value);
        XGpio_DiscreteWrite(&dataa, 1, dataa_value);
        XGpio_DiscreteWrite(&datab, 1, datab_value);

        // Read the result of the ALU from the result GPIO
        result_value = XGpio_DiscreteRead(&result, 1);

        // Check that ALU result is equal to golden result
        if (result_value == golden_result_value) xil_printf("Test %d PASSED: ", i);
        else xil_printf("Test %d FAILED: ", i);
        xil_printf("dataa: %d, datab: %d, op: %d, result: %d\r\n", dataa_value, datab_value, op_value, result_value);
    }

    cleanup_platform();
    return 0;
}
