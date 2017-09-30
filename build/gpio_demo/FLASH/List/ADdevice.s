///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  12:46:18 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    ADdevice\ADdevice.c                                     /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    ADdevice\ADdevice.c -lCN C:\Users\Administrator\Desktop /
//                    \MPU60508.12\build\gpio_demo\FLASH\List\ -lB            /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\FLASH\List\ -o C:\Users\Administrator\Desktop\MPU60 /
//                    508.12\build\gpio_demo\FLASH\Obj\ --no_cse --no_unroll  /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\IAR     /
//                    Systems\Embedded Workbench                              /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\ -I C:\Users\Administrator\Desktop\MPU60508.12\b /
//                    uild\gpio_demo\..\..\src\common\ -I                     /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\cpu\ -I C:\Users\Administrator\Desktop\MP /
//                    U60508.12\build\gpio_demo\..\..\src\drivers\ -I         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\gpio\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\flash\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\olcd\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\diskio\ -I                        /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\iospi\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\wdog\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\mcg\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\flash\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\uart\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\lptmr\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\LED\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\fun\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\FTM\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\pit\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\DIPswitch\ -I                     /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\steer\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\motor\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\laser\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\i2c\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\ADdevice\ -I                      /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\adc\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\serial_digtal_scope\ -I           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\MMA845x\ -I                       /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\exti\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\dma\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\platforms\ -I                             /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\projects\ -I                              /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\projects\gpio_demo\ -I                    /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\MPU6050\ -I                       /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\steer\ -Ol                        /
//    List file    =  C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\FLASH\List\ADdevice.s                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ad_ave
        EXTERN adc_init

        PUBLIC ADdevice_init
        PUBLIC Get_ADval_L
        PUBLIC get_ADval

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ADdevice\ADdevice.c
//    1 /*
//    2 ************************************************************************
//    3 *                �����ʵ��ѧ K60 ѧϰ����
//    4 * �ļ��� :[ADdevice.c]
//    5 * ��  �� ��AD�豸 ��������
//    6 *��ƸĽ�������
//    7 * ˵  �� ��AD�豸 ��������
//    8 ***********************************************************************
//    9 */
//   10 
//   11 #include "ADdevice.h"
//   12 
//   13 /*************************************************************************
//   14 *  �������ƣ�ADdevice_init
//   15 *  ����˵����AD�豸��ʼ������
//   16 *  ����˵����
//   17 *  �������أ���
//   18 *  �޸�ʱ�䣺2012-2-14
//   19 *  ��    ע��������Ҫ���г�ʼ��ADͨ��
//   20 *************************************************************************/
//   21 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   22 void ADdevice_init()
//   23 {
ADdevice_init:
        PUSH     {R7,LR}
//   24     //ENC 03 ��ʼ��  PE3
//   25     adc_init(ENC_AD,ENC_X_CH);
        MOVS     R1,#+7
        MOVS     R0,#+1
        BL       adc_init
//   26 
//   27 }
        POP      {R0,PC}          ;; return
//   28 
//   29 /*************************************************************************
//   30 *  �������ƣ�Get_ADval
//   31 *  ����˵������ȡADֵ
//   32 *  ����˵����ADCn adcn  ADģ���
//   33              ADC_Ch ch ͨ����
//   34 
//   35 *  �������أ���
//   36 *  �޸�ʱ�䣺2012-2-14
//   37 *  ��    ע�� ������  ADBITS ����           ��������Ϊ12bit����
//   38               ���� AD_TIMES ��ת����ƽ��
//   39 *************************************************************************/
//   40 //��ȡ�����ǣ�ENC���ķ���ֵ,�Ҿ��òɼ��ٶ�ʵ�ʲ�һ�°�
//   41 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   42 u16 get_ADval(ADCn adcn,ADC_Ch ch)
//   43 {
get_ADval:
        PUSH     {R7,LR}
//   44   return ad_ave(adcn,ch,ADBITS,AD_TIMES);
        MOVS     R3,#+50
        MOVS     R2,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_ave
        POP      {R1,PC}          ;; return
//   45 }
//   46 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   47 u16 Get_ADval_L(ADCn adcn,ADC_Ch ch)
//   48 {
Get_ADval_L:
        PUSH     {R7,LR}
//   49   return ad_ave(adcn,ch,ADBITS_L,AD_TIMES_L);
        MOVS     R3,#+100
        MOVS     R2,#+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_ave
        POP      {R1,PC}          ;; return
//   50 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 44 bytes in section .text
// 
// 44 bytes of CODE memory
//
//Errors: none
//Warnings: none
