/*****************************************************************************/
/*   (c) Human Interface Laboratory, Chung-Ang University, Seoul Korea       */
/*                                                                           */
/*   Title      : HIL Embedded Software Memory Allocation                    */
/*   File Name  : HIL_mems.h                                                 */
/*   Author     : Jaehwa Park   jaehwa@cau.ac.kr                             */
/*   Date       : Mar 21, 2006                                               */
/*   Version    : Alpha                                                      */
/*   Project    : Optical Character  Recognition at Mobile Enviroment        */
/*   Description: Memory Allocation Header File                              */
/*****************************************************************************/
               
/******************************** Revision History ***************************/
/* Date(M/D/Y) Author                Notes                                   */
/* ==========  ======                ===================                     */
/* 03/08/06    Jaehwa Park           Memory Allocation Routine Define        */
/*****************************************************************************/

/******************************** References *********************************/
/*                                                                           */
/*****************************************************************************/

#ifndef __HIL_mems_h__
#define __HIL_mems_h__

#ifndef __HIL_types_h__
#include "HIL_types.h"
#endif

#ifndef __HIL_defs_h__
#include "HIL_defs.h"
#endif 

#ifndef __string_h__
#include <string.h>
#endif

#ifdef __cplusplus
extern "C" 
{
#endif

/*****************************************************************************/
/*    Basic Memory Allocation Functions                                      */
/*****************************************************************************/

#ifdef HIL_DEBUG_MEM_TRACE

#define HIL_malloc(A) HIL_malloc_trace(A, __FILE__, __LINE__)

void* HIL_mallocTrace( u32 nSize, char *FileName, int LineNum ); 

#else

void* HIL_malloc(u32 nSize);

#endif /* HIL_DEBUG_MEM_TRACE */

HIL_RESULT    HIL_free  (void* npPtr );
HIL_RESULT  HIL_memset (void *npPtr, s32 nValue, u32 nSize);
void *HIL_memcpy( void *dest, const void *src, size_t count);

#ifdef __cplusplus
};
#endif


#endif /* __HIL_mems_h__ */

