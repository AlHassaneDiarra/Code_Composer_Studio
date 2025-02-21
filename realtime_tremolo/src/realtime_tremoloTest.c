 /*
 * realtime_tremoloTest.c
 *
 *  Created on: Oct 31, 2012
 *      Author: BLEE
 *
 *  Description: Test program for real-time tremolo experiment
 *
 *  For the book "Real Time Digital Signal Processing:
 *                Fundamentals, Implementation and Application, 3rd Ed"
 *                By Sen M. Kuo, Bob H. Lee, and Wenshun Tian
 *                Publisher: John Wiley and Sons, Ltd
 */


#include <stdio.h>
#include "tistdtypes.h"
#include "i2s.h"
#include "dma.h"
#include "dmaBuff.h"


extern void AIC3204_init(Uint32, Int16, Int16);
extern void flanger_init(void);
extern void flanger(void);

#define IER0        *(volatile unsigned *)0x0000

#define EBSR *((volatile ioport Uint16 *)(0x1C00))  // Registre pour la s�lection des broches
#define IODIR2 *((volatile ioport Uint16 *)(0x1C07)) // Configuration des directions des IO
#define IOINDATA2 *((volatile ioport Uint16 *)(0x1C09)) // Lecture des donn�es d'entr�es

#define SF8KHz			8000
#define DAC_GAIN		6		// 6dB range: -6dB to 29dB
#define ADC_GAIN		0		// 0dB range: 0dB to 46dB

extern void tremolo_init(void);
extern void tremolo(void);

void initGPIO()
{
    EBSR |= 0x0007;  // S�lectionne GP21-GP23 pour les I/O
    // Configure GP21 et GP22 comme entr�es
    IODIR2 &= ~(1 << 5 | 1 << 6);  // GP21 et GP22 en entr�e
}

Uint16 readGPIO()
{
    return (IOINDATA2 >> 5) & 0x03;  // Lecture des �tats GP21 et GP22
}

void main(void)
{
	setDMA_address();		// DMA address setup for each buffer

    asm(" BCLR ST1_INTM");	// Disable all interrupts
    IER0 = 0x0110;      	// Enable DMA interrupt

    set_i2s0_slave();		// Set I2S
    AIC3204_init(SF8KHz, DAC_GAIN, (Uint16)ADC_GAIN);  // Set AIC3204
	enable_i2s0();

	enable_dma_int();		// Set up and enable DMA
    set_dma0_ch0_i2s0_Lout(XMIT_BUFF_SIZE);
    set_dma0_ch1_i2s0_Rout(XMIT_BUFF_SIZE);
    set_dma0_ch2_i2s0_Lin(XMIT_BUFF_SIZE);
	set_dma0_ch3_i2s0_Rin(XMIT_BUFF_SIZE);

    initGPIO();  // Initialisation des GPIO pour la lecture du bouton rotatif

	printf("Exp --- real-time tremolo experiment\n");
	tremolo_init();		   // Initialize for experiment
	tremolo();			   // Real-time loop
}






