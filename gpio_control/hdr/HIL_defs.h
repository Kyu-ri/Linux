/*****************************************************************************/
/*   (c) Human Interface Laboratory, Chung-Ang University, Seoul Korea       */
/*                                                                           */
/*   Title      : HIL Embedded Software Common Term Definition               */
/*   File Name  : HIL_defs.h                                                 */
/*   Author     : Jaehwa Park   jaehwa@cau.ac.kr                             */
/*   Date       : Mar 8, 2006                                                */
/*   Version    :                                                            */
/*   Project    :                                                            */
/*   Description: platform independent term definitions and common error     */
/*                return term definitions (funtion specific return term      */
/*                should be defined in local def file)                       */
/*****************************************************************************/
               
/******************************** Revision History ***************************/
/* Date(M/D/Y) Author                Notes                                   */
/* ==========  ======                ===================                     */
/* 03/08/06    Jaehwa Park           Embedded Software term definition file  */
/* 07/10/09    Jaehwa Park           Extended HIL_RESULT return type         */
/*****************************************************************************/

/******************************** References *********************************/
/*                                                                           */
/*****************************************************************************/


#ifndef __HIL_defs_h__
#define __HIL_defs_h__

#ifdef __cplusplus
extern "C" 
{
#endif

/*****************************************************************************/
/*  Basic Return Definitions - unsigned 32bit type                           */
/*                                                                           */
/*                                                                           */
/*  General rules:                                                           */
/*    For indicate API return status, 32bit return types are defined below   */
/*       bits    : reture value code and location of definition              */
/*                                                                           */
/*       31--24  : General API return status - defined here                  */
/*       23--16  : Module ID - defined project header file: HIL_UCR_defs.h   */
/*       15-- 8  : Submodule ID - defined sub-module header file             */
/*        7-- 0  : Error Function & Type - defined in specific fn hdr        */
/*                                                                           */
/*  General API return Definition: top 1 byte                                */
/*    To indicate return status top 2 bits are used                          */
/*     00 : Normal Return (successful)                                       */
/*     01 : Normal Return (ineffective return - no useful info is inclusive) */
/*     10 : Failed Return  (failed with fatal error)                         */
/*     11 : Error  Return  (warning error)                                   */
/*                                                                           */
/*    remained 2 bits are reserved for futher expansion                      */
/*                                                                           */
/*  Other 4 low bits can be used for indicating general error or succesful   */
/*  status. If necessary, it can be extended.                                */
/*                                                                           */
/*  Return Term Define Syntax:                                               */
/*      HIL_E_<...>  : Error                                                 */
/*      HIL_W_<...>  : Warning                                               */
/*      HIL_S_<...>  : Successful
/*                                                                           */
/*    Use the following macros for quick detection of error:                 */
/*                                                                           */
/*    HIL_RESULT v_local_res;                                                */
/*    v_local_res = local_function( a, b, c );                               */
/*    if( HIL_FAILED(v_local_res) ) {     // General check for Failure       */
/*        if( v_local_res == HIL_E_OUTOFMEMORY ) {                           */
/*             // handle out of memory error                                 */
/*         } else if ( v_local_res == LXS_E_BADARGUMENTS) {                  */
/*             // handle bad arguments error                                 */
/*         } else ....                                                       */
/*     }                                                                     */
/*****************************************************************************/

#define HIL_N_SUCC                  ( 0x00000000 )
#define HIL_N_INEF                  ( 0x40000000 )
#define HIL_E_FAIL                  ( 0x80000000 )
#define HIL_W_WARN                  ( 0xf0000000 )

#define HIL_FAILED(x)               ( (x) & 0x80000000 )
#define HIL_SUCCEEDED(x)            ( !( (x) & 0x80000000 ) )


/*****************************************************************************/
/*    Standard Error Return Values                                           */
/*****************************************************************************/

#define HIL_E_OUTOFMEMORY           ( HIL_E_FAIL | 0x00000000 )
#define HIL_E_BADARGUMENTS          ( HIL_E_FAIL | 0x00000001 )
#define HIL_E_FILE_ERROR            ( HIL_E_FAIL | 0x00000002 )
#define HIL_E_WRONGENDIAN           ( HIL_E_FAIL | 0x00000003 )
#define HIL_E_OUT_OF_RANGE          ( HIL_E_FAIL | 0x00000004 )
#define HIL_E_CHECKSUM_ERR          ( HIL_E_FAIL | 0x00000005 )
#define HIL_E_NO_PARAMETER          ( HIL_E_FAIL | 0x00000006 )
#define HIL_E_FEATURES_ERR          ( HIL_E_FAIL | 0x00000007 )

/*** will be defined more ***/

#ifdef __cplusplus
};
#endif


#endif /* __HIL_defs_h__ */

