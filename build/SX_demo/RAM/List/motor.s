///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  04:25:35 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\drivers\motor\motor /
//                    .c                                                      /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\drivers\motor\motor /
//                    .c -lCN D:\workspace\myworkspace\SW_K60\build\SX_demo\R /
//                    AM\List\ -lB D:\workspace\myworkspace\SW_K60\build\SX_d /
//                    emo\RAM\List\ -o D:\workspace\myworkspace\SW_K60\build\ /
//                    SX_demo\RAM\Obj\ --no_cse --no_unroll --no_inline       /
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
//                    motor.s                                                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME motor

        #define SHT_PROGBITS 0x1

        EXTERN FTM_PWM_Duty
        EXTERN FTM_PWM_init
        EXTERN abs
        EXTERN assert_failed_rst

        PUBLIC PWMSetMotor2
        PUBLIC motorCtrl
        PUBLIC motor_init

// D:\workspace\myworkspace\SW_K60\src\drivers\motor\motor.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程                                        
//    4 * 文件名 :[motor.c] 
//    5 * 描  述 ：电机驱动函数
//    6 *设计改进：snowwolf
//    7 *  Email ：snowwolf2012@qq.com
//    8 * 说  明 ：电机驱动函数
//    9 ***********************************************************************
//   10 */
//   11 
//   12 #include "motor.h"
//   13 
//   14 
//   15 
//   16 /********************************************************************
//   17 ** 函数名称: void steer_init() 
//   18 ** 功能描述: 设置舵机转向
//   19 ** 入口：角度值
//   20 ** 出口：
//   21 ** 说明:  
//   22 *********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 void motor_init()         
//   24 {
motor_init:
        PUSH     {R7,LR}
//   25     ASSERT_RST(abs(MOTOR_MAX) <= FTM_PRECISON,"最大值不能超过PWM精度值");
        MOVW     R0,#+10000
        BL       abs
        MOVW     R1,#+10001
        CMP      R0,R1
        BCC.N    ??motor_init_0
        LDR.N    R2,??DataTable1
        MOVS     R1,#+25
        LDR.N    R0,??DataTable1_1
        BL       assert_failed_rst
//   26     ASSERT_RST(abs(MOTOR_MIN) <= FTM_PRECISON,"最小值不能超过PWM精度值");
??motor_init_0:
        LDR.N    R0,??DataTable1_2  ;; 0xffffd8f0
        BL       abs
        MOVW     R1,#+10001
        CMP      R0,R1
        BCC.N    ??motor_init_1
        LDR.N    R2,??DataTable1_3
        MOVS     R1,#+26
        LDR.N    R0,??DataTable1_1
        BL       assert_failed_rst
//   27     
//   28     //初始化FTM2_CH0输出频率为100HZ,占空比为13%的PWM ：FTM2_CH0对应PTA10口
//   29     FTM_PWM_init(MOTOR_FTMN,MOTOR_FTMCH0,MOTOR_FREQ,MOTOR_INIT_VAL); 
??motor_init_1:
        MOVS     R3,#+0
        MOV      R2,#+16000
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_init
//   30     FTM_PWM_init(MOTOR_FTMN,MOTOR_FTMCH1,MOTOR_FREQ,MOTOR_INIT_VAL); 
        MOVS     R3,#+0
        MOV      R2,#+16000
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_init
//   31 #if MOTOR_DOUBLE
//   32     FTM_PWM_init(MOTOR_FTMN,MOTOR_FTMCH2,MOTOR_FREQ,MOTOR_INIT_VAL); 
        MOVS     R3,#+0
        MOV      R2,#+16000
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       FTM_PWM_init
//   33     FTM_PWM_init(MOTOR_FTMN,MOTOR_FTMCH3,MOTOR_FREQ,MOTOR_INIT_VAL); 
        MOVS     R3,#+0
        MOV      R2,#+16000
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       FTM_PWM_init
//   34 #endif
//   35 }
        POP      {R0,PC}          ;; return
//   36 #if !MOTOR_DOUBLE
//   37 /********************************************************************
//   38 ** 函数名称: PWMSetMotor
//   39 ** 功能描述: 设置速度
//   40 ** 入口：速度
//   41 ** 出口：
//   42 ** 说明:  
//   43 *********************************************************************/
//   44 void PWMSetMotor(s32 speed_pwm)         
//   45 {
//   46     if(speed_pwm < MOTOR_MIN)
//   47     {
//   48       speed_pwm = MOTOR_MIN;
//   49     }
//   50     if(speed_pwm > MOTOR_MAX)
//   51     {
//   52       speed_pwm = MOTOR_MAX;
//   53     }
//   54     
//   55     if(speed_pwm > 0) 
//   56     {
//   57         FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0,(u32)speed_pwm);
//   58         FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH1,0);
//   59     } 
//   60     else 
//   61     {
//   62        speed_pwm = -speed_pwm;
//   63        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH1,(u32)speed_pwm);
//   64        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0,0);
//   65     }
//   66 }
//   67 
//   68 /********************************************************************
//   69 ** 函数名称: motorCtrl
//   70 ** 功能描述: 速度控制算法
//   71 ** 入口：
//   72 ** 出口：
//   73 ** 说明:  
//   74 *********************************************************************/
//   75 void motorCtrl()
//   76 {
//   77     /***
//   78   s32 speed_pwm;
//   79     
//   80     speed_pwm = 0;    //去除warning
//   81     
//   82     //自己的速度控制算法
//   83     
//   84     
//   85     
//   86     PWMSetMotor(speed_pwm);
//   87   ***/
//   88 }
//   89 
//   90 #endif
//   91 
//   92 
//   93 #if MOTOR_DOUBLE
//   94 /********************************************************************
//   95 ** 函数名称: PWMSetMotor
//   96 ** 功能描述: 设置速度
//   97 ** 入口：左右速度
//   98 ** 出口：
//   99 ** 说明:  
//  100 *********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  101 void PWMSetMotor2(s32 speed_pwmL,s32 speed_pwmR)         
//  102 {
PWMSetMotor2:
        PUSH     {R4,LR}
        MOVS     R4,R1
