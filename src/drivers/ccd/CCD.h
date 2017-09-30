/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[LED.h] 
* ��  �� ��LED��������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� ��LED��������
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


//���ÿ������CCDӲ��
#define   CCD_PORT      PORTD     //CCD���ڵĶ˿�

#define   CCD_FTM       FTM2      //���벶׽�õ���FTM�˿�
#define   CCD_HR_CH     CH0
#define   CCD_VS_CH     CH1

#ifdef CCD_DMA

  #define CCD_DMA_CH      DMA_CH4      
  #define PLCK_CH         PTB9

#endif
//
//ѡ��������8��λ��CCDӦΪ 0��8��16��24

typedef enum CCDn
{
  CCD0    =      0,              //��Ӧ�����ź�
  CCD1    =      1,
  CCD2    =      2,
  CCD3    =      3,
  CCD4    =      4,              //��Ӧ�����ź�
  CCD5    =      5,
  CCD6    =      6,
  CCD7    =      7
}CCDn;
#define CCD    0                 //����ܽź������CCD0һ��

void    CCD_init(void);                                                 // CCD��ʼ��    ����

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
        

#define En_HREF     FTM_IRQ_chEN(CCD_FTM,CCD_HR_CH);               //�������ж�
#define Dis_HREF    FTM_IRQ_chDIS(CCD_FTM,CCD_HR_CH);              //�������ж�

#define En_VSYNC    FTM_IRQ_chEN(CCD_FTM,CCD_VS_CH);               //�������ж�
#define Dis_VSYNC   FTM_IRQ_chDIS(CCD_FTM,CCD_VS_CH);              //�������ж�

#define En_CCD      En_HREF;En_VSYNC                      //ͬʱ���г��ж�
#define Dis_CCD     Dis_VSYNC;Dis_HREF                   //ͬʱ�ر��г��ж�

#define Clr_HREF    FTM_STATUS_REG(FTMx[CCD_FTM]) &= ~FTM_STATUS_CH0F_MASK  //������жϱ�־λ
#define Clr_VSYNC   FTM_STATUS_REG(FTMx[CCD_FTM]) &= ~FTM_STATUS_CH1F_MASK  //������жϱ�־λ
#define Clr_CCDF    Clr_HREF;Clr_VSYNC;                   //����г��ж�


void ShowPhoto();
void GetPhoto();
void WritePicTest();
void WritePicBlack();
void OptimizeCenterLine();
void ImproveSingleRow(unsigned int irows, unsigned int llimit, unsigned int rlimit);
void GetBlackLine() ;
void SendCenterLine3(int * templineL, int * templine, int * templineR);


#endif  //__CCD_H__

