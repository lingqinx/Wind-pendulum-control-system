///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    03/Apr/2012  04:21:53 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\drivers\adc\adc.c   /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\drivers\adc\adc.c   /
//                    -lCN D:\workspace\myworkspace\SW_K60\build\ftm_demo\FLA /
//                    SH\List\ -lB D:\workspace\myworkspace\SW_K60\build\ftm_ /
//                    demo\FLASH\List\ -o D:\workspace\myworkspace\SW_K60\bui /
//                    ld\ftm_demo\FLASH\Obj\ --no_cse --no_unroll             /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0_3\arm\INC\c\DLib_Config_Normal.h" -I                /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\ -I   /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\common\ -I D:\workspace\myworkspace\SW_K60\build\ftm_ /
//                    demo\..\..\src\cpu\ -I D:\workspace\myworkspace\SW_K60\ /
//                    build\ftm_demo\..\..\src\drivers\ -I                    /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\drivers\gpio\ -I D:\workspace\myworkspace\SW_K60\buil /
//                    d\ftm_demo\..\..\src\drivers\wdog\ -I                   /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\drivers\mcg\ -I D:\workspace\myworkspace\SW_K60\build /
//                    \ftm_demo\..\..\src\drivers\uart\ -I                    /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\drivers\lptmr\ -I D:\workspace\myworkspace\SW_K60\bui /
//                    ld\ftm_demo\..\..\src\drivers\adc\ -I                   /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\drivers\exti\ -I D:\workspace\myworkspace\SW_K60\buil /
//                    d\ftm_demo\..\..\src\drivers\LED\ -I                    /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\drivers\fun\ -I D:\workspace\myworkspace\SW_K60\build /
//                    \ftm_demo\..\..\src\drivers\FTM\ -I                     /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\drivers\pit\ -I D:\workspace\myworkspace\SW_K60\build /
//                    \ftm_demo\..\..\src\platforms\ -I                       /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\projects\ -I D:\workspace\myworkspace\SW_K60\build\ft /
//                    m_demo\..\..\src\projects\ftm_demo\ -Ol                 /
//    List file    =  D:\workspace\myworkspace\SW_K60\build\ftm_demo\FLASH\Li /
//                    st\adc.s                                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME `adc`

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

// D:\workspace\myworkspace\SW_K60\src\drivers\adc\adc.c
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
        SUBS     R0,R4,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+11
        BCC.N    ??adc_init_1
??adc_init_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??adc_init_2
        SUBS     R0,R4,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
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
//   35         SIM_SOPT7 &= ~(SIM_SOPT7_ADC0ALTTRGEN_MASK  |SIM_SOPT7_ADC0PRETRGSEL_MASK);
        LDR.W    R0,??DataTable5_2  ;; 0x40048018
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x90
        LDR.W    R1,??DataTable5_2  ;; 0x40048018
        STR      R0,[R1, #+0]
//   36         SIM_SOPT7 = SIM_SOPT7_ADC0TRGSEL(0);        //选择pretrigger A
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
        MOV      R1,#+512
        ORRS     R0,R1,R0
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
        MOV      R1,#+512
        ORRS     R0,R1,R0
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
//  125 *  备    注：参考苏州大学的例程，B通道不能软件触发！！！！
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
        SUBS     R0,R5,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+11
        BCC.N    ??ad_once_1
??ad_once_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??ad_once_2
        SUBS     R0,R5,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
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
        SUBS     R0,R5,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+11
        BCC.N    ??ad_mid_1
??ad_mid_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??ad_mid_2
        SUBS     R0,R5,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
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
//  181 u16 ad_ave(ADCn adcn,ADC_Ch ch,ADC_nbit bit,u8 N) //均值滤波
//  182 {
ad_ave:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  183     u32 tmp = 0;
        MOVS     R8,#+0
//  184     u8  i;
//  185     ASSERT( ((adcn == ADC0) && (ch>=AD8 && ch<=AD18)) || ((adcn == ADC1)&& (ch>=AD4a && ch<=AD17)) ) ;   //使用断言检测ADCn_CHn是否正常
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??ad_ave_0
        SUBS     R0,R5,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+11
        BCC.N    ??ad_ave_1
??ad_ave_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??ad_ave_2
        SUBS     R0,R5,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
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
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R9,R7
        BCC.N    ??ad_ave_4
//  189     tmp = tmp / N;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UDIV     R8,R8,R7
//  190     return (u16)tmp;
        MOV      R0,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R9,PC}    ;; return
