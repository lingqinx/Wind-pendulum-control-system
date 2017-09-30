#ifndef __INCLUDE_H__
#define __INCLUDE_H__

#include  "common.h"

/* 
 * Include 用户自定义的头文件
 */

#include  "gpio.h"       //IO口操作
#include  "LED.H"       //流水灯
#include  "uart.h"      //串口
#include  "lptmr.h"     //低功耗定时器(延时)
#include  "FTM.h"
#include  "pit.h"
#include  "motor.h"
#include  "DIPswitch.h"
#include  "global.h"
#include  "outputdata.h"
#include  "ADdevice.h"
#include  "MMA845x.h"
#include  "control.h"
#include  "exti.h"
#include  "dma.h"
#include  "steer.h"
#include  "flash.h"
#include  "Sdhc.h"
#include  "diskio.h"
#include  "olcd.h"
#include  "iospi.h"
#include  "i2c.h"
#include  "MPU6050.h"
//#include  ""

#define PRINT 0
#endif  //__INCLUDE_H__
