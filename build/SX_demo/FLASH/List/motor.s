///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:47:32 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\motor\motor.c                        /
//    Command line =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\motor\motor.c -lCN                   /
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
//                    IO操作\build\SX_demo\FLASH\List\motor.s                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME motor

        #define SHT_PROGBITS 0x1

        EXTERN FTM_PWM_Duty
        EXTERN FTM_PWM_init
        EXTERN abs
        EXTERN assert_failed_rst

        PUBLIC PWMSetMotor
        PUBLIC motorCtrl
        PUBLIC motor_init

// C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本IO操作\src\drivers\motor\motor.c
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
//   33     FTM_PWM_init(MOTOR_FTMN,MOTOR_FTMCH3,MOTOR_FREQ,MOTOR_INIT_VAL); 
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

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 void PWMSetMotor(s32 speed_pwm)         
//   45 {
PWMSetMotor:
        PUSH     {R7,LR}
//   46     if(speed_pwm < MOTOR_MIN)
        LDR.N    R1,??DataTable1_2  ;; 0xffffd8f0
        CMP      R0,R1
        BGE.N    ??PWMSetMotor_0
//   47     {
//   48       speed_pwm = MOTOR_MIN;
        LDR.N    R0,??DataTable1_2  ;; 0xffffd8f0
//   49     }
//   50     if(speed_pwm > MOTOR_MAX)
??PWMSetMotor_0:
        MOVW     R1,#+10001
        CMP      R0,R1
        BLT.N    ??PWMSetMotor_1
//   51     {
//   52       speed_pwm = MOTOR_MAX;
        MOVW     R0,#+10000
//   53     }
//   54     
//   55     if(speed_pwm > 0) 
??PWMSetMotor_1:
        CMP      R0,#+1
        BLT.N    ??PWMSetMotor_2
//   56     {
//   57         FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0,(u32)speed_pwm);
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//   58         FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH1,0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
        B.N      ??PWMSetMotor_3
//   59     } 
//   60     else 
//   61     {
//   62        speed_pwm = -speed_pwm;
??PWMSetMotor_2:
        RSBS     R0,R0,#+0
//   63        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH1,(u32)speed_pwm);
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//   64        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0,0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//   65     }
//   66 }
??PWMSetMotor_3:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     `?<Constant "\\327\\356\\264\\363\\326\\265\\262\\273\\3`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     `?<Constant "C:\\\\Users\\\\Administrato...">`

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
//   67 
//   68 /********************************************************************
//   69 ** 函数名称: motorCtrl
//   70 ** 功能描述: 速度控制算法
//   71 ** 入口：
//   72 ** 出口：
//   73 ** 说明:  
//   74 *********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
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
`?<Constant "C:\\\\Users\\\\Administrato...">`:
        DATA
        DC8 43H, 3AH, 5CH, 55H, 73H, 65H, 72H, 73H
        DC8 5CH, 41H, 64H, 6DH, 69H, 6EH, 69H, 73H
        DC8 74H, 72H, 61H, 74H, 6FH, 72H, 5CH, 44H
        DC8 65H, 73H, 6BH, 74H, 6FH, 70H, 5CH, 0D1H
        DC8 0EEH, 0CFH, 0F2H, 0BEH, 0FCH, 0B5H, 0C4H, 4BH
        DC8 36H, 30H, 0C4H, 0A3H, 0B0H, 0E5H, 5FH, 0D6H
        DC8 0BBH, 0D3H, 0D0H, 0BBH, 0F9H, 0B1H, 0BEH, 49H
        DC8 4FH, 0B2H, 0D9H, 0D7H, 0F7H, 5CH, 73H, 72H
        DC8 63H, 5CH, 64H, 72H, 69H, 76H, 65H, 72H
        DC8 73H, 5CH, 6DH, 6FH, 74H, 6FH, 72H, 5CH
        DC8 6DH, 6FH, 74H, 6FH, 72H, 2EH, 63H, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\327\\356\\264\\363\\326\\265\\262\\273\\3`:
        DATA
        DC8 "\327\356\264\363\326\265\262\273\304\334\263\254\271\375PWM\276\253\266\310\326\265"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\327\\356\\320\\241\\326\\265\\262\\273\\3`:
        DATA
        DC8 "\327\356\320\241\326\265\262\273\304\334\263\254\271\375PWM\276\253\266\310\326\265"

        END
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
//  101 void PWMSetMotor2(s32 speed_pwmL,s32 speed_pwmR)         
//  102 {
//  103     if(speed_pwmL < MOTOR_MIN)
//  104     {
//  105       speed_pwmL = MOTOR_MIN;
//  106     }
//  107     if(speed_pwmL > MOTOR_MAX)
//  108     {
//  109       speed_pwmL = MOTOR_MAX;
//  110     }
//  111     
//  112     if(speed_pwmR < MOTOR_MIN)
//  113     {
//  114       speed_pwmR = MOTOR_MIN;
//  115     }
//  116     if(speed_pwmR > MOTOR_MAX)
//  117     {
//  118       speed_pwmR = MOTOR_MAX;
//  119     }
//  120     
//  121     if(speed_pwmL > 0) 
//  122     {
//  123         FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0,(u32)speed_pwmL);
//  124         FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH1,0);
//  125     } 
//  126     else 
//  127     {
//  128        speed_pwmL = -speed_pwmL;
//  129        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH1,(u32)speed_pwmL);
//  130        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0,0);
//  131     }
//  132     
//  133     if(speed_pwmR > 0) 
//  134     {
//  135         FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH2,(u32)speed_pwmR);
//  136         FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH3,0);
//  137     } 
//  138     else 
//  139     {
//  140        speed_pwmR = -speed_pwmR;
//  141        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH3,(u32)speed_pwmR);
//  142        FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH2,0);
//  143     }
//  144 }
//  145 
//  146 /********************************************************************
//  147 ** 函数名称: motorCtrl
//  148 ** 功能描述: 速度控制算法
//  149 ** 入口：
//  150 ** 出口：
//  151 ** 说明:  
//  152 *********************************************************************/
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
//  167 
//  168 #endif
//  169 
//  170 
//  171 
// 
// 136 bytes in section .rodata
// 172 bytes in section .text
// 
// 172 bytes of CODE  memory
// 136 bytes of CONST memory
//
//Errors: none
//Warnings: none
