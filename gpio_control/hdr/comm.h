#ifndef __COMM_H__
#define __COMM_H__
#include <HIL_types.h>

/* Wait to Be Connected */
HIL_RESULT wait_connection();

/* Communicate with the beacon */
HIL_RESULT communicate();

#endif
