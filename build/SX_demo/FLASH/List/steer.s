///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:47:34 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\steer\steer.c                        /
//    Command line =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\steer\steer.c -lCN                   /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\FLASH\List\ -lB                    /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\FLASH\List\ -o                     /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\FLASH\Obj\ --no_cse --no_unroll    /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "E:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\ -I                             /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\common\ -I               /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\cpu\ -I                  /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\ -I              /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\gpio\ -I         /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\wdog\ -I         /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\mcg\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\uart\ -I         /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\lptmr\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\LED\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\fun\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\FTM\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\pit\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\DIPswitch\ -I    /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\steer\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\ccd\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\dma\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\motor\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\platforms\ -I            /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\projects\ -I             /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\projects\SX_demo\ -Ol    /
//    List file    =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\FLASH\List\steer.s                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME steer

        #define SHT_PROGBITS 0x1

        EXTERN FTM_PWM_Duty
        EXTERN FTM_PWM_init

        PUBLIC PWMSetSteer
        PUBLIC steerCtrl
        PUBLIC steer_init

// C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本IO操作\src\drivers\steer\steer.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程                                        
//    4 * 文件名 :[steer.c] 
//    5 * 描  述 ：舵机驱动函数
//    6 *设计改进：snowwolf
//    7 *  Email ：snowwolf2012@qq.com
//    8 * 说  明 ：舵机驱动函数
//    9 ***********************************************************************
//   10 */
//   11 
//   12 #include "steer.h"
//   13 
//   14 
//   15 
//   16 /********************************************************************
//   17 ** 函数名称 : void steer_init() 
//   18 ** 功能描述 : 设置舵机转向
//   19 ** 入口     ：
//   20 ** 出口     ：
//   21 ** 说明     :  初始化PWM波及占空比
//   22 *********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 void steer_init()         
//   24 {
steer_init:
        PUSH     {R7,LR}
//   25     ASSERT_RST(STEER_INIT_VAL <= FTM_PRECISON,"舵机0最大值不能超过PWM精度值");        
//   26     FTM_PWM_init(STEER_FTMN,STEER_FTMCH,STEER_FREQ,STEER_INIT_VAL); 
        MOV      R3,#+1200
        MOVS     R2,#+100
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       FTM_PWM_init
//   27 #if STEER_DOUBLE
//   28     ASSERT_RST(STEER_INIT_VAL1 <= FTM_PRECISON,"舵机最大值不能超过PWM精度值");
//   29     FTM_PWM_init(STEER_FTMN,STEER_FTMCH1,STEER_FREQ,STEER_INIT_VAL1); 
//   30 #endif
//   31 }
        POP      {R0,PC}          ;; return
//   32 
//   33 /********************************************************************
//   34 ** 函数名称: void PWMSetSteer(int angle_pwm) 
//   35 ** 功能描述: 设置舵机转向
//   36 ** 入口：角度值
//   37 ** 出口：
//   38 ** 说明:  
//   39 *********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 void PWMSetSteer(int angle_pwm)         
//   41 {
PWMSetSteer:
        PUSH     {R7,LR}
//   42     //占空比不能超过上限（防止过压）
//   43     //同时防止方向打死  
//   44     //这个保护措施是必要的
//   45     if(angle_pwm < STEER_RIGHT)
        CMP      R0,#+200
        BGE.N    ??PWMSetSteer_0
//   46          angle_pwm = STEER_RIGHT;
        MOVS     R0,#+200
//   47     if(angle_pwm > STEER_LEFT)
??PWMSetSteer_0:
        MOVW     R1,#+3001
        CMP      R0,R1
        BLT.N    ??PWMSetSteer_1
//   48          angle_pwm = STEER_LEFT;
        MOVW     R0,#+3000
//   49         
//   50     FTM_PWM_Duty(STEER_FTMN,STEER_FTMCH,angle_pwm);
??PWMSetSteer_1:
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       FTM_PWM_Duty
//   51 }
        POP      {R0,PC}          ;; return
//   52 
//   53 
//   54 /********************************************************************
//   55 ** 函数名称: steerCtrl
//   56 ** 功能描述: 速度控制算法
//   57 ** 入口：
//   58 ** 出口：
//   59 ** 说明:  
//   60 *********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 void steerCtrl()
//   62 {
//   63     /*
//   64     int angle_pwm;
//   65     angle_pwm = 0;    //去除warning
//   66     
//   67     //自己的舵机控制算法
//   68     
//   69     
//   70     PWMSetSteer(angle_pwm) ; 
//   71     */ 
//   72 }
steerCtrl:
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   73 
//   74 
//   75 #if STEER_DOUBLE
//   76 void PWMSetSteer1(int angle_pwm)         
//   77 {
//   78     //占空比不能超过上限（防止过压）
//   79     //同时防止方向打死  
//   80     //这个保护措施是必要的
//   81     if(angle_pwm < STEER_RIGHT1)
//   82          angle_pwm = STEER_RIGHT1;
//   83     if(angle_pwm > STEER_LEFT1)
//   84          angle_pwm = STEER_LEFT1;
//   85     
//   86     
//   87     FTM_PWM_Duty(STEER_FTMN,STEER_FTMCH1,angle_pwm);
//   88 }
//   89 
//   90 
//   91 /********************************************************************
//   92 ** 函数名称: steerCtrl
//   93 ** 功能描述: 速度控制算法
//   94 ** 入口：
//   95 ** 出口：
//   96 ** 说明:  
//   97 *********************************************************************/
//   98 void steerCtrl1()
//   99 {
//  100     /*
//  101     int angle_pwm;
//  102     angle_pwm = 0;    //去除warning
//  103     
//  104     //自己的舵机控制算法
//  105     
//  106     
//  107     
//  108     PWMSetSteer1(angle_pwm) ;  
//  109     */
//  110 }
//  111 
//  112 #endif
// 
// 52 bytes in section .text
// 
// 52 bytes of CODE memory
//
//Errors: none
//Warnings: none
