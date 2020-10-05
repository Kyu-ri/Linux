#ifndef __CONTROL_H__
#define __CONTROL_H__

int control_flag;
struct sigaction control_sig_action;

void control_init();

#endif
