/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[LED.h] 
* 描  述 ：LED函数定义
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：LED函数定义
***********************************************************************
*/
#ifndef __CCD_H__
#define __CCD_H__

#include "common.h"
#include "global.h"
#include "gpio.h"
#include "ftm.h"
#ifdef CCD_DMA
  #include "dma.h"
#endif


//配置开发板的CCD硬件
#define   CCD_PORT      PORTD     //CCD所在的端口

#define   CCD_FTM       FTM2      //输入捕捉用到的FTM端口
#define   CCD_HR_CH     CH0
#define   CCD_VS_CH     CH1

#ifdef CCD_DMA

  #define CCD_DMA_CH      DMA_CH4      
  #define PLCK_CH         PTB9

#endif
//
//选用连续的8个位，CCD应为 0，8，16，24

typedef enum CCDn
{
  CCD0    =      0,              //对应的引脚号
  CCD1    =      1,
  CCD2    =      2,
  CCD3    =      3,
  CCD4    =      4,              //对应的引脚号
  CCD5    =      5,
  CCD6    =      6,
  CCD7    =      7
}CCDn;
#define CCD    0                 //这个管脚号务必与CCD0一致

void    CCD_init(void);                                                 // CCD初始化    函数

#if   CCD == 0                                 
  #define CCD_DATA GPIOx[CCD_PORT]->PDIRByte.Byte0
#elif CCD == 8
  #define CCD_DATA GPIOx[CCD_PORT]->PDIRByte.Byte1
#elif CCD == 16
  #define CCD_DATA GPIOx[CCD_PORT]->PDIRByte.Byte2
#elif CCD == 24
  #define CCD_DATA GPIOx[CCD_PORT]->PDIRByte.Byte3
#else
  #error "CCD bit setting is error"                               
#endif  //#if   CCD0 == 0 
        

#define En_HREF     FTM_IRQ_chEN(CCD_FTM,CCD_HR_CH);               //开启行中断
#define Dis_HREF    FTM_IRQ_chDIS(CCD_FTM,CCD_HR_CH);              //开启行中断

#define En_VSYNC    FTM_IRQ_chEN(CCD_FTM,CCD_VS_CH);               //开启行中断
#define Dis_VSYNC   FTM_IRQ_chDIS(CCD_FTM,CCD_VS_CH);              //开启行中断

#define En_CCD      En_HREF;En_VSYNC                      //同时打开行场中断
#define Dis_CCD     Dis_VSYNC;Dis_HREF                   //同时关闭行场中断

#define Clr_HREF    FTM_STATUS_REG(FTMx[CCD_FTM]) &= ~FTM_STATUS_CH0F_MASK  //清除行中断标志位
#define Clr_VSYNC   FTM_STATUS_REG(FTMx[CCD_FTM]) &= ~FTM_STATUS_CH1F_MASK  //清除场中断标志位
#define Clr_CCDF    Clr_HREF;Clr_VSYNC;                   //清除行场中断


void ShowPhoto();
void GetPhoto();
void WritePicTest();
void WritePicBlack();
void OptimizeCenterLine();
void ImproveSingleRow(unsigned int irows, unsigned int llimit, unsigned int rlimit);
void GetBlackLine() ;
void SendCenterLine3(int * templineL, int * templine, int * templineR);


#endif  //__CCD_H__

