///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  12:46:18 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    adc\adc.c                                               /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    adc\adc.c -lCN C:\Users\Administrator\Desktop\MPU60508. /
//                    12\build\gpio_demo\FLASH\List\ -lB                      /
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
//                    emo\FLASH\List\adc.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC ADCx
        PUBLIC Master_Adc_Config
        PUBLIC ad_ave
        PUBLIC ad_mid
        PUBLIC ad_once
        PUBLIC adc_init
        PUBLIC adc_start
        PUBLIC adc_stop

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\adc\adc.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程
//    4 * 文件名 :[adc.c]
//    5 * 描  述 ：adc驱动函数
//    6 *设计改进：snowwolf
//    7 *  Email ：snowwolf2012@qq.com
//    8 * 说  明 ：adc驱动函数
//    9 ***********************************************************************
//   10 */
//   11 #include "common.h"
//   12 #include "adc.h"
//   13 
//   14 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 tADC_Config Master_Adc_Config;          //该结构体包含了需要的ADC/PGA配置
Master_Adc_Config:
        DS8 16
//   16 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   17 volatile struct ADC_MemMap *ADCx[2]={ADC0_BASE_PTR,ADC1_BASE_PTR}; //定义两个指针数组保存 ADCx 的地址
ADCx:
        DATA
        DC32 4003B000H, 400BB000H
//   18 
//   19 /*************************************************************************
//   20 *  函数名称：adc_init
//   21 *  功能说明：AD初始化，使能时钟
//   22 *  参数说明：ADCn        模块号（ ADC0、 ADC1）
//   23 *  函数返回：无
//   24 *  修改时间：2012-2-10
//   25 *  备    注：参考苏州大学的例程
//   26 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 void adc_init(ADCn adcn,ADC_Ch ch)
//   28 {
adc_init:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
        MOVS     R4,R1
//   29     ASSERT( ((adcn == ADC0) && (ch>=AD8 && ch<=AD18)) || ((adcn == ADC1)&& (ch>=AD4a && ch<=AD17)) ) ;   //使用断言检测ADCn_CHn是否正常
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??adc_init_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SUBS     R0,R4,#+8
        CMP      R0,#+11
        BCC.N    ??adc_init_1
??adc_init_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??adc_init_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SUBS     R0,R4,#+4
        CMP      R0,#+14
        BCC.N    ??adc_init_1
??adc_init_2:
        MOVS     R1,#+29
        LDR.W    R0,??DataTable5
        BL       assert_failed
//   30 
//   31     switch(adcn)
??adc_init_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??adc_init_3
        CMP      R5,#+1
        BEQ.N    ??adc_init_4
        B.N      ??adc_init_5
