#include <control.h>
#include <stdio.h>
#include <signal.h>

void control_flag_control() {
	control_flag ^= 1;
	fprintf(stdout, "Flag is changed.\n");
}

void control_init() {
	control_sig_action.sa_flags = SA_SIGINFO;
	control_sig_action.sa_sigaction = control_flag_control;
	sigemptyset(&control_sig_action.sa_mask);
	control_flag = 1;

	if (sigaction(SIGUSR1, &control_sig_action, NULL) == -1)  
	{  
		fprintf(stderr, "sigaction error\n");
	}
}
