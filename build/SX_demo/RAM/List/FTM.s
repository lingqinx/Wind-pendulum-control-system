///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  04:40:05 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\drivers\FTM\FTM.c   /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\drivers\FTM\FTM.c   /
//                    -lCN D:\workspace\myworkspace\SW_K60\build\SX_demo\RAM\ /
//                    List\ -lB D:\workspace\myworkspace\SW_K60\build\SX_demo /
//                    \RAM\List\ -o D:\workspace\myworkspace\SW_K60\build\SX_ /
//                    demo\RAM\Obj\ --no_cse --no_unroll --no_inline          /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0_3\arm\INC\c\DLib_Config_Normal.h" -I                /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\ -I    /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \common\ -I D:\workspace\myworkspace\SW_K60\build\SX_de /
//                    mo\..\..\src\cpu\ -I D:\workspace\myworkspace\SW_K60\bu /
//                    ild\SX_demo\..\..\src\drivers\ -I                       /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\gpio\ -I D:\workspace\myworkspace\SW_K60\build /
//                    \SX_demo\..\..\src\drivers\wdog\ -I                     /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\mcg\ -I D:\workspace\myworkspace\SW_K60\build\ /
//                    SX_demo\..\..\src\drivers\uart\ -I                      /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\lptmr\ -I D:\workspace\myworkspace\SW_K60\buil /
//                    d\SX_demo\..\..\src\drivers\LED\ -I                     /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\fun\ -I D:\workspace\myworkspace\SW_K60\build\ /
//                    SX_demo\..\..\src\drivers\FTM\ -I                       /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\pit\ -I D:\workspace\myworkspace\SW_K60\build\ /
//                    SX_demo\..\..\src\drivers\DIPswitch\ -I                 /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\steer\ -I D:\workspace\myworkspace\SW_K60\buil /
//                    d\SX_demo\..\..\src\drivers\ccd\ -I                     /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\dma\ -I D:\workspace\myworkspace\SW_K60\build\ /
//                    SX_demo\..\..\src\drivers\motor\ -I                     /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \platforms\ -I D:\workspace\myworkspace\SW_K60\build\SX /
//                    _demo\..\..\src\projects\ -I                            /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \projects\SX_demo\ -Ol                                  /
//    List file    =  D:\workspace\myworkspace\SW_K60\build\SX_demo\RAM\List\ /
//                    FTM.s                                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME FTM

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed
        EXTERN assert_failed_rst
        EXTERN bus_clk_khz
        EXTERN disable_irq
        EXTERN enable_irq

        PUBLIC FTM_Input_init
        PUBLIC FTM_PWM_Duty
        PUBLIC FTM_PWM_freq
        PUBLIC FTM_PWM_init
        PUBLIC FTM_QUAD_DIR_init
        PUBLIC FTM_QUAD_init
        PUBLIC FTM_init
        PUBLIC FTM_irq_DIS
        PUBLIC FTM_irq_EN
        PUBLIC FTMx

// D:\workspace\myworkspace\SW_K60\src\drivers\FTM\FTM.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程                                        
//    4 * 文件名 :[FTM.c] 
//    5 * 描  述 ：FTM定时器
//    6 * 原创   ：野火嵌入式开发工作室
//    7 *设计改进：snowwolf
//    8 *  Email ：snowwolf2012@qq.com
//    9 *最后更新：2012-04-03
//   10 * 说  明 ：本模块包含：FTM计时，PWM波，输出比较，输入捕捉，正交解码，
//   11             测速等功能
//   12 ***********************************************************************
//   13 */
//   14 #include "common.h"
//   15 #include  "FTM.h"
//   16 
//   17 
//   18 /*********** FTMn_CHn PWM输出初始化函数 ***********/
//   19 /*
//   20 引脚配置见 driver_cfg.h
//   21 */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   22 volatile struct FTM_MemMap *FTMx[3]={FTM0_BASE_PTR,FTM1_BASE_PTR,FTM2_BASE_PTR}; 
FTMx:
        DATA
        DC32 40038000H, 40039000H, 400B8000H
//   23 //定义三个指针数组保存 FTMn 的地址
//   24 
//   25 
//   26 /*************************************************************************
//   27 *  函数名称：FTM_init
//   28 *  功能说明：设置FTM的时钟中断频率
//   29 *  参数说明：FTMn        模块号（FTM0、  FTM1、  FTM2）
//   30 *            freq        中断频率（单位为Hz）
//   31 *  函数返回：无
//   32 *  修改时间：2012-2-14
//   33 *  备    注：同一个FTM，频率是一样的，共3个FTM，即可以输出3个不同频率
//   34              在48Mbus下 最低6Hz ps = 128分频  mod = 65535 
//   35                         最高24M 这时mod = 1;            
//   36 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   37 void FTM_init(FTMn ftmn,u32 freq)                   //设置FTM的频率
//   38 {
FTM_init:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   39     u32 clk_hz = (bus_clk_khz*1000);                //bus频率
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MUL      R6,R1,R0
//   40     u32 mod;
//   41     u8 sc_ps;
//   42 
//   43     ASSERT( ftmn==FTM0 ||ftmn==FTM1 || ftmn==FTM2 ); 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FTM_init_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??FTM_init_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??FTM_init_0
        MOVS     R1,#+43
        LDR.W    R0,??DataTable8_1
        BL       assert_failed
//   44     //用断言检测 频率 是否正常 ,频率必须小于时钟二分之一  >>7>>16 最大为总线/65535/128
//   45     ASSERT_RST( (freq <= (clk_hz/2) && freq >(clk_hz>>23)),"FTM频率配置错误" );
??FTM_init_0:
        LSRS     R0,R6,#+1
        CMP      R0,R5
        BCC.N    ??FTM_init_1
        LSRS     R0,R6,#+23
        CMP      R0,R5
        BCC.N    ??FTM_init_2
??FTM_init_1:
        LDR.W    R2,??DataTable8_2
        MOVS     R1,#+45
        LDR.W    R0,??DataTable8_1
        BL       assert_failed_rst
//   46 
//   47     /*       计算频率设置        */
//   48     mod= (clk_hz>>16 )/freq ;
??FTM_init_2:
        LSRS     R0,R6,#+16
        UDIV     R8,R0,R5
//   49     for(sc_ps=0;(mod>>sc_ps)>=1;sc_ps++);           //求sc_ps的最小值
        MOVS     R7,#+0
        B.N      ??FTM_init_3
??FTM_init_4:
        ADDS     R7,R7,#+1
??FTM_init_3:
        LSRS     R0,R8,R7
        CMP      R0,#+0
        BNE.N    ??FTM_init_4
//   50     mod=(clk_hz>>sc_ps)/freq - 1;
        LSRS     R0,R6,R7
        UDIV     R0,R0,R5
        SUBS     R8,R0,#+1
//   51     
//   52     ASSERT( sc_ps < 8);                             //用断言检测，保证ps最大为7        
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+8
        BCC.N    ??FTM_init_5
        MOVS     R1,#+52
        LDR.W    R0,??DataTable8_1
        BL       assert_failed
//   53 
//   54     switch(ftmn)
??FTM_init_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FTM_init_6
        CMP      R4,#+2
        BEQ.N    ??FTM_init_7
        BCC.N    ??FTM_init_8
        B.N      ??FTM_init_9
//   55     {
//   56     case FTM0:
//   57         SIM_SCGC6|=SIM_SCGC6_FTM0_MASK;             //使能FTM0时钟
??FTM_init_6:
        LDR.W    R0,??DataTable8_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable8_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   58         break;
        B.N      ??FTM_init_10
//   59     case FTM1:
//   60         SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;            //使能FTM1时钟
??FTM_init_8:
        LDR.W    R0,??DataTable8_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   61         break;
        B.N      ??FTM_init_10