//  103     if(speed_pwmL < MOTOR_MIN)
        LDR.N    R1,??DataTable1_2  ;; 0xffffd8f0
        CMP      R0,R1
        BGE.N    ??PWMSetMotor2_0
//  104     {
//  105       speed_pwmL = MOTOR_MIN;
        LDR.N    R0,??DataTable1_2  ;; 0xffffd8f0
//  106     }
//  107     if(speed_pwmL > MOTOR_MAX)
??PWMSetMotor2_0:
        MOVW     R1,#+10001
        CMP      R0,R1
        BLT.N    ??PWMSetMotor2_1
//  108     {
//  109       speed_pwmL = MOTOR_MAX;
        MOVW     R0,#+10000
//  110     }
//  111     
//  112     if(speed_pwmR < MOTOR_MIN)
??PWMSetMotor2_1:
        LDR.N    R1,??DataTable1_2  ;; 0xffffd8f0
        CMP      R4,R1
        BGE.N    ??PWMSetMotor2_2
//  113     {
//  114       speed_pwmR = MOTOR_MIN;
        LDR.N    R4,??DataTable1_2  ;; 0xffffd8f0
//  115     }
//  116     if(speed_pwmR > MOTOR_MAX)
??PWMSetMotor2_2:
        MOVW     R1,#+10001
        CMP      R4,R1
        BLT.N    ??PWMSetMotor2_3
//  117     {
//  118       speed_pwmR = MOTOR_MAX;
        MOVW     R4,#+10000
//  119     }
//  120     
//  121     if(speed_pwmL > 0) 
??PWMSetMotor2_3:
        CMP      R0,#+1
        BLT.N    ??PWMSetMotor2_4
//  122     {
//  123         FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0,(u32)speed_pwmL);
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  124         FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH1,0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
        B.N      ??PWMSetMotor2_5
//  125     } 
//  126     else 
//  127     {
//  128        speed_pwmL = -speed_pwmL;
??PWMSetMotor2_4:
        RSBS     R0,R0,#+0
//  129        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH1,(u32)speed_pwmL);
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  130        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0,0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  131     }
//  132     
//  133     if(speed_pwmR > 0) 
??PWMSetMotor2_5:
        CMP      R4,#+1
        BLT.N    ??PWMSetMotor2_6
//  134     {
//  135         FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH2,(u32)speed_pwmR);
        MOVS     R2,R4
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  136         FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH3,0);
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
        B.N      ??PWMSetMotor2_7
//  137     } 
//  138     else 
//  139     {
//  140        speed_pwmR = -speed_pwmR;
??PWMSetMotor2_6:
        RSBS     R4,R4,#+0
//  141        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH3,(u32)speed_pwmR);
        MOVS     R2,R4
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  142        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH2,0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  143     }
//  144 }
??PWMSetMotor2_7:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     `?<Constant "\\327\\356\\264\\363\\326\\265\\262\\273\\3`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     `?<Constant "D:\\\\workspace\\\\myworksp...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0xffffd8f0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     `?<Constant "\\327\\356\\320\\241\\326\\265\\262\\273\\3`
//  145 
//  146 /********************************************************************
//  147 ** 函数名称: motorCtrl
//  148 ** 功能描述: 速度控制算法
//  149 ** 入口：
//  150 ** 出口：
//  151 ** 说明:  
//  152 *********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  153 void motorCtrl()
//  154 {
//  155   /***
//  156     s32 speed_pwm;
//  157     
//  158     speed_pwm = 0;    //去除warning
//  159     
//  160     //自己的速度控制算法
//  161     
//  162     
//  163     
//  164     PWMSetMotor2(speed_pwm,speed_pwm);
//  165   ***/
//  166 }
motorCtrl:
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
        DC8 65H, 72H, 73H, 5CH, 6DH, 6FH, 74H, 6FH
        DC8 72H, 5CH, 6DH, 6FH, 74H, 6FH, 72H, 2EH
        DC8 63H, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\327\\356\\264\\363\\326\\265\\262\\273\\3`:
        DATA
        DC8 "\327\356\264\363\326\265\262\273\304\334\263\254\271\375PWM\276\253\266\310\326\265"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\327\\356\\320\\241\\326\\265\\262\\273\\3`:
        DATA
        DC8 "\327\356\320\241\326\265\262\273\304\334\263\254\271\375PWM\276\253\266\310\326\265"

        END
//  167 
//  168 #endif
//  169 
//  170 
//  171 
// 
// 108 bytes in section .rodata
// 270 bytes in section .text
// 
// 270 bytes of CODE  memory
// 108 bytes of CONST memory
//
//Errors: none
//Warnings: none
