/*****************************************************************************/
/*   (c) Human Interface Laboratory, Chung-Ang University, Seoul Korea       */
/*                                                                           */
/*   Title      : HIL Embedded Software Common Type Definition               */
/*   File Name  : HIL_types                                                  */
/*   Author     : Jaehwa Park   jaehwa@cau.ac.kr                             */
/*   Date       : Mar 8, 2006                                                */
/*   Version    :                                                            */
/*   Project    :                                                            */
/*   Description: platform independent type definitions and error            */
/*                return codes.                                              */
/*****************************************************************************/
               
/******************************** Revision History ***************************/
/* Date(M/D/Y) Author                Notes                                   */
/* ==========  ======                ===================                     */
/* 03/08/06    Jaehwa Park           Embedded Software Type Definition File  */
/* 07/10/08    Jaehwa Park           Extended HIL_RESULT type                */
/*****************************************************************************/

/******************************** References *********************************/
/*                                                                           */
/*****************************************************************************/

#ifndef __HIL_types_win32_h__
#define __HIL_types_win32_h__

#ifdef __cplusplus
extern "C" 
{
#endif

/*****************************************************************************/
/*:    Basic Types                                                           */
/*****************************************************************************/
typedef signed long      s32;
typedef unsigned long    u32;
typedef signed short     s16;
typedef unsigned short   u16;
typedef signed char      s8;
typedef unsigned char    u8;

/*****************************************************************************/
/*    Basic Pointer Types                                                    */
/*****************************************************************************/
typedef s32*             ps32;    
typedef u32*             pu32;
typedef s16*             ps16;    
typedef u16*             pu16;    
typedef s8*              ps8;    
typedef u8*              pu8;

/*****************************************************************************/
/*    Basic Funtion Return Types                                             */
/*****************************************************************************/
typedef u32              HIL_RESULT;
typedef int              HIL_BOOL; 
  

/*****************************************************************************/
/*    Basic Definitions                                                      */
/*****************************************************************************/

#define HIL_FALSE        (0)
#define HIL_TRUE         (!HIL_FALSE)
#define HIL_NULL         (0)


/*****************************************************************************/
/*    Misc Definitions                                                       */
/*****************************************************************************/

#ifndef NULL
#define NULL             0
#endif /* NULL */

#ifdef  HIL_USE_DLL
#define HIL_DLLEXPORT    __declspec(dllexport)
#define HIL_DLLIMPORT    __declspec(dllimport)
#else
#define HIL_DLLEXPORT
#define HIL_DLLIMPORT
#endif


#ifdef __cplusplus
};
#endif


#endif /* __HIL_types_h__ */

