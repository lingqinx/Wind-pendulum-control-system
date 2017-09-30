/***MODU+********************************************************************/
/* Copyright (c) 2012.04  WH , All Rights Reserved.                         */
/*  WebSite     : www.smart-dz.cn                                           */
/*  Email       : dragonhzw@163.com                                         */
/*  FileName    : K60_datatype.h                                            */
/*  Description : The K60_datatype module                                   */
/*  History     :                                                           */                                                       
/*     [Author]   [Date]      [Version]    [Description]                    */              
/*     [1] dragonhzw   2012/04/09  Ver 1.0.0    Initial file.               */
/*                                                                          */
/*  Built with IAR Assembler for MSP430V3.20A/W32 (3.20.1.9)                */
/***MODU-********************************************************************/
#ifndef __K60_DATATYPE_H__
#define __K60_DATATYPE_H__

/***INC+**********************************************************************/
/* Standard header files                                                     */
/***INC-**********************************************************************/
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <ctype.h>
#include <math.h>
//#include "common\MK60N512VMD100.h"

/***DEF+**********************************************************************/
/* Data type redefinition.                                                   */
/***DEF-**********************************************************************/
/*typedef void              VOID;
typedef unsigned long     DWORD, ULONG, U32;
typedef long              LONG, S32;
typedef int               INT;
typedef unsigned short    WORD, U16;
typedef short             S16, SHORT;
typedef unsigned char     BYTE, U8, UCHAR, BOOL;
typedef char              S8, CHAR;
typedef float             FLOAT;
*/
/***INC+**********************************************************************/
/* Project header files                                                      */
/***INC-**********************************************************************/
//#include "common\Vectors.h"
//#include "common\_printf.h"
#include "Sdhc.h"
#include "diskio.h"


#ifndef TRUE
#define TRUE         (1)
#endif

#ifndef FALSE
#define FALSE        (0)
#endif

/***DEF+**********************************************************************/
/* define system clk  MHZ                                                    */
/***DEF-**********************************************************************/
#define  SYS_CLK                        (96000000L)          // 96MHz
#define  PERIPH_SYS_CLK                 (ULONG)(SYS_CLK/(((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> 24)+ 1))

/***DEF+**********************************************************************/
/* Data value and direction of chip pins define.                             */
/***DEF-**********************************************************************/
#define LVL_H                (1)    /* High level of pin value. */
#define LVL_L                (0)    /* Low level of pin value. */
#define DIR_I                (0)    /* Input direction of pin. */
#define DIR_O                (1)    /* Output direction of pin. */

/***DEF+**********************************************************************/
/* Data value define.                                                        */
/***DEF-**********************************************************************/
#define NULL_BYTE            (0xFF)
#define NULL_WORD            (0xFFFF)
#define NULL_DWORD           (0xFFFFFFFF)
#define NULL_PTR             (0)
#define VAL_OK               (0)
#define VAL_ERR              (1)



extern SDCARD_STRUCT SDHC_Card;
#endif   /* __K60_DATA_TYPE_H__ */