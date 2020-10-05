#ifndef __LOGGER_TIMER_H__
#define __LOGGER_TIMER_H__

#include <time.h>
#include <signal.h>

typedef struct logger_timer {
	timer_t timerID;
	struct sigevent         sig_event;  
	struct itimerspec       itimer_spec;  
	struct sigaction        sig_action;
} logger_timer;

logger_timer *timer_init();
void timer_deinit(logger_timer **instance);

int timer_function_register(logger_timer *timer, void (*timer_function));
void timer_interval_register(logger_timer *timer, int sec, int nsec);
void timer_onoff(logger_timer *timer, int onoff);

#endif
