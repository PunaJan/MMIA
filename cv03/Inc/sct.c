/*
 * sct.c
 *
 *  Created on: 19. 2. 2020
 *      Author: student
 */
#include "sct.h"
#include <stm32f0xx.h>

#define sct_nla(x) do { if (x) GPIOB->BSRR = (1 << 5); else GPIOB->BRR = (1 << 5); } while (0)
#define sct_sdi(x) do { if (x) GPIOB->BSRR = (1 << 4); else GPIOB->BRR = (1 << 4); } while (0)
#define sct_clk(x) do { if (x) GPIOB->BSRR = (1 << 3); else GPIOB->BRR = (1 << 3); } while (0)
#define sct_noe(x) do { if (x) GPIOB->BSRR = (1 << 10); else GPIOB->BRR = (1 << 10); } while (0)

void sct_led(uint32_t value)
{

	for(uint32_t j = 0; j < 32; j++)
	{
		sct_sdi(value & 1);
		value >>= 1;
		sct_clk(1);
		sct_clk(0);
	}
	sct_nla(1);
	sct_nla(0);

}

void sct_init(void)
{
	RCC->AHBENR |= RCC_AHBENR_GPIOBEN ; // clock enable
	GPIOB->MODER |= GPIO_MODER_MODER4_0; // D1 = PA4, output
	GPIOB->MODER |= GPIO_MODER_MODER5_0; // D2 = PB0, output
	GPIOB->MODER |= GPIO_MODER_MODER3_0; // D1 = PA4, output
	GPIOB->MODER |= GPIO_MODER_MODER10_0; // D2 = PB0, output
	sct_led(0);
	sct_noe(0);
}
