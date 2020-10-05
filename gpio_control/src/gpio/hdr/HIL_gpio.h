#ifndef __HIL_GPIO_H__
#define __HIL_GPIO_H__
#include <HIL_defs.h>
#include <HIL_types.h>

/*
 *  GPIO Write Interface Function
 * */
HIL_RESULT gpio_write(u32 pin, u32 value);

/*
 *  GPIO Read Interface Function
 * */
HIL_RESULT gpio_read(u32 pin, u32 *value);

#endif