//  191 }
//  192 
//  193 /*************************************************************************
//  194 *                             野火嵌入式开发工作室
//  195 *
//  196 *  函数名称：adc_start
//  197 *  功能说明：启动adc软件采样，B通道不能用于软件触发！！！！
//  198 *  参数说明：ADCx        模块号（ ADC0、 ADC1）
//  199 *            ADC_Channel 通道号
//  200 *            ADC_nbit    精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  201 *  函数返回：无
//  202 *  修改时间：2012-2-10
//  203 *  备    注：修改苏州大学的例程
//  204 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  205 void adc_start(ADCn adcn,ADC_Ch ch,ADC_nbit bit)
//  206 {
adc_start:
        PUSH     {R7,LR}
//  207 
//  208     Master_Adc_Config.STATUS1A = AIEN_ON | DIFF_SINGLE | ADC_SC1_ADCH( ch );
        ANDS     R1,R1,#0x1F
        ORRS     R1,R1,#0x40
        LDR.N    R3,??DataTable5_7
        STRB     R1,[R3, #+8]
//  209 
//  210     //初始化ADC默认配置
//  211     Master_Adc_Config.CONFIG1  = ADLPC_NORMAL
//  212                                  | ADC_CFG1_ADIV(ADIV_4)
//  213                                  | ADLSMP_LONG
//  214                                  | ADC_CFG1_MODE(bit)
//  215                                  | ADC_CFG1_ADICLK(ADICLK_BUS);
        LSLS     R1,R2,#+2
        ANDS     R1,R1,#0xC
        ORRS     R1,R1,#0x50
        LDR.N    R2,??DataTable5_7
        STRB     R1,[R2, #+0]
//  216     Master_Adc_Config.CONFIG2  = MUXSEL_ADCA    //MUXSEL_ADCA
//  217                                  | ADACKEN_DISABLED
//  218                                  | ADHSC_HISPEED
//  219                                  | ADC_CFG2_ADLSTS(ADLSTS_20) ;
        LDR.N    R1,??DataTable5_7
        MOVS     R2,#+4
        STRB     R2,[R1, #+1]
//  220 
//  221     Master_Adc_Config.COMPARE1 = 0x1234u ;                 //任意值
        LDR.N    R1,??DataTable5_7
        MOVW     R2,#+4660
        STRH     R2,[R1, #+2]
//  222     Master_Adc_Config.COMPARE2 = 0x5678u ;                 //任意值
        LDR.N    R1,??DataTable5_7
        MOVW     R2,#+22136
        STRH     R2,[R1, #+4]
//  223 
//  224     adc_config_alt(ADCx[adcn], &Master_Adc_Config);       // 配置 ADCn
        LDR.N    R1,??DataTable5_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_6
        LDR      R0,[R2, R0, LSL #+2]
        BL       adc_config_alt
//  225 }
        POP      {R0,PC}          ;; return
//  226 
//  227 /*************************************************************************
//  228 *                             野火嵌入式开发工作室
//  229 *
//  230 *  函数名称：adc_stop
//  231 *  功能说明：停止ADC转换
//  232 *  参数说明：ADCx        模块号（ ADC0、 ADC1）
//  233 *            ADC_Channel 通道号
//  234 *  函数返回：无
//  235 *  修改时间：2012-2-10
//  236 *  备    注：修改苏州大学的例程
//  237 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  238 void adc_stop(ADCn adcn)
//  239 {
adc_stop:
        PUSH     {R7,LR}
//  240     Master_Adc_Config.STATUS1A = AIEN_ON | DIFF_SINGLE | ADC_SC1_ADCH(Module_disabled);
        LDR.N    R1,??DataTable5_7
        MOVS     R2,#+95
        STRB     R2,[R1, #+8]
//  241     adc_config_alt(ADCx[adcn], &Master_Adc_Config);  // 配置ADC0
        LDR.N    R1,??DataTable5_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_6
        LDR      R0,[R2, R0, LSL #+2]
        BL       adc_config_alt
//  242 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     `?<Constant "D:\\\\workspace\\\\myworksp...">`

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
//  243 
//  244 
//  245 /*************************************************************************
//  246 *                             野火嵌入式开发工作室
//  247 *
//  248 *  函数名称：adc_config_alt
//  249 *  功能说明：将adc寄存器结构体配置进adc寄存器
//  250 *  参数说明：adcmap      adc基址寄存器地址（ADC0_BASE_PTR,ADC1_BASE_PTR）
//  251 *            ADC_CfgPtr  存放 寄存器值的结构体
//  252 *  函数返回：无
//  253 *  修改时间：2012-2-10
//  254 *  备    注：修改官方工程的例程
//  255 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  256 void adc_config_alt(ADC_MemMapPtr adcmap, tADC_ConfigPtr ADC_CfgPtr)
//  257 {
//  258     ADC_CFG1_REG(adcmap) = ADC_CfgPtr->CONFIG1;
adc_config_alt:
        LDRB     R2,[R1, #+0]
        STR      R2,[R0, #+8]
//  259     ADC_CFG2_REG(adcmap) = ADC_CfgPtr->CONFIG2;
        LDRB     R2,[R1, #+1]
        STR      R2,[R0, #+12]
//  260     ADC_CV1_REG(adcmap)  = ADC_CfgPtr->COMPARE1;
        LDRH     R2,[R1, #+2]
        STR      R2,[R0, #+24]
//  261     ADC_CV2_REG(adcmap)  = ADC_CfgPtr->COMPARE2;
        LDRH     R2,[R1, #+4]
        STR      R2,[R0, #+28]
//  262     ADC_SC2_REG(adcmap)  = ADC_CfgPtr->STATUS2;
        LDRB     R2,[R1, #+6]
        STR      R2,[R0, #+32]
//  263     ADC_SC3_REG(adcmap)  = ADC_CfgPtr->STATUS3;
        LDRB     R2,[R1, #+7]
        STR      R2,[R0, #+36]
//  264     ADC_PGA_REG(adcmap)  = ADC_CfgPtr->PGA;
        LDR      R2,[R1, #+12]
        STR      R2,[R0, #+80]
//  265     ADC_SC1_REG(adcmap,A)= ADC_CfgPtr->STATUS1A;
        LDRB     R2,[R1, #+8]
        STR      R2,[R0, #+0]
//  266     ADC_SC1_REG(adcmap,B)= ADC_CfgPtr->STATUS1B;
        LDRB     R1,[R1, #+9]
        STR      R1,[R0, #+4]
//  267 }
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
`?<Constant "D:\\\\workspace\\\\myworksp...">`:
        DATA
        DC8 44H, 3AH, 5CH, 77H, 6FH, 72H, 6BH, 73H
        DC8 70H, 61H, 63H, 65H, 5CH, 6DH, 79H, 77H
        DC8 6FH, 72H, 6BH, 73H, 70H, 61H, 63H, 65H
        DC8 5CH, 53H, 57H, 5FH, 4BH, 36H, 30H, 5CH
        DC8 73H, 72H, 63H, 5CH, 64H, 72H, 69H, 76H
        DC8 65H, 72H, 73H, 5CH, 61H, 64H, 63H, 5CH
        DC8 61H, 64H, 63H, 2EH, 63H, 0
        DC8 0, 0

        END
//  268 
//  269 
//  270 
// 
//    16 bytes in section .bss
//     8 bytes in section .data
//    56 bytes in section .rodata
// 1 054 bytes in section .text
// 
// 1 054 bytes of CODE  memory
//    56 bytes of CONST memory
//    24 bytes of DATA  memory
//
//Errors: none
//Warnings: none
