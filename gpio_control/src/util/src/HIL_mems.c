/*****************************************************************************/
/*   (c) Human Interface Laboratory, Chung-Ang University, Seoul Korea       */
/*                                                                           */
/*   Title      : HIL Memory Allocation for WIN 32                           */
/*   File Name  : HIL_mems_win32.c                                           */
/*   Author     : Jaehwa Park   jaehwa@cau.ac.kr                             */
/*   Date       : Mar 21, 2004                                               */
/*   Version    : Alpha                                                      */
/*   Project    : Character Optimal Recognition at Mobile Enviroment         */
/*   Description: Memory Allocation Routine For Windows 32                   */
/*****************************************************************************/
               
/******************************** Revision History ***************************/
/* Date(M/D/Y) Author                Notes                                   */
/* ==========  ======                ===================                     */
/* 21/03/06    Jaehwa Park           Memory Allocation Routine Define        */
/*****************************************************************************/

/******************************** References *********************************/
/*                                                                           */
/*****************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "HIL_mems.h"


/*****************************************************************************/
/*    Basic Memory Allocation Functions                                        */
/*****************************************************************************/

#ifdef HIL_DEBUG_MEM_TRACE


/******************************************************************************/
/* FUNCTIONS  : HIL_mallocTrace                                                  */
/* SYNOPSIS   : Trace                                                          */
/* PARAMETERS : nSize : Size, FileName : File Name, LineNum : Line Number     */
/* RETURN     : malloc( nSize)                                                */
/* ERRON      :                                                               */
/******************************************************************************/
void* HIL_mallocTrace( 
    u32        nSize, 
    char    *FileName, 
    int        LineNum ) 
{

    /* will add memory allocation trace routines */
    return malloc( nSize);

}   /* end of HIL_mallocTrace */

#else


/******************************************************************************/
/* FUNCTIONS  : HIL_mallocTrace                                                  */
/* SYNOPSIS   : Trace                                                          */
/* PARAMETERS : nSize : Size                                                  */
/* RETURN     : malloc( nSize)                                                */
/* ERRON      :                                                               */
/******************************************************************************/
void* HIL_malloc(u32 nSize) 
{

    /* return malloc( nSize ) */
    return malloc( nSize );

}    /* end of HIL_malloc */


#endif /* HIL_DEBUG_MEM_TRACE */


/******************************************************************************/
/* FUNCTIONS  : HIL_free                                                      */
/* SYNOPSIS   : Free                                                          */
/* PARAMETERS : npPtr : Allocated Memory Pointer                              */
/* RETURN     : malloc( nSize)                                                */
/* ERRON      :                                                               */
/******************************************************************************/
HIL_RESULT    HIL_free ( void* npPtr ) 
{

    HIL_RESULT nRes = HIL_N_SUCC;
    if (npPtr) free( npPtr );
    else nRes = HIL_E_BADARGUMENTS;

    /* return res */
    return nRes;

}    /* end of HIL_free */


/******************************************************************************/
/* FUNCTIONS  : HIL_memset                                                      */
/* SYNOPSIS   : MemSet                                                          */
/* PARAMETERS : npPtr : Allocated Memory Pointer, nValue : Value, nSize : Size*/
/* RETURN     : malloc( nSize)                                                */
/* ERRON      :                                                               */
/******************************************************************************/
HIL_RESULT HIL_memset (
    void    *npPtr, 
    s32        nValue, 
    u32        nSize) 
{

    u32 i;
    s8  *npP = npPtr;
    HIL_RESULT nRes = HIL_N_SUCC;

    for(i=0;i<nSize;i++) {
        *npP = (s8)nValue;
        npP++;
    }


    /* return nRes */
    return nRes;

}    /* end of HIL_memset */


/******************************************************************************/
/* FUNCTIONS  : HIL_memset                                                      */
/* SYNOPSIS   : MemSet                                                          */
/* PARAMETERS : dest : Destination, src : Source, size_t : Size                  */
/* RETURN     : malloc( nSize)                                                */
/* ERRON      :                                                               */
/******************************************************************************/
void * HIL_memcpy( 
    void        *dest, 
    const void    *src, 
    size_t        count) 
{

    
    /* return memcpy(dest, src, count) */
    return memcpy(dest, src, count);

}    /* end of HIL_memset */

