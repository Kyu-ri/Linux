#include <stdio.h>
#include <bmp180.h>
#include <ads1256.h>
#include <bcm2835.h>
#include <bmp180_monitor.h>
#include <bmp180_logger.h>

int main(){
//	int result = 0;
//	int temp, press, alti;
//
//	if(!bcm2835_init()) return 1;
//	bcm2835_i2c_begin();
//	bcm2835_i2c_setSlaveAddress(BMP180_Address);
//	bcm2835_i2c_set_baudrate(10000);
//	load_calibration();
//
//	while(1){
//		/* Sensing */
//		temp = read_temperature();
//		press = read_pressure()/100.0;
//		alti = read_altitude();
//		bcm2835_delay(1000);
//
//		/* Monitor */
//		monitor(temp, press, alti);
//
//		/* Logging */
//		result = logging("data/data_corpus.dat", temp, press, alti);
//		if(result) {
//			fprintf(stderr, "File is not written.\n");
//			return 1;
//		}
//
//		/* Print */
//
//	}
//
//	return 0;

	uint8_t id;
	int32_t adc[8];
	int32_t volt[8];
	uint8_t i;
	uint8_t ch_num;
	int32_t iTemp;
	uint8_t buf[3];
	if (!bcm2835_init())
		return 1;
	bcm2835_spi_begin();
	bcm2835_spi_setBitOrder(BCM2835_SPI_BIT_ORDER_LSBFIRST );      // The default
	bcm2835_spi_setDataMode(BCM2835_SPI_MODE1);                   // The default
	bcm2835_spi_setClockDivider(BCM2835_SPI_CLOCK_DIVIDER_1024); // The default
	bcm2835_gpio_fsel(SPICS, BCM2835_GPIO_FSEL_OUTP);//
	bcm2835_gpio_write(SPICS, HIGH);
	bcm2835_gpio_fsel(DRDY, BCM2835_GPIO_FSEL_INPT);
	bcm2835_gpio_set_pud(DRDY, BCM2835_GPIO_PUD_UP);    	
	ADS1256_CfgADC(ADS1256_GAIN_1, ADS1256_15SPS);
	ADS1256_StartScan(0);
	ch_num = 2;	

	while(1)
	{
		/* Sensing */
		while((ADS1256_Scan() == 0));
		for (i = 0; i < ch_num; i++)
		{
			adc[i] = ADS1256_GetAdc(i);
			volt[i] = (adc[i] * 100) / 167;	
		}

		/* Print */
		for (i = 0; i < ch_num; i++)
		{
			buf[0] = ((uint32_t)adc[i] >> 16) & 0xFF;
			buf[1] = ((uint32_t)adc[i] >> 8) & 0xFF;
			buf[2] = ((uint32_t)adc[i] >> 0) & 0xFF;
			printf("%d=%02X%02X%02X, %8ld", (int)i, (int)buf[0], 
					(int)buf[1], (int)buf[2], (long)adc[i]);                

			iTemp = volt[i];	/* uV  */
			if (iTemp < 0)
			{
				iTemp = -iTemp;
				printf(" (-%ld.%03ld %03ld V) \r\n", iTemp /1000000, (iTemp%1000000)/1000, iTemp%1000);
			}
			else
			{
				printf(" ( %ld.%03ld %03ld V) \r\n", iTemp /1000000, (iTemp%1000000)/1000, iTemp%1000);                    
			}

		}
		//printf("\33[%dA", (int)ch_num);  
		bsp_DelayUS(100000);
		bcm2835_delay(1000);
	}	
	bcm2835_spi_end();
	bcm2835_close();

	return 0;
}