//   32     {
//   33     case ADC0:       /*   ADC0  */
//   34         SIM_SCGC6 |= (SIM_SCGC6_ADC0_MASK );        //开启ADC0时钟
??adc_init_3:
        LDR.W    R0,??DataTable5_1  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable5_1  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   35         SIM_SOPT7 &= ~(SIM_SOPT7_ADC0ALTTRGEN_MASK  |SIM_SOPT7_ADC0PRETRGSEL_MASK);// selects PDB not ALT trigger
        LDR.W    R0,??DataTable5_2  ;; 0x40048018
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x90
        LDR.W    R1,??DataTable5_2  ;; 0x40048018
        STR      R0,[R1, #+0]
//   36         SIM_SOPT7 = SIM_SOPT7_ADC0TRGSEL(0);        // PDB external pin input trigger for ADC
        LDR.W    R0,??DataTable5_2  ;; 0x40048018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   37 
//   38         switch(ch)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        SUBS     R0,R0,#+8
        CMP      R0,#+1
        BLS.N    ??adc_init_6
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??adc_init_7
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??adc_init_8
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??adc_init_9
        SUBS     R0,R0,#+3
        CMP      R0,#+1
        BLS.N    ??adc_init_10
        B.N      ??adc_init_11
//   39         {
//   40         case AD8:   //ADC0_SE8 -- PTB0
//   41         case AD9:   //ADC0_SE9 -- PTB1
//   42             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_6:
        LDR.W    R0,??DataTable5_3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable5_3  ;; 0x40048038
        STR      R0,[R1, #+0]
//   43             PORT_PCR_REG(PORTB_BASE_PTR, ch-AD8+0) =  PORT_PCR_MUX(0);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+2
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+303104
        MOVS     R1,#+0
        STR      R1,[R0, #-32]
//   44             break;
//   45         case AD10:  //ADC0_SE10 -- PTA7
//   46         case AD11:  //ADC0_SE11 -- PTA8
//   47             SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//   48             PORT_PCR_REG(PORTA_BASE_PTR, ch-AD10+7) =  PORT_PCR_MUX(0);
//   49             break;
//   50         case AD12:  //ADC0_SE12 -- PTB2
//   51         case AD13:  //ADC0_SE13 -- PTB3
//   52             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//   53             PORT_PCR_REG(PORTB_BASE_PTR, ch-AD12+2) =  PORT_PCR_MUX(0);
//   54             break;
//   55         case AD14:  //ADC0_SE14 -- PTC0
//   56         case AD15:  //ADC0_SE15 -- PTC1
//   57             SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
//   58             PORT_PCR_REG(PORTC_BASE_PTR, ch-AD14+0) =  PORT_PCR_MUX(0);
//   59             break;
//   60         case AD17:   //ADC0_SE17 -- PTE24
//   61         case AD18:   //ADC0_SE17 -- PTE25
//   62             SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
//   63             PORT_PCR_REG(PORTE_BASE_PTR, ch-AD17+24) =  PORT_PCR_MUX(0);
//   64             break;
//   65         default:
//   66             return;
//   67         }
//   68         return;
??adc_init_12:
        B.N      ??adc_init_13
??adc_init_7:
        LDR.N    R0,??DataTable5_3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??DataTable5_3  ;; 0x40048038
        STR      R0,[R1, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+2
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+299008
        MOVS     R1,#+0
        STR      R1,[R0, #-12]
        B.N      ??adc_init_12
??adc_init_8:
        LDR.N    R0,??DataTable5_3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable5_3  ;; 0x40048038
        STR      R0,[R1, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+2
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+303104
        MOVS     R1,#+0
        STR      R1,[R0, #-40]
        B.N      ??adc_init_12
??adc_init_9:
        LDR.N    R0,??DataTable5_3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable5_3  ;; 0x40048038
        STR      R0,[R1, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+2
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+307200
        MOVS     R1,#+0
        STR      R1,[R0, #-56]
        B.N      ??adc_init_12
??adc_init_10:
        LDR.N    R0,??DataTable5_3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.N    R1,??DataTable5_3  ;; 0x40048038
        STR      R0,[R1, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+2
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+315392
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
        B.N      ??adc_init_12
??adc_init_11:
        B.N      ??adc_init_13
//   69 
//   70   case ADC1:       /*   ADC1    */
//   71       SIM_SCGC3 |= (SIM_SCGC3_ADC1_MASK );
??adc_init_4:
        LDR.N    R0,??DataTable5_4  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable5_4  ;; 0x40048030
        STR      R0,[R1, #+0]
//   72       SIM_SOPT7 &= ~(SIM_SOPT7_ADC1ALTTRGEN_MASK  |SIM_SOPT7_ADC1PRETRGSEL_MASK) ;
        LDR.N    R0,??DataTable5_2  ;; 0x40048018
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x9000
        LDR.N    R1,??DataTable5_2  ;; 0x40048018
        STR      R0,[R1, #+0]
//   73       SIM_SOPT7 = SIM_SOPT7_ADC1TRGSEL(0);
        LDR.N    R0,??DataTable5_2  ;; 0x40048018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   74 
//   75       switch(ch)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        SUBS     R0,R0,#+4
        CMP      R0,#+3
        BLS.N    ??adc_init_14
        SUBS     R0,R0,#+4
        CMP      R0,#+1
        BLS.N    ??adc_init_15
        SUBS     R0,R0,#+2
        CMP      R0,#+3
        BLS.N    ??adc_init_16
        SUBS     R0,R0,#+4
        CMP      R0,#+1
        BLS.N    ??adc_init_17
        SUBS     R0,R0,#+3
        BEQ.N    ??adc_init_18
        B.N      ??adc_init_19
//   76       {
//   77       case AD4a:   //ADC1_SE4a -- PTE0
//   78       case AD5a:   //ADC1_SE5a -- PTE1
//   79       case AD6a:   //ADC1_SE6a -- PTE2
//   80       case AD7a:   //ADC1_SE7a -- PTE3
//   81           SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
??adc_init_14:
        LDR.N    R0,??DataTable5_3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.N    R1,??DataTable5_3  ;; 0x40048038
        STR      R0,[R1, #+0]
//   82           PORT_PCR_REG(PORTE_BASE_PTR, ch-AD4a+0) =  PORT_PCR_MUX(0);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+2
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+315392
        MOVS     R1,#+0
        STR      R1,[R0, #-16]
//   83           break;
        B.N      ??adc_init_20
//   84       case AD8:  //ADC1_SE8 -- PTB0
//   85       case AD9:  //ADC1_SE9 -- PTB1
//   86           SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_15:
        LDR.N    R0,??DataTable5_3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable5_3  ;; 0x40048038
        STR      R0,[R1, #+0]
//   87           PORT_PCR_REG(PORTB_BASE_PTR, ch-AD8+0) =  PORT_PCR_MUX(0);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+2
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+303104
        MOVS     R1,#+0
        STR      R1,[R0, #-32]
//   88           break;
        B.N      ??adc_init_20
//   89       case AD10:  //ADC1_SE10 -- PTB4
//   90       case AD11:  //ADC1_SE11 -- PTB5
//   91       case AD12:  //ADC1_SE12 -- PTB6
//   92       case AD13:  //ADC1_SE13 -- PTB7
//   93           SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_16:
        LDR.N    R0,??DataTable5_3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable5_3  ;; 0x40048038
        STR      R0,[R1, #+0]
//   94           PORT_PCR_REG(PORTB_BASE_PTR, ch-6) =  PORT_PCR_MUX(0);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+2
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+303104
        MOVS     R1,#+0
        STR      R1,[R0, #-24]
//   95           break;
        B.N      ??adc_init_20
//   96       case AD14:  //ADC1_SE14 -- PTB10
//   97       case AD15:  //ADC1_SE15 -- PTB11
//   98           SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_17:
        LDR.N    R0,??DataTable5_3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable5_3  ;; 0x40048038
        STR      R0,[R1, #+0]
//   99           PORT_PCR_REG(PORTB_BASE_PTR, ch-AD10+4) =  PORT_PCR_MUX(0);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+2
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+303104
        MOVS     R1,#+0
        STR      R1,[R0, #-24]
//  100           break;
        B.N      ??adc_init_20
//  101       case AD17:  //ADC1_SE17 -- PTA17
//  102           SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
??adc_init_18:
        LDR.N    R0,??DataTable5_3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??DataTable5_3  ;; 0x40048038
        STR      R0,[R1, #+0]
//  103           PORT_PCR_REG(PORTA_BASE_PTR, ch) =  PORT_PCR_MUX(0);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable5_5  ;; 0x40049000
        MOVS     R1,#+0
        STR      R1,[R0, R4, LSL #+2]
//  104           break;
        B.N      ??adc_init_20
//  105       default:
//  106           break;
//  107       }
//  108       break;
??adc_init_19:
??adc_init_20:
        B.N      ??adc_init_21
//  109   default:
//  110       break;
//  111   }
//  112 }
??adc_init_5:
??adc_init_21:
??adc_init_13:
        POP      {R0,R4,R5,PC}    ;; return
//  113 
//  114 
//  115 /*************************************************************************
//  116 *                             野火嵌入式开发工作室
//  117 *
//  118 *  函数名称：ad_once
//  119 *  功能说明：采集一次一路模拟量的AD值
//  120 *  参数说明：ADCn        模块号（ ADC0、 ADC1）
//  121 *            ADC_Channel 通道号
//  122 *            ADC_nbit    精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  123 *  函数返回：无符号结果值
//  124 *  修改时间：2012-2-10
//  125 *  备    注：参考苏州大学的例程，B通道不能软件触发！！！！  个人测试 在48Mbus下，AD转换一个次不到7us
//  126 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  127 u16 ad_once(ADCn adcn,ADC_Ch ch,ADC_nbit bit)  //采集某路模拟量的AD值
//  128 {
ad_once:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  129     u16 result = 0;
        MOVS     R0,#+0
//  130     ASSERT( ((adcn == ADC0) && (ch>=AD8 && ch<=AD18)) || ((adcn == ADC1)&& (ch>=AD4a && ch<=AD17)) ) ;   //使用断言检测ADCn_CHn是否正常
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??ad_once_0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R5,#+8
        CMP      R0,#+11
        BCC.N    ??ad_once_1
??ad_once_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??ad_once_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R5,#+4
        CMP      R0,#+14
        BCC.N    ??ad_once_1
??ad_once_2:
        MOVS     R1,#+130
        LDR.N    R0,??DataTable5
        BL       assert_failed
//  131 
//  132     adc_start(adcn, ch, bit);	  //启动ADC转换
??ad_once_1:
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       adc_start
//  133 
//  134     while (( ADC_SC1_REG(ADCx[adcn], A ) & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK);
??ad_once_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??ad_once_3
//  135     result = ADC_R_REG(ADCx[adcn],A);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+16]
//  136     ADC_SC1_REG(ADCx[adcn],A) &= ~ADC_SC1_COCO_MASK;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable5_6
        LDR      R1,[R1, R4, LSL #+2]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x80
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R2,??DataTable5_6
        LDR      R2,[R2, R4, LSL #+2]
        STR      R1,[R2, #+0]
//  137     return result;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4-R6,PC}       ;; return
//  138 }
//  139 
//  140 /*************************************************************************
//  141 *                             野火嵌入式开发工作室
//  142 *
//  143 *  函数名称：ad_mid
//  144 *  功能说明：采集三次一路模拟量的AD值，返回 中值
//  145 *  参数说明：ADCx        模块号（ ADC0、 ADC1）
//  146 *            ADC_Channel 通道号
//  147 *            ADC_nbit    精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  148 *  函数返回：无符号结果值
//  149 *  修改时间：2012-2-10
//  150 *  备    注：修改苏州大学的例程
//  151 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  152 u16 ad_mid(ADCn adcn,ADC_Ch ch,ADC_nbit bit)
//  153 {
ad_mid:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  154     u16 i,j,k,tmp;
//  155     ASSERT( ((adcn == ADC0) && (ch>=AD8 && ch<=AD18)) || ((adcn == ADC1)&& (ch>=AD4a && ch<=AD17)) ) ;   //使用断言检测ADCn_CHn是否正常
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??ad_mid_0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R5,#+8
        CMP      R0,#+11
        BCC.N    ??ad_mid_1
??ad_mid_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??ad_mid_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R5,#+4
        CMP      R0,#+14
        BCC.N    ??ad_mid_1
??ad_mid_2:
        MOVS     R1,#+155
        LDR.N    R0,??DataTable5
        BL       assert_failed
//  156 
//  157     //3次ADC转换
//  158     i = ad_once(adcn,ch,bit);
??ad_mid_1:
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        MOVS     R7,R0
//  159     j = ad_once(adcn,ch,bit);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        MOV      R8,R0
//  160     k = ad_once(adcn,ch,bit);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
//  161 
//  162     //取中值
//  163     tmp = i>j ? i:j;              //tmp取两者最大值
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R8,R7
        BCS.N    ??ad_mid_3
        MOV      R8,R7
        B.N      ??ad_mid_4
//  164     return k > tmp ?    tmp :  (   k>i  ?    k   :     i  );
??ad_mid_3:
??ad_mid_4:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R8,R0
        BCS.N    ??ad_mid_5
        MOV      R7,R8
        B.N      ??ad_mid_6
??ad_mid_5:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R7,R0
        BCS.N    ??ad_mid_7
        MOVS     R7,R0
        B.N      ??ad_mid_8
??ad_mid_7:
??ad_mid_8:
??ad_mid_6:
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4-R8,PC}       ;; return
//  165     //                k>tmp>i             tmp>k>i   tmp>i>k
//  166 }
//  167 
//  168 /*************************************************************************
//  169 *                             野火嵌入式开发工作室
//  170 *
//  171 *  函数名称：ad_ave
//  172 *  功能说明：多次采样，取平均值
//  173 *  参数说明：ADCx        模块号（ ADC0、 ADC1）
//  174 *            ADC_Channel 通道号
//  175 *            ADC_nbit    精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  176 *            N           均值滤波次数(范围:0~255)
//  177 *  函数返回：16位无符号结果值
//  178 *  修改时间：2012-2-10
//  179 *  备    注：修改苏州大学的例程
//  180 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  181 u16 ad_ave(ADCn adcn,ADC_Ch ch,ADC_nbit bit,u16 N) //均值滤波
//  182 {
ad_ave:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  183     u32 tmp = 0;
        MOVS     R8,#+0
//  184     u16  i;
//  185     ASSERT( ((adcn == ADC0) && (ch>=AD8 && ch<=AD18)) || ((adcn == ADC1)&& (ch>=AD4a && ch<=AD17)) ) ;   //使用断言检测ADCn_CHn是否正常
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??ad_ave_0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R5,#+8
        CMP      R0,#+11
        BCC.N    ??ad_ave_1
??ad_ave_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??ad_ave_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R5,#+4
        CMP      R0,#+14
        BCC.N    ??ad_ave_1
??ad_ave_2:
        MOVS     R1,#+185
        LDR.N    R0,??DataTable5
        BL       assert_failed
//  186 
//  187     for(i = 0; i < N; i++)
??ad_ave_1:
        MOVS     R9,#+0
        B.N      ??ad_ave_3
//  188         tmp += ad_once(adcn,ch,bit);
??ad_ave_4:
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        UXTAH    R8,R8,R0
        ADDS     R9,R9,#+1
??ad_ave_3:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R9,R7
        BCC.N    ??ad_ave_4
//  189     tmp = tmp / N;
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UDIV     R8,R8,R7
//  190     return (u16)tmp;
        MOV      R0,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R9,PC}    ;; return
//  191 }
//  192 
//  193 /*************************************************************************
//  194 *  函数名称：adc_start
//  195 *  功能说明：启动adc软件采样，B通道不能用于软件触发！！！！
//  196 *  参数说明：ADCx        模块号（ ADC0、 ADC1）
//  197 *            ADC_Channel 通道号
//  198 *            ADC_nbit    精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  199 *  函数返回：无
//  200 *  修改时间：2012-2-10
//  201 *  备    注：修改苏州大学的例程
//  202 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  203 void adc_start(ADCn adcn,ADC_Ch ch,ADC_nbit bit)
//  204 {
adc_start:
        PUSH     {R7,LR}
//  205 
//  206     Master_Adc_Config.STATUS1A = AIEN_ON | DIFF_SINGLE | ADC_SC1_ADCH( ch );
        ANDS     R1,R1,#0x1F
        ORRS     R1,R1,#0x40
        LDR.N    R3,??DataTable5_7
        STRB     R1,[R3, #+8]
//  207 
//  208     //初始化ADC默认配置
//  209     Master_Adc_Config.CONFIG1  = ADLPC_NORMAL
//  210                                  | ADC_CFG1_ADIV(ADIV_2)
//  211                                  | ADLSMP_LONG
//  212                                  | ADC_CFG1_MODE(bit)
//  213                                  | ADC_CFG1_ADICLK(ADICLK_BUS);
        LSLS     R1,R2,#+2
        ANDS     R1,R1,#0xC
        ORRS     R1,R1,#0x30
        LDR.N    R2,??DataTable5_7
        STRB     R1,[R2, #+0]
//  214     Master_Adc_Config.CONFIG2  = MUXSEL_ADCA    //MUXSEL_ADCA
//  215                                  | ADACKEN_DISABLED
//  216                                  | ADHSC_HISPEED
//  217                                  | ADC_CFG2_ADLSTS(ADLSTS_20) ;
        LDR.N    R1,??DataTable5_7
        MOVS     R2,#+4
        STRB     R2,[R1, #+1]
//  218 
//  219     Master_Adc_Config.COMPARE1 = 0x1234u ;                 //任意值
        LDR.N    R1,??DataTable5_7
        MOVW     R2,#+4660
        STRH     R2,[R1, #+2]
//  220     Master_Adc_Config.COMPARE2 = 0x5678u ;                 //任意值
        LDR.N    R1,??DataTable5_7
        MOVW     R2,#+22136
        STRH     R2,[R1, #+4]
//  221 
//  222     adc_config_alt(ADCx[adcn], &Master_Adc_Config);       // 配置 ADCn
        LDR.N    R1,??DataTable5_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_6
        LDR      R0,[R2, R0, LSL #+2]
        BL       adc_config_alt
//  223 }
        POP      {R0,PC}          ;; return
//  224 
//  225 /*************************************************************************
//  226 *                             野火嵌入式开发工作室
//  227 *
//  228 *  函数名称：adc_stop
//  229 *  功能说明：停止ADC转换
//  230 *  参数说明：ADCx        模块号（ ADC0、 ADC1）
//  231 *            ADC_Channel 通道号
//  232 *  函数返回：无
//  233 *  修改时间：2012-2-10
//  234 *  备    注：修改苏州大学的例程
//  235 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  236 void adc_stop(ADCn adcn)
//  237 {
adc_stop:
        PUSH     {R7,LR}
//  238     Master_Adc_Config.STATUS1A = AIEN_ON | DIFF_SINGLE | ADC_SC1_ADCH(Module_disabled);
        LDR.N    R1,??DataTable5_7
        MOVS     R2,#+95
        STRB     R2,[R1, #+8]
//  239     adc_config_alt(ADCx[adcn], &Master_Adc_Config);  // 配置ADC0
        LDR.N    R1,??DataTable5_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_6
        LDR      R0,[R2, R0, LSL #+2]
        BL       adc_config_alt
//  240 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     `?<Constant "C:\\\\Users\\\\Administrato...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x40048018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x40049000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     ADCx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     Master_Adc_Config
//  241 
//  242 
//  243 /*************************************************************************
//  244 *                             野火嵌入式开发工作室
//  245 *
//  246 *  函数名称：adc_config_alt
//  247 *  功能说明：将adc寄存器结构体配置进adc寄存器
//  248 *  参数说明：adcmap      adc基址寄存器地址（ADC0_BASE_PTR,ADC1_BASE_PTR）
//  249 *            ADC_CfgPtr  存放 寄存器值的结构体
//  250 *  函数返回：无
//  251 *  修改时间：2012-2-10
//  252 *  备    注：修改官方工程的例程
//  253 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  254 void adc_config_alt(ADC_MemMapPtr adcmap, tADC_ConfigPtr ADC_CfgPtr)
//  255 {
//  256     ADC_CFG1_REG(adcmap) = ADC_CfgPtr->CONFIG1;
adc_config_alt:
        LDRB     R2,[R1, #+0]
        STR      R2,[R0, #+8]
//  257     ADC_CFG2_REG(adcmap) = ADC_CfgPtr->CONFIG2;
        LDRB     R2,[R1, #+1]
        STR      R2,[R0, #+12]
//  258     ADC_CV1_REG(adcmap)  = ADC_CfgPtr->COMPARE1;
        LDRH     R2,[R1, #+2]
        STR      R2,[R0, #+24]
//  259     ADC_CV2_REG(adcmap)  = ADC_CfgPtr->COMPARE2;
        LDRH     R2,[R1, #+4]
        STR      R2,[R0, #+28]
//  260     ADC_SC2_REG(adcmap)  = ADC_CfgPtr->STATUS2;
        LDRB     R2,[R1, #+6]
        STR      R2,[R0, #+32]
//  261     ADC_SC3_REG(adcmap)  = ADC_CfgPtr->STATUS3;
        LDRB     R2,[R1, #+7]
        STR      R2,[R0, #+36]
//  262     ADC_PGA_REG(adcmap)  = ADC_CfgPtr->PGA;
        LDR      R2,[R1, #+12]
        STR      R2,[R0, #+80]
//  263     ADC_SC1_REG(adcmap,A)= ADC_CfgPtr->STATUS1A;
        LDRB     R2,[R1, #+8]
        STR      R2,[R0, #+0]
//  264     ADC_SC1_REG(adcmap,B)= ADC_CfgPtr->STATUS1B;
        LDRB     R1,[R1, #+9]
        STR      R1,[R0, #+4]
//  265 }
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "C:\\\\Users\\\\Administrato...">`:
        DATA
        DC8 43H, 3AH, 5CH, 55H, 73H, 65H, 72H, 73H
        DC8 5CH, 41H, 64H, 6DH, 69H, 6EH, 69H, 73H
        DC8 74H, 72H, 61H, 74H, 6FH, 72H, 5CH, 44H
        DC8 65H, 73H, 6BH, 74H, 6FH, 70H, 5CH, 4DH
        DC8 50H, 55H, 36H, 30H, 35H, 30H, 38H, 2EH
        DC8 31H, 32H, 5CH, 73H, 72H, 63H, 5CH, 64H
        DC8 72H, 69H, 76H, 65H, 72H, 73H, 5CH, 61H
        DC8 64H, 63H, 5CH, 61H, 64H, 63H, 2EH, 63H
        DC8 0
        DC8 0, 0, 0

        END
//  266 
//  267 
//  268 
// 
//    16 bytes in section .bss
//     8 bytes in section .data
//    68 bytes in section .rodata
// 1 050 bytes in section .text
// 
// 1 050 bytes of CODE  memory
//    68 bytes of CONST memory
//    24 bytes of DATA  memory
//
//Errors: none
//Warnings: none