//   62     case FTM2:
//   63         SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;            //使能FTM2时钟
??FTM_init_7:
        LDR.W    R0,??DataTable8_4  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable8_4  ;; 0x40048030
        STR      R0,[R1, #+0]
//   64         break;
        B.N      ??FTM_init_10
//   65     default:
//   66         break;
//   67     }
//   68         
//   69     FTM_CNT_REG(FTMx[ftmn])   =0;  
??FTM_init_9:
??FTM_init_10:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//   70     FTM_MOD_REG(FTMx[ftmn])   = FTM_MOD_MOD(mod);  //Modulo value模数, EPWM的周期为 ：MOD - CNTIN + 0x0001
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        UXTH     R1,R8            ;; ZeroExt  R1,R8,#+16,#+16
        STR      R1,[R0, #+8]
//   71     FTM_CNTIN_REG(FTMx[ftmn]) =0;                  //Counter Initial Value 计数器初始化值
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVS     R1,#+0
        STR      R1,[R0, #+76]
//   72     
//   73     /******************** 配置时钟和分频 ********************/
//   74     //SC  bit7:TOF Timer Overflow Flag
//   75     FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_TOF_MASK;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//   76     //bit5:CPWMS  0 FTM counter operates in up counting mode.
//   77                 //1 FTM counter operates in up-down counting mode.
//   78     FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_CPWMS_MASK;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//   79     FTM_SC_REG(FTMx[ftmn])   |= (FTM_SC_PS(sc_ps) | FTM_SC_CLKS(1));  //没有使能溢出中断
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ANDS     R1,R7,#0x7
        ORRS     R1,R1,#0x8
        ORRS     R0,R1,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//   80     //FTM_CnV_REG(FTMx[ftmn],ch)= 0;                // Channel (n) Value  。设置脉冲宽度：(CnV - CNTIN).
//   81 }
        POP      {R4-R8,PC}       ;; return
//   82 
//   83 /*************************************************************************
//   84 *  函数名称：FTM_PWM_init
//   85 *  功能说明：初始化FTM的PWM功能并设置频率、占空比。设置通道输出占空比。
//   86 *  参数说明：FTMn        模块号（FTM0、  FTM1、  FTM2）
//   87 *            CHn         通道号（CH0~CH7）
//   88 *            freq        频率（单位为Hz）
//   89 *            duty        占空比
//   90 *  函数返回：无
//   91 *  修改时间：2012-2-14
//   92 *  备    注：同一个FTM，各通道的PWM频率是一样的，共3个FTM，即可以输出3个不同频率PWM
//   93 *             通道占空比,占空比为 （duty * 精度） % ，
//   94 *             如果 FTM_PRECISON 定义为 1000 ，duty = 100 ，
//   95 *             则占空比 100*0.1%=10%
//   96 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   97 void FTM_PWM_init(FTMn ftmn,CHn ch,u32 freq,u32 duty)
//   98 {      	
FTM_PWM_init:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//   99     u32 clk_hz = (bus_clk_khz*1000);              //bus频率
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MUL      R8,R1,R0
//  100     u32 mod;
//  101     u8 sc_ps;
//  102     u32 cv;
//  103 
//  104     ASSERT( (ftmn==FTM0) || ( (ftmn==FTM1 || ftmn==FTM2 ) &&(ch<=CH1)) );   //检查传递进来的通道是否正确
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FTM_PWM_init_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??FTM_PWM_init_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??FTM_PWM_init_2
??FTM_PWM_init_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BCC.N    ??FTM_PWM_init_0
??FTM_PWM_init_2:
        MOVS     R1,#+104
        LDR.W    R0,??DataTable8_1
        BL       assert_failed
//  105     
//  106     //用断言检测 频率 是否正常 ,频率必须小于时钟二分之一  >>7>>16 最大为总线/65535/128
//  107     ASSERT_RST( (freq <= (clk_hz/2) && freq >(clk_hz>>23)),"FTM频率配置错误" );
??FTM_PWM_init_0:
        LSRS     R0,R8,#+1
        CMP      R0,R6
        BCC.N    ??FTM_PWM_init_3
        LSRS     R0,R8,#+23
        CMP      R0,R6
        BCC.N    ??FTM_PWM_init_4
??FTM_PWM_init_3:
        LDR.W    R2,??DataTable8_2
        MOVS     R1,#+107
        LDR.W    R0,??DataTable8_1
        BL       assert_failed_rst
//  108     
//  109     /*       计算频率设置        */
//  110     mod= (clk_hz>>16 )/freq;
??FTM_PWM_init_4:
        LSRS     R0,R8,#+16
        UDIV     R1,R0,R6
//  111     for(sc_ps=0;(mod>>sc_ps)>=1;sc_ps++);         //求sc_ps的最小值
        MOVS     R0,#+0
        B.N      ??FTM_PWM_init_5
??FTM_PWM_init_6:
        ADDS     R0,R0,#+1
??FTM_PWM_init_5:
        LSRS     R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??FTM_PWM_init_6
//  112     mod=(clk_hz>>sc_ps)/freq - 1;                 //求出分频后mod小于65535
        LSRS     R1,R8,R0
        UDIV     R1,R1,R6
        SUBS     R1,R1,#+1
//  113 
//  114     cv = (duty*(mod-0+1))/FTM_PRECISON;           //EPWM的周期 ：MOD - CNTIN + 0x0001   (CNTIN 设为0)
        ADDS     R2,R1,#+1
        MUL      R2,R2,R7
        MOVW     R3,#+10000
        UDIV     R2,R2,R3
//  115                                                   //脉冲宽度：CnV - CNTIN
//  116                                                   //FTM_PRECISON 是精度
//  117 
//  118     /******************* 开启时钟 和 复用IO口*******************/
//  119     //注，这里代码虽然长，但编译时会删掉很多没用的部分，不影响速度
//  120     switch(ftmn)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FTM_PWM_init_7
        CMP      R4,#+2
        BEQ.W    ??FTM_PWM_init_8
        BCC.W    ??FTM_PWM_init_9
        B.N      ??FTM_PWM_init_10
//  121     {
//  122     case FTM0:
//  123         SIM_SCGC6|=SIM_SCGC6_FTM0_MASK;                             //使能FTM0时钟
??FTM_PWM_init_7:
        LDR.W    R3,??DataTable8_3  ;; 0x4004803c
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1000000
        LDR.W    R6,??DataTable8_3  ;; 0x4004803c
        STR      R3,[R6, #+0]
//  124         switch(ch)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FTM_PWM_init_11
        CMP      R5,#+2
        BEQ.N    ??FTM_PWM_init_12
        BCC.N    ??FTM_PWM_init_13
        CMP      R5,#+4
        BEQ.N    ??FTM_PWM_init_14
        BCC.N    ??FTM_PWM_init_15
        CMP      R5,#+6
        BEQ.N    ??FTM_PWM_init_16
        BCC.N    ??FTM_PWM_init_17
        CMP      R5,#+7
        BEQ.N    ??FTM_PWM_init_18
        B.N      ??FTM_PWM_init_19
//  125         {
//  126         case CH0:
//  127             if(FTM0_CH0==PTC1)
//  128             {
//  129                 SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
??FTM_PWM_init_11:
        LDR.W    R3,??DataTable8_6  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x800
        LDR.W    R6,??DataTable8_6  ;; 0x40048038
        STR      R3,[R6, #+0]
//  130                 PORT_PCR_REG(PORTC_BASE_PTR, 1) = PORT_PCR_MUX(4);  // PTC1
        LDR.W    R3,??DataTable8_7  ;; 0x4004b004
        MOV      R6,#+1024
        STR      R6,[R3, #+0]
//  131             }
//  132             /*不建议使用PTA3
//  133             else if(FTM0_CH0==PTA3)
//  134             {
//  135                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  136                 PORT_PCR_REG(PORTA_BASE_PTR, 3) = PORT_PCR_MUX(3);  // PTA3
//  137             }
//  138             else
//  139             {
//  140                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  141             }
//  142             */
//  143             break;
//  144 
//  145         case CH1:
//  146             if(FTM0_CH1==PTC2)
//  147             {
//  148                 SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
//  149                 PORT_PCR_REG(PORTC_BASE_PTR, 2) = PORT_PCR_MUX(4);  // PTC2
//  150             }
//  151             else if(FTM0_CH1==PTA4)
//  152             {
//  153                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  154                 PORT_PCR_REG(PORTA_BASE_PTR, 4) = PORT_PCR_MUX(3);  // PTA4
//  155             }
//  156             else
//  157             {
//  158                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  159             }
//  160             break;
//  161 
//  162         case CH2:
//  163             if(FTM0_CH2==PTC3)
//  164             {
//  165                 SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
//  166                 PORT_PCR_REG(PORTC_BASE_PTR, 3) = PORT_PCR_MUX(4);  // PTC3
//  167             }
//  168             else if(FTM0_CH2==PTA5)
//  169             {
//  170                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  171                 PORT_PCR_REG(PORTA_BASE_PTR, 5) = PORT_PCR_MUX(3);  // PTA5
//  172             }
//  173             else
//  174             {
//  175                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  176             }
//  177             break;
//  178 
//  179         case CH3:
//  180             if(FTM0_CH3==PTC4)
//  181             {
//  182                 SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
//  183                 PORT_PCR_REG(PORTC_BASE_PTR, 4) = PORT_PCR_MUX(4);  // PTC4
//  184             }
//  185 #if K60PIN == 144u
//  186             else if(FTM0_CH3==PTA6)
//  187             {
//  188                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  189                 PORT_PCR_REG(PORTA_BASE_PTR, 6) = PORT_PCR_MUX(3);  // PTA6
//  190             }
//  191 #endif
//  192             else
//  193             {
//  194                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  195             }
//  196             break;
//  197 
//  198         case CH4:
//  199             if(FTM0_CH4==PTD4)
//  200             {
//  201                 SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
//  202                 PORT_PCR_REG(PORTD_BASE_PTR, 4) = PORT_PCR_MUX(4);  // PTD4
//  203             }
//  204 #if K60PIN == 144u
//  205             else if(FTM0_CH4==PTA7)
//  206             {
//  207                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  208                 PORT_PCR_REG(PORTA_BASE_PTR, 7) = PORT_PCR_MUX(3);  // PTA7
//  209             }
//  210 #endif
//  211             else
//  212             {
//  213                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  214             }
//  215             break;
//  216 
//  217         case CH5:
//  218             if(FTM0_CH5==PTD5)
//  219             {
//  220                 SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
//  221                 PORT_PCR_REG(PORTD_BASE_PTR, 5) = PORT_PCR_MUX(4);  // PTD5
//  222             }
//  223             /*不建议使用PTA0
//  224             else if(FTM0_CH5==PTA0)
//  225             {
//  226                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  227                 PORT_PCR_REG(PORTA_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTA0
//  228             }
//  229             */
//  230             else
//  231             {
//  232                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  233             }
//  234             break;
//  235 
//  236         case CH6:
//  237             if(FTM0_CH6==PTD6)
//  238             {
//  239                 SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
//  240                 PORT_PCR_REG(PORTD_BASE_PTR, 6) = PORT_PCR_MUX(4);  // PTD6
//  241             }
//  242             /*不建议使用PTA1
//  243             else if(FTM0_CH6==PTA1)
//  244             {
//  245                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  246                 PORT_PCR_REG(PORTA_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTA1
//  247             }
//  248             */
//  249             else
//  250             {
//  251                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  252             }
//  253             break;
//  254 
//  255         case CH7:
//  256             if(FTM0_CH7==PTD7)
//  257             {
//  258                 SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
//  259                 PORT_PCR_REG(PORTD_BASE_PTR, 7) = PORT_PCR_MUX(4);  // PTD7
//  260             }
//  261             /*不建议使用PTA2
//  262             else if(FTM0_CH7==PTA2)
//  263             {
//  264                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  265                 PORT_PCR_REG(PORTA_BASE_PTR, 2) = PORT_PCR_MUX(3);  // PTA2
//  266             }
//  267             */
//  268             else
//  269             {
//  270                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  271             }
//  272             break;
//  273         default:
//  274             return;
//  275         }
//  276         break;
??FTM_PWM_init_20:
        B.N      ??FTM_PWM_init_21
??FTM_PWM_init_13:
        LDR.W    R3,??DataTable8_6  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x800
        LDR.W    R6,??DataTable8_6  ;; 0x40048038
        STR      R3,[R6, #+0]
        LDR.W    R3,??DataTable8_8  ;; 0x4004b008
        MOV      R6,#+1024
        STR      R6,[R3, #+0]
        B.N      ??FTM_PWM_init_20
??FTM_PWM_init_12:
        LDR.W    R3,??DataTable8_6  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x800
        LDR.W    R6,??DataTable8_6  ;; 0x40048038
        STR      R3,[R6, #+0]
        LDR.W    R3,??DataTable8_9  ;; 0x4004b00c
        MOV      R6,#+1024
        STR      R6,[R3, #+0]
        B.N      ??FTM_PWM_init_20
??FTM_PWM_init_15:
        LDR.W    R3,??DataTable8_6  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x800
        LDR.W    R6,??DataTable8_6  ;; 0x40048038
        STR      R3,[R6, #+0]
        LDR.W    R3,??DataTable8_10  ;; 0x4004b010
        MOV      R6,#+1024
        STR      R6,[R3, #+0]
        B.N      ??FTM_PWM_init_20
??FTM_PWM_init_14:
        LDR.W    R3,??DataTable8_6  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1000
        LDR.W    R6,??DataTable8_6  ;; 0x40048038
        STR      R3,[R6, #+0]
        LDR.W    R3,??DataTable8_11  ;; 0x4004c010
        MOV      R6,#+1024
        STR      R6,[R3, #+0]
        B.N      ??FTM_PWM_init_20
??FTM_PWM_init_17:
        LDR.W    R3,??DataTable8_6  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1000
        LDR.W    R6,??DataTable8_6  ;; 0x40048038
        STR      R3,[R6, #+0]
        LDR.W    R3,??DataTable8_12  ;; 0x4004c014
        MOV      R6,#+1024
        STR      R6,[R3, #+0]
        B.N      ??FTM_PWM_init_20
??FTM_PWM_init_16:
        LDR.W    R3,??DataTable8_6  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1000
        LDR.W    R6,??DataTable8_6  ;; 0x40048038
        STR      R3,[R6, #+0]
        LDR.W    R3,??DataTable8_13  ;; 0x4004c018
        MOV      R6,#+1024
        STR      R6,[R3, #+0]
        B.N      ??FTM_PWM_init_20
??FTM_PWM_init_18:
        LDR.W    R3,??DataTable8_6  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1000
        LDR.W    R6,??DataTable8_6  ;; 0x40048038
        STR      R3,[R6, #+0]
        LDR.W    R3,??DataTable8_14  ;; 0x4004c01c
        MOV      R6,#+1024
        STR      R6,[R3, #+0]
        B.N      ??FTM_PWM_init_20
??FTM_PWM_init_19:
        B.N      ??FTM_PWM_init_22
//  277 
//  278   case FTM1:
//  279         SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                             //使能FTM1时钟
??FTM_PWM_init_9:
        LDR.W    R3,??DataTable8_3  ;; 0x4004803c
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x2000000
        LDR.W    R6,??DataTable8_3  ;; 0x4004803c
        STR      R3,[R6, #+0]
//  280         switch(ch)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FTM_PWM_init_23
        CMP      R5,#+1
        BEQ.N    ??FTM_PWM_init_24
        B.N      ??FTM_PWM_init_25
//  281         {
//  282         case CH0:
//  283 #if K60PIN == 144u
//  284             if(FTM1_CH0==PTA8)
//  285             {
//  286                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  287                 PORT_PCR_REG(PORTA_BASE_PTR, 8) = PORT_PCR_MUX(3);  // PTA8
//  288             }
//  289             else 
//  290 #endif            
//  291             if(FTM1_CH0==PTA12)
//  292             {
//  293                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
??FTM_PWM_init_23:
        LDR.W    R3,??DataTable8_6  ;; 0x40048038
        LDR      R3,[R3, #+0]
        MOV      R6,#+512
        ORRS     R3,R6,R3
        LDR.W    R6,??DataTable8_6  ;; 0x40048038
        STR      R3,[R6, #+0]
//  294                 PORT_PCR_REG(PORTA_BASE_PTR, 12) = PORT_PCR_MUX(3);  // PTA12
        LDR.W    R3,??DataTable8_15  ;; 0x40049030
        MOV      R6,#+768
        STR      R6,[R3, #+0]
//  295             }
//  296             else if(FTM1_CH0==PTB0)
//  297             {
//  298                 SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//  299                 PORT_PCR_REG(PORTB_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTB0
//  300             }
//  301             else
//  302             {
//  303                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  304             }
//  305             break;
//  306 
//  307 
//  308         case CH1:
//  309 #if K60PIN == 144u
//  310             if(FTM1_CH1==PTA9)
//  311             {
//  312                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  313                 PORT_PCR_REG(PORTA_BASE_PTR, 9) = PORT_PCR_MUX(3);  // PTA9
//  314             }
//  315             else 
//  316 #endif  
//  317             if(FTM1_CH1==PTA13)
//  318             {
//  319                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  320                 PORT_PCR_REG(PORTA_BASE_PTR, 13) = PORT_PCR_MUX(3);  // PTA13
//  321             }
//  322             else if(FTM1_CH1==PTB1)
//  323             {
//  324                 SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//  325                 PORT_PCR_REG(PORTB_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTB1
//  326             }
//  327             else
//  328             {
//  329                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  330             }
//  331             break;
//  332 
//  333         default:
//  334             return;
//  335         }
//  336         break;
??FTM_PWM_init_26:
        B.N      ??FTM_PWM_init_21
??FTM_PWM_init_24:
        LDR.W    R3,??DataTable8_6  ;; 0x40048038
        LDR      R3,[R3, #+0]
        MOV      R6,#+512
        ORRS     R3,R6,R3
        LDR.W    R6,??DataTable8_6  ;; 0x40048038
        STR      R3,[R6, #+0]
        LDR.W    R3,??DataTable8_16  ;; 0x40049034
        MOV      R6,#+768
        STR      R6,[R3, #+0]
        B.N      ??FTM_PWM_init_26
??FTM_PWM_init_25:
        B.N      ??FTM_PWM_init_22
//  337   case FTM2:
//  338         SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //使能FTM2时钟
??FTM_PWM_init_8:
        LDR.W    R3,??DataTable8_4  ;; 0x40048030
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1000000
        LDR.W    R6,??DataTable8_4  ;; 0x40048030
        STR      R3,[R6, #+0]
//  339         switch(ch)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FTM_PWM_init_27
        CMP      R5,#+1
        BEQ.N    ??FTM_PWM_init_28
        B.N      ??FTM_PWM_init_29
//  340         {
//  341         case CH0:
//  342 #if K60PIN == 144u
//  343             if(FTM2_CH0==PTA10)
//  344             {
//  345                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  346                 PORT_PCR_REG(PORTA_BASE_PTR, 10) = PORT_PCR_MUX(3);  // PTA10
//  347             }
//  348             else 
//  349 #endif            
//  350             if(FTM2_CH0==PTB18)
//  351             {
//  352                 SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??FTM_PWM_init_27:
        LDR.W    R3,??DataTable8_6  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x400
        LDR.W    R6,??DataTable8_6  ;; 0x40048038
        STR      R3,[R6, #+0]
//  353                 PORT_PCR_REG(PORTB_BASE_PTR, 18) = PORT_PCR_MUX(3);  // PTB18
        LDR.W    R3,??DataTable8_17  ;; 0x4004a048
        MOV      R6,#+768
        STR      R6,[R3, #+0]
//  354             }
//  355             else
//  356             {
//  357                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  358             }
//  359             break;
//  360 
//  361         case CH1:
//  362 #if K60PIN == 144u
//  363             if(FTM2_CH1==PTA11)
//  364             {
//  365                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  366                 PORT_PCR_REG(PORTA_BASE_PTR, 11) = PORT_PCR_MUX(3);  // PTA11
//  367             }
//  368             else 
//  369 #endif             
//  370             if(FTM2_CH1==PTB19)
//  371             {
//  372                 SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//  373                 PORT_PCR_REG(PORTB_BASE_PTR, 19) = PORT_PCR_MUX(3);  // PTB19
//  374             }
//  375             else
//  376             {
//  377                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  378             }
//  379             break;
//  380 
//  381         default:
//  382             return;
//  383         }
//  384         break;
??FTM_PWM_init_30:
        B.N      ??FTM_PWM_init_21
??FTM_PWM_init_28:
        LDR.W    R3,??DataTable8_6  ;; 0x40048038
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x400
        LDR.W    R6,??DataTable8_6  ;; 0x40048038
        STR      R3,[R6, #+0]
        LDR.W    R3,??DataTable8_18  ;; 0x4004a04c
        MOV      R6,#+768
        STR      R6,[R3, #+0]
        B.N      ??FTM_PWM_init_30
??FTM_PWM_init_29:
        B.N      ??FTM_PWM_init_22
//  385   default:
//  386         break;
//  387     }
//  388     /******************** 选择输出模式为 边沿对齐PWM *******************/
//  389     //通道状态控制，根据模式来选择 边沿或电平
//  390     FTM_CnSC_REG(FTMx[ftmn],ch) &= ~FTM_CnSC_ELSA_MASK;
??FTM_PWM_init_10:
??FTM_PWM_init_21:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R3,??DataTable8_5
        LDR      R3,[R3, R4, LSL #+2]
        ADDS     R3,R3,R5, LSL #+3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R6,??DataTable8_5
        LDR      R6,[R6, R4, LSL #+2]
        ADDS     R6,R6,R5, LSL #+3
        LDR      R6,[R6, #+12]
        BICS     R6,R6,#0x4
        STR      R6,[R3, #+12]
//  391     FTM_CnSC_REG(FTMx[ftmn],ch) = FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R3,??DataTable8_5
        LDR      R3,[R3, R4, LSL #+2]
        ADDS     R3,R3,R5, LSL #+3
        MOVS     R6,#+40
        STR      R6,[R3, #+12]
//  392     //MSnB:MSnA = 1x
//  393     // ELSnB:ELSnA = 10   High-true pulses  (clear Output on match)
//  394     // ELSnB:ELSnA = 11   Low-true pulses   (set Output on match)
//  395     // Edge-aligned PWM  边沿对齐PWM波   《k16 reference manual.pdf》  P944  或者  《K60P144M100SF2RM.pdf》P1001
//  396 
//  397     FTM_CNT_REG(FTMx[ftmn])   = 0;     
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R3,??DataTable8_5
        LDR      R3,[R3, R4, LSL #+2]
        MOVS     R6,#+0
        STR      R6,[R3, #+4]
//  398     FTM_MOD_REG(FTMx[ftmn])   = FTM_MOD_MOD(mod);                                                     //Modulo value模数, EPWM的周期为 ：MOD - CNTIN + 0x0001
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R3,??DataTable8_5
        LDR      R3,[R3, R4, LSL #+2]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R3, #+8]
//  399     FTM_CNTIN_REG(FTMx[ftmn]) = 0;                                                       //Counter Initial Value 计数器初始化值
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        MOVS     R3,#+0
        STR      R3,[R1, #+76]
//  400     FTM_CnV_REG(FTMx[ftmn],ch)= FTM_CnV_VAL(cv);                                                      // Channel (n) Value  。设置脉冲宽度：(CnV - CNTIN).
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        ADDS     R1,R1,R5, LSL #+3
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R1, #+16]
//  401  
//  402     /******************** 配置时钟和分频 ********************/
//  403     FTM_SC_REG(FTMx[ftmn])   |= (FTM_SC_PS(sc_ps) | FTM_SC_CLKS(1));  //没有使能溢出中断
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        ORRS     R0,R0,#0x8
        ORRS     R0,R0,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//  404     FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_CPWMS_MASK;                                                  
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//  405                                                        //计数器。只有低16位可用
//  406     /*
//  407     FTM_SC_CPWMS_MASK：Center-aligned PWM Select 中心对齐PWM选择
//  408       0    FTM counter operates in up counting mode.      向上计数
//  409       1    FTM counter operates in up-down counting mode. 上下计数
//  410 
//  411     FTM_SC_PS：Prescale Factor Selection 预分频因子选择
//  412                            | 
//  413       000    Divide by 1   |      
//  414       001    Divide by 2   |    
//  415       010    Divide by 4   |    
//  416       011    Divide by 8   |    
//  417       100    Divide by 16  |    
//  418       101    Divide by 32  |   
//  419       110    Divide by 64  |
//  420       111    Divide by 128 |
//  421 
//  422     FTM_SC_CLKS：Clock Source Selection 时钟源选择
//  423       00    No clock selected (This in effect disables the FTM counter.)
//  424       01    System clock
//  425       10    Fixed frequency clock
//  426       11    External clock
//  427   */
//  428 }
??FTM_PWM_init_22:
        POP      {R4-R8,PC}       ;; return
//  429 /*************************************************************************
//  430 *  函数名称：FTM_PWM_Duty
//  431 *  功能说明：设置通道占空比
//  432 *  参数说明：FTMn        模块号（FTM0、  FTM1、  FTM2）
//  433 *            CHn         通道号（CH0~CH7）
//  434 *            duty        占空比
//  435 *  函数返回：无
//  436 *  修改时间：2012-2-14
//  437 *  备    注：设置通道占空比,占空比为 （duty * 精度） % ，
//  438 *             如果 FTM_PRECISON 定义为 1000 ，duty = 100 ，
//  439 *             则占空比 100*0.1%=10%
//  440 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  441 void FTM_PWM_Duty(FTMn ftmn,CHn ch, u32 duty)
//  442 {
FTM_PWM_Duty:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  443     u32 cv;
//  444     u32 mod;
//  445 
//  446     ASSERT( (ftmn==FTM0) || ( (ftmn==FTM1 || ftmn==FTM2 ) &&(ch<=CH1)) );   //检查传递进来的通道是否正确
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FTM_PWM_Duty_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??FTM_PWM_Duty_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??FTM_PWM_Duty_2
??FTM_PWM_Duty_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BCC.N    ??FTM_PWM_Duty_0
??FTM_PWM_Duty_2:
        MOV      R1,#+446
        LDR.W    R0,??DataTable8_1
        BL       assert_failed
//  447     ASSERT_RST(duty <= FTM_PRECISON,"所配占空比超过100%");                  //用断言检测 占空比是否合理
??FTM_PWM_Duty_0:
        MOVW     R0,#+10001
        CMP      R6,R0
        BCC.N    ??FTM_PWM_Duty_3
        LDR.W    R2,??DataTable8_19
        MOVW     R1,#+447
        LDR.W    R0,??DataTable8_1
        BL       assert_failed_rst
//  448 
//  449     //占空比 = (CnV-CNTIN)/(MOD-CNTIN+1)
//  450     mod = FTM_MOD_REG(FTMx[ftmn]);                                          //读取 MOD 的值
??FTM_PWM_Duty_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+8]
//  451 
//  452     cv = (duty*(mod-0+1))/FTM_PRECISON;
        ADDS     R0,R0,#+1
        MUL      R0,R0,R6
        MOVW     R1,#+10000
        UDIV     R0,R0,R1
//  453 
//  454     // 配置FTM通道值
//  455     FTM_CnV_REG(FTMx[ftmn],ch) = cv;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        ADDS     R1,R1,R5, LSL #+3
        STR      R0,[R1, #+16]
//  456 }
        POP      {R4-R6,PC}       ;; return
//  457 
//  458 
//  459 /*************************************************************************
//  460 *  函数名称：FTM_PWM_freq
//  461 *  功能说明：设置FTM的频率
//  462 *  参数说明：FTMn        模块号（FTM0、  FTM1、  FTM2）
//  463 *            freq        频率（单位为Hz）
//  464 *  函数返回：无
//  465 *  修改时间：2012-2-14
//  466 *  备    注：同一个FTM，各通道的PWM频率是一样的，共3个FTM，即可以输出3个不同频率PWM
//  467 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  468 void FTM_PWM_freq(FTMn ftmn,u32 freq)               //设置FTM的频率
//  469 {
FTM_PWM_freq:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  470     u32 clk_hz = (bus_clk_khz*1000);                //bus频率 
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MUL      R6,R1,R0
//  471     u32 mod;
//  472     u8 sc_ps;
//  473 
//  474 
//  475     //用断言检测 频率 是否正常 ,频率必须小于时钟二分之一  >>7>>16 最大为总线/65535/128
//  476     ASSERT_RST( (freq <= (clk_hz/2) && freq >(clk_hz>>23)),"FTM频率配置错误" );
        LSRS     R0,R6,#+1
        CMP      R0,R5
        BCC.N    ??FTM_PWM_freq_0
        LSRS     R0,R6,#+23
        CMP      R0,R5
        BCC.N    ??FTM_PWM_freq_1
??FTM_PWM_freq_0:
        LDR.W    R2,??DataTable8_2
        MOV      R1,#+476
        LDR.W    R0,??DataTable8_1
        BL       assert_failed_rst
//  477     
//  478     
//  479     /*       计算频率设置        */
//  480     mod= (clk_hz>>16 )/freq ;
??FTM_PWM_freq_1:
        LSRS     R0,R6,#+16
        UDIV     R8,R0,R5
//  481     for(sc_ps=0;(mod>>sc_ps)>=1;sc_ps++);           //求sc_ps的最小值
        MOVS     R7,#+0
        B.N      ??FTM_PWM_freq_2
??FTM_PWM_freq_3:
        ADDS     R7,R7,#+1
??FTM_PWM_freq_2:
        LSRS     R0,R8,R7
        CMP      R0,#+0
        BNE.N    ??FTM_PWM_freq_3
//  482     mod=(clk_hz>>sc_ps)/freq - 1;
        LSRS     R0,R6,R7
        UDIV     R0,R0,R5
        SUBS     R8,R0,#+1
//  483     
//  484     ASSERT( sc_ps < 8);                             //用断言检测，保证ps最大为7        
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+8
        BCC.N    ??FTM_PWM_freq_4
        MOV      R1,#+484
        LDR.W    R0,??DataTable8_1
        BL       assert_failed
//  485 
//  486     switch(ftmn)
??FTM_PWM_freq_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FTM_PWM_freq_5
        CMP      R4,#+2
        BEQ.N    ??FTM_PWM_freq_6
        BCC.N    ??FTM_PWM_freq_7
        B.N      ??FTM_PWM_freq_8
//  487     {
//  488     case FTM0:
//  489         SIM_SCGC6|=SIM_SCGC6_FTM0_MASK;                               //使能FTM0时钟
??FTM_PWM_freq_5:
        LDR.W    R0,??DataTable8_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable8_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  490     case FTM1:
//  491         SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                               //使能FTM1时钟
??FTM_PWM_freq_7:
        LDR.W    R0,??DataTable8_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  492     case FTM2:
//  493         SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                             //使能FTM2时钟
??FTM_PWM_freq_6:
        LDR.W    R0,??DataTable8_4  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable8_4  ;; 0x40048030
        STR      R0,[R1, #+0]
//  494     default:
//  495         break;
//  496     }
//  497     
//  498     FTM_CNT_REG(FTMx[ftmn])   =0;                                                       //计数器。只有低16位可用
??FTM_PWM_freq_8:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  499     //FTM_CnV_REG(FTMx[ftmn],ch)= 0;                                                    // Channel (n) Value  。设置脉冲宽度：(CnV - CNTIN).
//  500     FTM_MOD_REG(FTMx[ftmn])   = FTM_MOD_MOD(mod);                                                    //Modulo value模数, EPWM的周期为 ：MOD - CNTIN + 0x0001
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        UXTH     R1,R8            ;; ZeroExt  R1,R8,#+16,#+16
        STR      R1,[R0, #+8]
//  501     FTM_CNTIN_REG(FTMx[ftmn]) =0;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVS     R1,#+0
        STR      R1,[R0, #+76]
//  502     
//  503     while(!(mod == FTM_MOD_REG(FTMx[ftmn])));                         //等待更新成功 
??FTM_PWM_freq_9:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+8]
        CMP      R8,R0
        BNE.N    ??FTM_PWM_freq_9
//  504    
//  505     /******************** 配置时钟和分频 ********************/
//  506     FTM_SC_REG(FTMx[ftmn])   |= (FTM_SC_PS(sc_ps) | FTM_SC_CLKS(1));  //没有使能溢出中断
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ANDS     R1,R7,#0x7
        ORRS     R1,R1,#0x8
        ORRS     R0,R1,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//  507     FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_CPWMS_MASK; 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//  508 }
        POP      {R4-R8,PC}       ;; return
//  509 
//  510 
//  511 /*************************************************************************
//  512 *  函数名称：FTM_Input_init
//  513 *  功能说明：输入捕捉初始化函数
//  514 *  参数说明：FTMn        模块号（FTM0、  FTM1、  FTM2）
//  515 *            CHn         通道号（CH0~CH7）
//  516 *            Input_cfg   输入捕捉配置（Rising、Falling、Rising_or_Falling）上升沿捕捉、下降沿捕捉、跳变沿捕捉
//  517 *  函数返回：无
//  518 *  修改时间：2012-1-26
//  519 *  备    注：CH0~CH3可以使用过滤器，未添加这功能
//  520 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  521 void FTM_Input_init(FTMn ftmn,CHn ch,Input_cfg cfg)
//  522 {
FTM_Input_init:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  523     ASSERT_RST( ((ftmn==FTM0) || ( (ftmn==FTM1 || ftmn==FTM2 ) &&(ch<=CH1)) ),"FTM通道设置错误");   //检查传递进来的通道是否正确	
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FTM_Input_init_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??FTM_Input_init_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??FTM_Input_init_2
??FTM_Input_init_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BCC.N    ??FTM_Input_init_0
??FTM_Input_init_2:
        LDR.W    R2,??DataTable8_20
        MOVW     R1,#+523
        LDR.W    R0,??DataTable8_1
        BL       assert_failed_rst
//  524 
//  525     /******************* 开启时钟 和 复用IO口*******************/
//  526     //注，这里代码虽然长，但编译时会删掉很多没用的部分，不影响速度
//  527     switch(ftmn)
??FTM_Input_init_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FTM_Input_init_3
        CMP      R4,#+2
        BEQ.W    ??FTM_Input_init_4
        BCC.W    ??FTM_Input_init_5
        B.N      ??FTM_Input_init_6
//  528     {
//  529     case FTM0:
//  530         SIM_SCGC6|=SIM_SCGC6_FTM0_MASK;                             //使能FTM0时钟
??FTM_Input_init_3:
        LDR.W    R0,??DataTable8_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable8_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  531         switch(ch)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FTM_Input_init_7
        CMP      R5,#+2
        BEQ.N    ??FTM_Input_init_8
        BCC.N    ??FTM_Input_init_9
        CMP      R5,#+4
        BEQ.N    ??FTM_Input_init_10
        BCC.N    ??FTM_Input_init_11
        CMP      R5,#+6
        BEQ.N    ??FTM_Input_init_12
        BCC.N    ??FTM_Input_init_13
        CMP      R5,#+7
        BEQ.N    ??FTM_Input_init_14
        B.N      ??FTM_Input_init_15
//  532         {
//  533         case CH0:
//  534             if(FTM0_CH0==PTC1)
//  535             {
//  536                 SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
??FTM_Input_init_7:
        LDR.W    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
//  537                 PORT_PCR_REG(PORTC_BASE_PTR, 1) = PORT_PCR_MUX(4);  // PTC1
        LDR.W    R0,??DataTable8_7  ;; 0x4004b004
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
//  538             }
//  539             /*不建议使用PTA3
//  540             else if(FTM0_CH0==PTA3)
//  541             {
//  542                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  543                 PORT_PCR_REG(PORTA_BASE_PTR, 3) = PORT_PCR_MUX(3);  // PTA3
//  544             }
//  545             else
//  546             {
//  547                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  548             }
//  549             */
//  550             break;
//  551 
//  552         case CH1:
//  553             if(FTM0_CH1==PTC2)
//  554             {
//  555                 SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
//  556                 PORT_PCR_REG(PORTC_BASE_PTR, 2) = PORT_PCR_MUX(4);  // PTC2
//  557             }
//  558             else if(FTM0_CH1==PTA4)
//  559             {
//  560                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  561                 PORT_PCR_REG(PORTA_BASE_PTR, 4) = PORT_PCR_MUX(3);  // PTA4
//  562             }
//  563             else
//  564             {
//  565                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  566             }
//  567             break;
//  568 
//  569         case CH2:
//  570             if(FTM0_CH2==PTC3)
//  571             {
//  572                 SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
//  573                 PORT_PCR_REG(PORTC_BASE_PTR, 3) = PORT_PCR_MUX(4);  // PTC3
//  574             }
//  575             else if(FTM0_CH2==PTA5)
//  576             {
//  577                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  578                 PORT_PCR_REG(PORTA_BASE_PTR, 5) = PORT_PCR_MUX(3);  // PTA5
//  579             }
//  580             else
//  581             {
//  582                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  583             }
//  584             break;
//  585 
//  586         case CH3:
//  587             if(FTM0_CH3==PTC4)
//  588             {
//  589                 SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
//  590                 PORT_PCR_REG(PORTC_BASE_PTR, 4) = PORT_PCR_MUX(4);  // PTC4
//  591             }
//  592 #if K60PIN == 144u
//  593             else if(FTM0_CH3==PTA6)
//  594             {
//  595                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  596                 PORT_PCR_REG(PORTA_BASE_PTR, 6) = PORT_PCR_MUX(3);  // PTA6
//  597             }
//  598 #endif
//  599             else
//  600             {
//  601                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  602             }
//  603             break;
//  604 
//  605         case CH4:
//  606             if(FTM0_CH4==PTD4)
//  607             {
//  608                 SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
//  609                 PORT_PCR_REG(PORTD_BASE_PTR, 4) = PORT_PCR_MUX(4);  // PTD4
//  610             }
//  611 #if K60PIN == 144u
//  612             else if(FTM0_CH4==PTA7)
//  613             {
//  614                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  615                 PORT_PCR_REG(PORTA_BASE_PTR, 7) = PORT_PCR_MUX(3);  // PTA7
//  616             }
//  617 #endif
//  618             else
//  619             {
//  620                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  621             }
//  622             break;
//  623 
//  624         case CH5:
//  625             if(FTM0_CH5==PTD5)
//  626             {
//  627                 SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
//  628                 PORT_PCR_REG(PORTD_BASE_PTR, 5) = PORT_PCR_MUX(4);  // PTD5
//  629             }
//  630             /*不建议使用PTA0
//  631             else if(FTM0_CH5==PTA0)
//  632             {
//  633                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  634                 PORT_PCR_REG(PORTA_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTA0
//  635             }
//  636             */
//  637             else
//  638             {
//  639                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  640             }
//  641             break;
//  642 
//  643         case CH6:
//  644             if(FTM0_CH6==PTD6)
//  645             {
//  646                 SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
//  647                 PORT_PCR_REG(PORTD_BASE_PTR, 6) = PORT_PCR_MUX(4);  // PTD6
//  648             }
//  649             /*不建议使用PTA1
//  650             else if(FTM0_CH6==PTA1)
//  651             {
//  652                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  653                 PORT_PCR_REG(PORTA_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTA1
//  654             }
//  655             */
//  656             else
//  657             {
//  658                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  659             }
//  660             break;
//  661 
//  662         case CH7:
//  663             if(FTM0_CH7==PTD7)
//  664             {
//  665                 SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
//  666                 PORT_PCR_REG(PORTD_BASE_PTR, 7) = PORT_PCR_MUX(4);  // PTD7
//  667             }
//  668             /*不建议使用PTA2
//  669             else if(FTM0_CH7==PTA2)
//  670             {
//  671                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  672                 PORT_PCR_REG(PORTA_BASE_PTR, 2) = PORT_PCR_MUX(3);  // PTA2
//  673             }
//  674             */
//  675             else
//  676             {
//  677                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  678             }
//  679             break;
//  680         default:
//  681             return;
//  682         }
//  683         break;
??FTM_Input_init_16:
        B.N      ??FTM_Input_init_17
??FTM_Input_init_9:
        LDR.W    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_8  ;; 0x4004b008
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
        B.N      ??FTM_Input_init_16
??FTM_Input_init_8:
        LDR.W    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_9  ;; 0x4004b00c
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
        B.N      ??FTM_Input_init_16
??FTM_Input_init_11:
        LDR.W    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.W    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_10  ;; 0x4004b010
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
        B.N      ??FTM_Input_init_16
??FTM_Input_init_10:
        LDR.W    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_11  ;; 0x4004c010
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
        B.N      ??FTM_Input_init_16
??FTM_Input_init_13:
        LDR.W    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_12  ;; 0x4004c014
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
        B.N      ??FTM_Input_init_16
??FTM_Input_init_12:
        LDR.W    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_13  ;; 0x4004c018
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
        B.N      ??FTM_Input_init_16
??FTM_Input_init_14:
        LDR.W    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_14  ;; 0x4004c01c
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
        B.N      ??FTM_Input_init_16
??FTM_Input_init_15:
        B.N      ??FTM_Input_init_18
//  684 
//  685   case FTM1:
//  686         SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                             //使能FTM1时钟
??FTM_Input_init_5:
        LDR.W    R0,??DataTable8_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable8_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  687         switch(ch)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FTM_Input_init_19
        CMP      R5,#+1
        BEQ.N    ??FTM_Input_init_20
        B.N      ??FTM_Input_init_21
//  688         {
//  689         case CH0:
//  690 #if K60PIN == 144u
//  691             if(FTM1_CH0==PTA8)
//  692             {
//  693                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  694                 PORT_PCR_REG(PORTA_BASE_PTR, 8) = PORT_PCR_MUX(3);  // PTA8
//  695             }
//  696             else 
//  697 #endif            
//  698             if(FTM1_CH0==PTA12)
//  699             {
//  700                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
??FTM_Input_init_19:
        LDR.W    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
//  701                 PORT_PCR_REG(PORTA_BASE_PTR, 12) = PORT_PCR_MUX(3);  // PTA12
        LDR.W    R0,??DataTable8_15  ;; 0x40049030
        MOV      R1,#+768
        STR      R1,[R0, #+0]
//  702             }
//  703             else if(FTM1_CH0==PTB0)
//  704             {
//  705                 SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//  706                 PORT_PCR_REG(PORTB_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTB0
//  707             }
//  708             else
//  709             {
//  710                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  711             }
//  712             break;
//  713 
//  714 
//  715         case CH1:
//  716 #if K60PIN == 144u
//  717             if(FTM1_CH1==PTA9)
//  718             {
//  719                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  720                 PORT_PCR_REG(PORTA_BASE_PTR, 9) = PORT_PCR_MUX(3);  // PTA9
//  721             }
//  722             else 
//  723 #endif  
//  724             if(FTM1_CH1==PTA13)
//  725             {
//  726                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  727                 PORT_PCR_REG(PORTA_BASE_PTR, 13) = PORT_PCR_MUX(3);  // PTA13
//  728             }
//  729             else if(FTM1_CH1==PTB1)
//  730             {
//  731                 SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//  732                 PORT_PCR_REG(PORTB_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTB1
//  733             }
//  734             else
//  735             {
//  736                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  737             }
//  738             break;
//  739 
//  740         default:
//  741             return;
//  742         }
//  743         break;
??FTM_Input_init_22:
        B.N      ??FTM_Input_init_17
??FTM_Input_init_20:
        LDR.W    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_16  ;; 0x40049034
        MOV      R1,#+768
        STR      R1,[R0, #+0]
        B.N      ??FTM_Input_init_22
??FTM_Input_init_21:
        B.N      ??FTM_Input_init_18
//  744   case FTM2:
//  745         SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //使能FTM2时钟
??FTM_Input_init_4:
        LDR.W    R0,??DataTable8_4  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable8_4  ;; 0x40048030
        STR      R0,[R1, #+0]
//  746         switch(ch)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FTM_Input_init_23
        CMP      R5,#+1
        BEQ.N    ??FTM_Input_init_24
        B.N      ??FTM_Input_init_25
//  747         {
//  748         case CH0:
//  749 #if K60PIN == 144u
//  750             if(FTM2_CH0==PTA10)
//  751             {
//  752                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  753                 PORT_PCR_REG(PORTA_BASE_PTR, 10) = PORT_PCR_MUX(3);  // PTA10
//  754             }
//  755             else 
//  756 #endif            
//  757             if(FTM2_CH0==PTB18)
//  758             {
//  759                 SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??FTM_Input_init_23:
        LDR.W    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
//  760                 PORT_PCR_REG(PORTB_BASE_PTR, 18) = PORT_PCR_MUX(3);  // PTB18
        LDR.W    R0,??DataTable8_17  ;; 0x4004a048
        MOV      R1,#+768
        STR      R1,[R0, #+0]
//  761                 //PORT_PCR_REG(PORTB_BASE_PTR, 18) = (0|PORT_PCR_MUX(3)|0x10);  //带无源滤波器
//  762             }
//  763             else
//  764             {
//  765                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  766             }
//  767             break;
//  768 
//  769         case CH1:
//  770 #if K60PIN == 144u
//  771             if(FTM2_CH1==PTA11)
//  772             {
//  773                 SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  774                 PORT_PCR_REG(PORTB_BASE_PTR, 11) = PORT_PCR_MUX(3);  // PTA11
//  775             }
//  776             else 
//  777 #endif             
//  778             if(FTM2_CH1==PTB19)
//  779             {
//  780                 SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//  781                 PORT_PCR_REG(PORTB_BASE_PTR, 19) = (0|PORT_PCR_MUX(3)|0x10);  //带无源滤波器
//  782             }
//  783             else
//  784             {
//  785                 assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  786             }
//  787             break;
//  788 
//  789         default:
//  790             return;
//  791         }
//  792         break;
??FTM_Input_init_26:
        B.N      ??FTM_Input_init_17
??FTM_Input_init_24:
        LDR.W    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_18  ;; 0x4004a04c
        MOV      R1,#+784
        STR      R1,[R0, #+0]
        B.N      ??FTM_Input_init_26
??FTM_Input_init_25:
        B.N      ??FTM_Input_init_18
//  793   default:
//  794         break;
//  795     }
//  796 
//  797 
//  798     /******************* 设置为输入捕捉功能 *******************/
//  799     switch(cfg)
??FTM_Input_init_6:
??FTM_Input_init_17:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??FTM_Input_init_27
        CMP      R6,#+2
        BEQ.N    ??FTM_Input_init_28
        BCC.N    ??FTM_Input_init_29
        B.N      ??FTM_Input_init_30
//  800     {
//  801     case Rising:    //上升沿触发
//  802         FTM_CnSC_REG(FTMx[ftmn],ch) |=  ( FTM_CnSC_ELSA_MASK  | FTM_CnSC_CHIE_MASK );                    //置1
??FTM_Input_init_27:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        ADDS     R0,R0,R5, LSL #+3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        ADDS     R1,R1,R5, LSL #+3
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x44
        STR      R1,[R0, #+12]
//  803         FTM_CnSC_REG(FTMx[ftmn],ch) &= ~( FTM_CnSC_ELSB_MASK  | FTM_CnSC_MSB_MASK | FTM_CnSC_MSA_MASK);  //清0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        ADDS     R0,R0,R5, LSL #+3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        ADDS     R1,R1,R5, LSL #+3
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0x38
        STR      R1,[R0, #+12]
//  804         break;
        B.N      ??FTM_Input_init_30
//  805 
//  806     case Falling:   //下降沿触发
//  807         FTM_CnSC_REG(FTMx[ftmn],ch) |= (FTM_CnSC_ELSB_MASK  | FTM_CnSC_CHIE_MASK );                     //置1
??FTM_Input_init_29:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        ADDS     R0,R0,R5, LSL #+3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        ADDS     R1,R1,R5, LSL #+3
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x48
        STR      R1,[R0, #+12]
//  808         FTM_CnSC_REG(FTMx[ftmn],ch) &= ~( FTM_CnSC_ELSA_MASK | FTM_CnSC_MSB_MASK | FTM_CnSC_MSA_MASK);  //清0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        ADDS     R0,R0,R5, LSL #+3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        ADDS     R1,R1,R5, LSL #+3
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0x34
        STR      R1,[R0, #+12]
//  809         break;
        B.N      ??FTM_Input_init_30
//  810 
//  811     case Rising_or_Falling: //上升沿、下降沿都触发
//  812         FTM_CnSC_REG(FTMx[ftmn],ch) |=  ( FTM_CnSC_ELSB_MASK | FTM_CnSC_ELSA_MASK  | FTM_CnSC_CHIE_MASK ); //置1
??FTM_Input_init_28:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        ADDS     R0,R0,R5, LSL #+3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        ADDS     R1,R1,R5, LSL #+3
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x4C
        STR      R1,[R0, #+12]
//  813         FTM_CnSC_REG(FTMx[ftmn],ch) &= ~( FTM_CnSC_MSB_MASK  | FTM_CnSC_MSA_MASK);  //清0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        ADDS     R0,R0,R5, LSL #+3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        ADDS     R1,R1,R5, LSL #+3
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0x30
        STR      R1,[R0, #+12]
//  814         break;
//  815     }
//  816 
//  817     FTM_SC_REG(FTMx[ftmn]) = FTM_SC_CLKS(0x1);        //System clock
??FTM_Input_init_30:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVS     R1,#+8
        STR      R1,[R0, #+0]
//  818 
//  819     FTM_MODE_REG(FTMx[ftmn]) |= FTM_MODE_WPDIS_MASK;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+84]
        ORRS     R0,R0,#0x4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+84]
//  820     FTM_COMBINE_REG(FTMx[ftmn])=0;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVS     R1,#+0
        STR      R1,[R0, #+100]
//  821     FTM_MODE_REG(FTMx[ftmn]) &= ~FTM_MODE_FTMEN_MASK;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+84]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+84]
//  822     FTM_CNTIN_REG(FTMx[ftmn])=0;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVS     R1,#+0
        STR      R1,[R0, #+76]
//  823 
//  824     FTM_STATUS_REG(FTMx[ftmn])=0x00;                  //清中断标志位
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVS     R1,#+0
        STR      R1,[R0, #+80]
//  825 
//  826     //开启输入捕捉中断
//  827     enable_irq(62+ftmn);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R4,#+62
        BL       enable_irq
//  828 }
??FTM_Input_init_18:
        POP      {R4-R6,PC}       ;; return
//  829 /*************************************************************************
//  830 *  函数名称：FTM2_QUAD_DIR_init
//  831 *  功能说明：正交解码 方向计数模式初始化函数
//  832 *  参数说明：FTMn        模块号（FTM1、  FTM2）
//  833 *  函数返回：无
//  834 *  修改时间：2012-1-26
//  835 *  备    注：
//  836              该例程使用 A10 和A11 引脚输入作为旋转编码器的 A相和B 相输入。 
//  837               B路控制计数器方向  高电平时计数器正向计数
//  838               A路计数脉冲
//  839               对B路默认上拉
//  840 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  841 void FTM_QUAD_DIR_init(FTMn ftmn)
//  842 {
FTM_QUAD_DIR_init:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  843     ASSERT_RST( (ftmn==FTM1 || ftmn==FTM2 ),"FTM正交方向计数通道设置错误");   //检查传递进来的通道是否正确	
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??FTM_QUAD_DIR_init_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??FTM_QUAD_DIR_init_0
        LDR.N    R2,??DataTable8_21
        MOVW     R1,#+843
        LDR.N    R0,??DataTable8_1
        BL       assert_failed_rst
//  844     
//  845     switch(ftmn)
??FTM_QUAD_DIR_init_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+1
        BEQ.N    ??FTM_QUAD_DIR_init_1
        CMP      R0,#+2
        BEQ.N    ??FTM_QUAD_DIR_init_2
        B.N      ??FTM_QUAD_DIR_init_3
//  846     {
//  847       case FTM1:
//  848         SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                             //使能FTM1时钟
??FTM_QUAD_DIR_init_1:
        LDR.N    R0,??DataTable8_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  849 #if K60PIN == 144u        
//  850         if(FTM1_CH0==PTA8 && FTM1_CH1==PTA9)
//  851         {
//  852             SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  853             PORT_PCR_REG(PORTA_BASE_PTR, 8) = (0|PORT_PCR_MUX(6)|0x10);//滤波    这种写法是加一个IO滤波器
//  854             PORT_PCR_REG(PORTA_BASE_PTR, 9) = (0|PORT_PCR_MUX(6)|0x13);//滤波    检测5v信号时有必要使用
//  855         }
//  856         else 
//  857 #endif          
//  858         if(FTM1_CH0==PTA12 && FTM1_CH1==PTA13)
//  859         {
//  860             SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
        LDR.N    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
//  861             PORT_PCR_REG(PORTA_BASE_PTR, 12) = (0|PORT_PCR_MUX(7)|0x10);  // PTA12
        LDR.N    R0,??DataTable8_15  ;; 0x40049030
        MOV      R1,#+1808
        STR      R1,[R0, #+0]
//  862             PORT_PCR_REG(PORTA_BASE_PTR, 13) = (0|PORT_PCR_MUX(7)|0x13);  // PTA13
        LDR.N    R0,??DataTable8_16  ;; 0x40049034
        MOVW     R1,#+1811
        STR      R1,[R0, #+0]
//  863         }
//  864         else if(FTM1_CH0==PTB0 && FTM1_CH1==PTB1)
//  865         {
//  866             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//  867             PORT_PCR_REG(PORTB_BASE_PTR, 0) = (0|PORT_PCR_MUX(6)|0x10);  // PTB0
//  868             PORT_PCR_REG(PORTB_BASE_PTR, 1) = (0|PORT_PCR_MUX(6)|0x13);  // PTB1
//  869         }
//  870         else
//  871         {
//  872             assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  873         }
//  874         break;
        B.N      ??FTM_QUAD_DIR_init_4
//  875         
//  876     case FTM2:
//  877         SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //使能FTM2时钟
??FTM_QUAD_DIR_init_2:
        LDR.N    R0,??DataTable8_4  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable8_4  ;; 0x40048030
        STR      R0,[R1, #+0]
//  878 #if K60PIN == 144u         
//  879         if(FTM2_CH0==PTA10 && FTM2_CH1==PTA11)
//  880         {
//  881             SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  882             PORT_PCR_REG(PORTA_BASE_PTR, 10) = (0|PORT_PCR_MUX(6)|0x10);//滤波  // PTA10
//  883             PORT_PCR_REG(PORTA_BASE_PTR, 11) = (0|PORT_PCR_MUX(6)|0x13);//滤波  // PTA11
//  884         }
//  885         else 
//  886 #endif        
//  887         if(FTM2_CH0==PTB18 && FTM2_CH1==PTB19)
//  888         {
//  889             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
        LDR.N    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
//  890             PORT_PCR_REG(PORTB_BASE_PTR, 18) = (0|PORT_PCR_MUX(6)|0x10);  // PTB18
        LDR.N    R0,??DataTable8_17  ;; 0x4004a048
        MOV      R1,#+1552
        STR      R1,[R0, #+0]
//  891             PORT_PCR_REG(PORTB_BASE_PTR, 19) = (0|PORT_PCR_MUX(6)|0x13);  // PTB19
        LDR.N    R0,??DataTable8_18  ;; 0x4004a04c
        MOVW     R1,#+1555
        STR      R1,[R0, #+0]
//  892         }
//  893         else
//  894         {
//  895             assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  896         }
//  897         break;
        B.N      ??FTM_QUAD_DIR_init_4
//  898   default:
//  899         break;
//  900     }
//  901     FTM_MODE_REG(FTMx[ftmn])    |= FTM_MODE_WPDIS_MASK;           //写保护禁止
??FTM_QUAD_DIR_init_3:
??FTM_QUAD_DIR_init_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+84]
        ORRS     R0,R0,#0x4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+84]
//  902     FTM_QDCTRL_REG(FTMx[ftmn])  |=FTM_QDCTRL_QUADMODE_MASK;       //AB相同时确定方向和计数值
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+128]
        ORRS     R0,R0,#0x8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+128]
//  903     FTM_CNTIN_REG(FTMx[ftmn])    = 0;                             //FTM计数器初始值为0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVS     R1,#+0
        STR      R1,[R0, #+76]
//  904     FTM_MOD_REG(FTMx[ftmn])      = 0xFFFF;                        //FTM计数器初始值为0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVW     R1,#+65535
        STR      R1,[R0, #+8]
//  905     
//  906     //FTM_FILTER_REG(FTMx[ftmn])  |= FTM_FILTER_CH0FVAL(0x1F);    CH0~CH3可以使用过滤器
//  907     //FTM_FILTER_REG(FTMx[ftmn])  |= FTM_FILTER_CH1FVAL(0x1F);
//  908     //不启用滤波器延时三个时钟响应  用滤波响应时间为 4+4*FILTER
//  909     
//  910      
//  911     FTM_QDCTRL_REG(FTMx[ftmn])  |=FTM_QDCTRL_QUADEN_MASK;         //使能FTM2正交解码模式
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+128]
        ORRS     R0,R0,#0x1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+128]
//  912     FTM_MODE_REG(FTMx[ftmn])    |= FTM_MODE_FTMEN_MASK;                             //FTM2EN=1	
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+84]
        ORRS     R0,R0,#0x1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+84]
//  913     FTM_CNT_REG(FTMx[ftmn])    = 0; 	
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  914 }
        POP      {R4,PC}          ;; return
//  915 
//  916 /*************************************************************************
//  917 *  函数名称：FTM2_init
//  918 *  功能说明：正交解码 方向计数模式初始化函数
//  919 *  参数说明：FTMn        模块号（FTM1、  FTM2）
//  920 *            *  函数返回：无
//  921 *  修改时间：2012-1-26
//  922 *  备    注：CH0~CH3可以使用过滤器，未添加这功能
//  923              该例程使用 A10 和A11 引脚输入作为旋转编码器的 A相和B 相输入。 
//  924 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  925 void FTM_QUAD_init(FTMn ftmn)
//  926 {
FTM_QUAD_init:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  927     ASSERT_RST( (ftmn==FTM1 || ftmn==FTM2 ),"FTM正交方向计数通道设置错误");   //检查传递进来的通道是否正确	
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??FTM_QUAD_init_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??FTM_QUAD_init_0
        LDR.N    R2,??DataTable8_21
        MOVW     R1,#+927
        LDR.N    R0,??DataTable8_1
        BL       assert_failed_rst
//  928     
//  929     switch(ftmn)
??FTM_QUAD_init_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+1
        BEQ.N    ??FTM_QUAD_init_1
        CMP      R0,#+2
        BEQ.N    ??FTM_QUAD_init_2
        B.N      ??FTM_QUAD_init_3
//  930     {
//  931       case FTM1:
//  932         SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                             //使能FTM1时钟
??FTM_QUAD_init_1:
        LDR.N    R0,??DataTable8_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  933 #if K60PIN == 144u          
//  934         if(FTM1_CH0==PTA8 && FTM1_CH1==PTA9)
//  935         {
//  936             SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  937             PORT_PCR_REG(PORTA_BASE_PTR, 8) = PORT_PCR_MUX(6);   // PTA8
//  938             PORT_PCR_REG(PORTA_BASE_PTR, 9) = (0|PORT_PCR_MUX(6));
//  939         }
//  940         else 
//  941 #endif          
//  942         if(FTM1_CH0==PTA12 && FTM1_CH1==PTA13)
//  943         {
//  944             SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
        LDR.N    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
//  945             PORT_PCR_REG(PORTA_BASE_PTR, 12) = PORT_PCR_MUX(7);  // PTA12
        LDR.N    R0,??DataTable8_15  ;; 0x40049030
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  946             PORT_PCR_REG(PORTA_BASE_PTR, 13) = PORT_PCR_MUX(7);  // PTA13
        LDR.N    R0,??DataTable8_16  ;; 0x40049034
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  947         }
//  948         else if(FTM1_CH0==PTB0 && FTM1_CH1==PTB1)
//  949         {
//  950             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
//  951             PORT_PCR_REG(PORTB_BASE_PTR, 0) = PORT_PCR_MUX(6);  // PTB0
//  952             PORT_PCR_REG(PORTB_BASE_PTR, 1) = PORT_PCR_MUX(6);  // PTB1
//  953         }
//  954         else
//  955         {
//  956             assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  957         }
//  958         break;
        B.N      ??FTM_QUAD_init_4
//  959         
//  960     case FTM2:
//  961         SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //使能FTM2时钟
??FTM_QUAD_init_2:
        LDR.N    R0,??DataTable8_4  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable8_4  ;; 0x40048030
        STR      R0,[R1, #+0]
//  962 #if K60PIN == 144u          
//  963         if(FTM2_CH0==PTA10 && FTM2_CH1==PTA11)
//  964         {
//  965             SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
//  966             PORT_PCR_REG(PORTA_BASE_PTR, 10) = PORT_PCR_MUX(6);  // PTA10
//  967             PORT_PCR_REG(PORTA_BASE_PTR, 11) = PORT_PCR_MUX(6);  // PTA11
//  968         }
//  969         else 
//  970 #endif        
//  971         if(FTM2_CH0==PTB18 && FTM2_CH1==PTB19)
//  972         {
//  973             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
        LDR.N    R0,??DataTable8_6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable8_6  ;; 0x40048038
        STR      R0,[R1, #+0]
//  974             PORT_PCR_REG(PORTB_BASE_PTR, 18) = PORT_PCR_MUX(6);  // PTB18
        LDR.N    R0,??DataTable8_17  ;; 0x4004a048
        MOV      R1,#+1536
        STR      R1,[R0, #+0]
//  975             PORT_PCR_REG(PORTB_BASE_PTR, 19) = PORT_PCR_MUX(6);  // PTB19
        LDR.N    R0,??DataTable8_18  ;; 0x4004a04c
        MOV      R1,#+1536
        STR      R1,[R0, #+0]
//  976         }
//  977         else
//  978         {
//  979             assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  980         }
//  981         break;
        B.N      ??FTM_QUAD_init_4
//  982   default:
//  983         break;
//  984     }
//  985     FTM_MODE_REG(FTMx[ftmn])    |= FTM_MODE_WPDIS_MASK;           //写保护禁止
??FTM_QUAD_init_3:
??FTM_QUAD_init_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+84]
        ORRS     R0,R0,#0x4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+84]
//  986     FTM_QDCTRL_REG(FTMx[ftmn])  &= ~FTM_QDCTRL_QUADMODE_MASK;     //AB 正交解码模式
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+128]
        BICS     R0,R0,#0x8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+128]
//  987     FTM_CNTIN_REG(FTMx[ftmn])    = 0;                             //FTM计数器初始值为0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVS     R1,#+0
        STR      R1,[R0, #+76]
//  988     FTM_MOD_REG(FTMx[ftmn])      = 0xFFFF;                        //FTM计数器初始值为0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVW     R1,#+65535
        STR      R1,[R0, #+8]
//  989    
//  990     FTM_QDCTRL_REG(FTMx[ftmn])  |=FTM_QDCTRL_QUADEN_MASK;         //使能FTM2正交解码模式
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+128]
        ORRS     R0,R0,#0x1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+128]
//  991     FTM_MODE_REG(FTMx[ftmn])    |= FTM_MODE_FTMEN_MASK;                             //FTM2EN=1	
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+84]
        ORRS     R0,R0,#0x1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+84]
//  992     FTM_CNT_REG(FTMx[ftmn])    = 0; 	
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, R4, LSL #+2]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  993 }
        POP      {R4,PC}          ;; return
//  994 
//  995 /*
//  996 ************************************************************************
//  997 *  函数名称：FTM_irq_EN
//  998 *  功能说明：开FTM中断
//  999 *  参数说明：FTM       模块号（FTM0~FTM2）
// 1000 *  函数返回：无
// 1001 *  修改时间：2012-3-20
// 1002 *  备    注：
// 1003 ************************************************************************
// 1004 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1005 void FTM_irq_EN(FTMn ftmn)
// 1006 {
FTM_irq_EN:
        PUSH     {R7,LR}
// 1007     //bit6:TOIE   0 Disable TOF interrupts. Use software polling.
// 1008                 //1 Enable TOF interrupts. An interrupt is generated when TOF equals one.
// 1009     FTM_SC_REG(FTMx[ftmn])   |= FTM_SC_TOIE_MASK;     //开放FTM中断
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R0, LSL #+2]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x40
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable8_5
        LDR      R2,[R2, R0, LSL #+2]
        STR      R1,[R2, #+0]
// 1010     enable_irq(ftmn+ 62);			      //开中断
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+62
        BL       enable_irq
// 1011 }
        POP      {R0,PC}          ;; return
// 1012 
// 1013 
// 1014 /*
// 1015 ************************************************************************
// 1016 *  函数名称：FTM_irq_DIS
// 1017 *  功能说明：关FTM中断
// 1018 *  参数说明：FTM       模块号（FTM0~FTM2）
// 1019 *  函数返回：无
// 1020 *  修改时间：2012-3-20
// 1021 *  备    注：
// 1022 ************************************************************************
// 1023 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1024 void FTM_irq_DIS(FTMn ftmn)
// 1025 {
FTM_irq_DIS:
        PUSH     {R7,LR}
// 1026     //bit6:TOIE   0 Disable TOF interrupts. Use software polling.
// 1027                 //1 Enable TOF interrupts. An interrupt is generated when TOF equals one.
// 1028     FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_TOIE_MASK;     //关放FTM中断
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable8_5
        LDR      R1,[R1, R0, LSL #+2]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x40
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable8_5
        LDR      R2,[R2, R0, LSL #+2]
        STR      R1,[R2, #+0]
// 1029     disable_irq(ftmn+ 62);			       //关中断
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+62
        BL       disable_irq
// 1030 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     `?<Constant "D:\\\\workspace\\\\myworksp...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     `?<Constant "FTM\\306\\265\\302\\312\\305\\344\\326\\30`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     FTMx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x4004b004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x4004b008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     0x4004c014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     0x4004c01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     0x40049030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DC32     0x40049034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_17:
        DC32     0x4004a048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_18:
        DC32     0x4004a04c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_19:
        DC32     `?<Constant "\\313\\371\\305\\344\\325\\274\\277\\325\\2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_20:
        DC32     `?<Constant "FTM\\315\\250\\265\\300\\311\\350\\326\\30`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_21:
        DC32     `?<Constant "FTM\\325\\375\\275\\273\\267\\275\\317\\36`

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
        DC8 65H, 72H, 73H, 5CH, 46H, 54H, 4DH, 5CH
        DC8 46H, 54H, 4DH, 2EH, 63H, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "FTM\\306\\265\\302\\312\\305\\344\\326\\30`:
        DATA
        DC8 "FTM\306\265\302\312\305\344\326\303\264\355\316\363"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\313\\371\\305\\344\\325\\274\\277\\325\\2`:
        DATA
        DC8 "\313\371\305\344\325\274\277\325\261\310\263\254\271\375100%"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "FTM\\315\\250\\265\\300\\311\\350\\326\\30`:
        DATA
        DC8 "FTM\315\250\265\300\311\350\326\303\264\355\316\363"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "FTM\\325\\375\\275\\273\\267\\275\\317\\36`:
        DATA
        DC8 "FTM\325\375\275\273\267\275\317\362\274\306\312\375\315\250\265\300\311\350\326\303\264\355\316\363"

        END
// 1031 
// 1032 
// 1033 
// 
//    12 bytes in section .data
//   136 bytes in section .rodata
// 3 102 bytes in section .text
// 
// 3 102 bytes of CODE  memory
//   136 bytes of CONST memory
//    12 bytes of DATA  memory
//
//Errors: none
//Warnings: none
