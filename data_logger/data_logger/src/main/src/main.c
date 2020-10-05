#include <stdio.h>
#include <stdlib.h>
#include <bmp180.h>
#include <ads1256.h>
#include <bcm2835.h>
#include <monitor.h>
#include <logger.h>
#include <sensor_data.h>
#include <logger_timer.h>
#include <control.h>

#define SENSOR_BMP180
//#define SENSOR_ADS1256

sensor_data **data = NULL;
void logger_routine();

int main(){
	int i = 0;
	int result = 0;

	control_init();

	/* Data Storage Preparation */
	int nData = 3;
	data = (sensor_data **)malloc(sizeof(sensor_data*) * nData);

	for(i = 0 ; i < nData ; i++) {
		data[i] = sensor_data_init();
	}

	/* Initialize */
#ifdef SENSOR_BMP180
	if(!bmp180_begin()) return 1;
#endif
#ifdef SENSOR_ADS1256
	if(!ads1256_begin()) return 1;
#endif


	/* Timer Setup */
	logger_timer *timer = timer_init();
	timer_function_register(timer, logger_routine);
	timer_interval_register(timer, 1, 0);
	timer_onoff(timer, 1);

	while(control_flag);

	/* Clean-up */
	for(i = 0 ; i < nData ; i++) {
		sensor_data_deinit(&data[i]);
	}
	free(data);
#ifdef SENSOR_BMP180
	bmp180_end();
#endif
#ifdef SENSOR_ADS1256
	ads1256_end();
#endif

	return 0;
}

void logger_routine() {
	int i = 0;
	int nData = 3;
	int result = 0;

	/* Sensing */
#ifdef SENSOR_BMP180
	sensor_data_set(data[0], "temp", SENSOR_DATA_TYPE_DOUBLE, read_temperature(), "C");
	sensor_data_set(data[1], "press", SENSOR_DATA_TYPE_DOUBLE, read_pressure()/100.0, "Pa");
	sensor_data_set(data[2], "alti", SENSOR_DATA_TYPE_DOUBLE, read_altitude(), "h");
#endif
#ifdef SENSOR_ADS1256
	while((ADS1256_Scan() == 0));
	for (i = 0; i < nData; i++)
	{
		sensor_data_set(data[i], "???", SENSOR_DATA_TYPE_DOUBLE, ADS1256_GetAdc(i) /1670.0, "mV");
	}
#endif

#ifdef DEBUG
	/* Monitor */
	monitor(data, nData);
	fprintf(stdout, "\n");  
#endif

	/* Logging */
	result = logging("data/data_corpus.dat", data, nData);
	if(result) {
		fprintf(stderr, "File is not written.\n");
		return;
	}
}
