///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  19:53:05 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    motor\motor.c                                           /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    motor\motor.c -lCN C:\Users\Administrator\Desktop\MPU60 /
//                    508.12\build\gpio_demo\FLASH\List\ -lB                  /
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
//                    emo\FLASH\List\motor.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN FTM_PWM_Duty
        EXTERN FTM_PWM_init
        EXTERN abs
        EXTERN assert_failed_rst

        PUBLIC PWMSetMotor2
        PUBLIC motor_init

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\motor\motor.c
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
//   17 ** 函数名称: motor_init()
//   18 ** 功能描述: 电机初始化
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
        MOV      R0,#+9600
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
        LDR.N    R0,??DataTable1_2  ;; 0xffffda80
        BL       abs
        MOVW     R1,#+10001
        CMP      R0,R1
        BCC.N    ??motor_init_1
        LDR.N    R2,??DataTable1_3
        MOVS     R1,#+26
        LDR.N    R0,??DataTable1_1
        BL       assert_failed_rst
//   27 
//   28     //初始化FTM0_CH0 CH1 CH2 CH3输出频率为 16kHZ,占空比为 50% 的PWM;
//   29     FTM_PWM_init(MOTOR_FTMN,MOTOR_FTMCH0,MOTOR_FREQ,MOTOR_INIT_VAL);
??motor_init_1:
        MOVW     R3,#+5000
        MOV      R2,#+16000
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_init
//   30     FTM_PWM_init(MOTOR_FTMN,MOTOR_FTMCH1,MOTOR_FREQ,MOTOR_INIT_VAL);
        MOVW     R3,#+5000
        MOV      R2,#+16000
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_init
//   31 #if MOTOR_DOUBLE
//   32     FTM_PWM_init(MOTOR_FTMN,MOTOR_FTMCH2,MOTOR_FREQ,MOTOR_INIT_VAL);
        MOVW     R3,#+5000
        MOV      R2,#+16000
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       FTM_PWM_init
//   33     FTM_PWM_init(MOTOR_FTMN,MOTOR_FTMCH3,MOTOR_FREQ,MOTOR_INIT_VAL);
        MOVW     R3,#+5000
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
//   95 ** 函数名称: PWMSetMotor2
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
        CMN      R0,#+9600
        BGE.N    ??PWMSetMotor2_0
//  104     {
//  105       speed_pwmL = MOTOR_MIN;
        LDR.N    R0,??DataTable1_2  ;; 0xffffda80
//  106     }
//  107     if(speed_pwmL > MOTOR_MAX)
??PWMSetMotor2_0:
        CMP      R0,#+9600
        BLE.N    ??PWMSetMotor2_1
//  108     {
//  109       speed_pwmL = MOTOR_MAX;
        MOV      R0,#+9600
//  110     }
//  111 
//  112     if(speed_pwmR < MOTOR_MIN)
??PWMSetMotor2_1:
        CMN      R4,#+9600
        BGE.N    ??PWMSetMotor2_2
//  113     {
//  114       speed_pwmR = MOTOR_MIN;
        LDR.N    R4,??DataTable1_2  ;; 0xffffda80
//  115     }
//  116     if(speed_pwmR > MOTOR_MAX)
??PWMSetMotor2_2:
        CMP      R4,#+9600
        BLE.N    ??PWMSetMotor2_3
//  117     {
//  118       speed_pwmR = MOTOR_MAX;
        MOV      R4,#+9600
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
        DC32     `?<Constant "C:\\\\Users\\\\Administrato...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0xffffda80

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     `?<Constant "\\327\\356\\320\\241\\326\\265\\262\\273\\3`

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
        DC8 72H, 69H, 76H, 65H, 72H, 73H, 5CH, 6DH
        DC8 6FH, 74H, 6FH, 72H, 5CH, 6DH, 6FH, 74H
        DC8 6FH, 72H, 2EH, 63H, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\327\\356\\264\\363\\326\\265\\262\\273\\3`:
        DATA
        DC8 "\327\356\264\363\326\265\262\273\304\334\263\254\271\375PWM\276\253\266\310\326\265"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\327\\356\\320\\241\\326\\265\\262\\273\\3`:
        DATA
        DC8 "\327\356\320\241\326\265\262\273\304\334\263\254\271\375PWM\276\253\266\310\326\265"

        END
//  145 
//  146 /********************************************************************
//  147 ** 函数名称: motorSpeedOut
//  148 ** 功能描述: 速度控制算法
//  149 ** 入口：
//  150 ** 出口：
//  151 ** 说明:
//  152 *********************************************************************/
//  153 /*void motorSpeedOut()
//  154 {
//  155   s32 fLeftVal, fRightVal;
//  156 
//  157   fLeftVal = g_lLeftMotorOut;
//  158   fRightVal = g_lRightMotorOut;
//  159   
//  160   if(fLeftVal > 0) 			
//  161     fLeftVal += MOTOR_OUT_DEAD_VAL_LEFT_FORWARD;
//  162   else if(fLeftVal < 0) 		
//  163     fLeftVal -= MOTOR_OUT_DEAD_VAL_LEFT_BACKWARD;
//  164   if(fRightVal > 0)			
//  165     fRightVal += MOTOR_OUT_DEAD_VAL_RIGHT_FORWARD;
//  166   else if(fRightVal < 0)		
//  167     fRightVal -= MOTOR_OUT_DEAD_VAL_RIGHT_BACKWARD;
//  168 
//  169   if(fLeftVal > MOTOR_OUT_MAX)	
//  170     fLeftVal = MOTOR_OUT_MAX;
//  171   if(fLeftVal < MOTOR_OUT_MIN)	
//  172     fLeftVal = MOTOR_OUT_MIN;
//  173   if(fRightVal > MOTOR_OUT_MAX)	
//  174     fRightVal = MOTOR_OUT_MAX;
//  175   if(fRightVal < MOTOR_OUT_MIN)	
//  176     fRightVal = MOTOR_OUT_MIN;
//  177 
//  178   PWMSetMotor2(fLeftVal, fRightVal);
//  179 }
//  180 
//  181 /********************************************************************
//  182 ** 函数名称: motorCtrl
//  183 ** 功能描述: 速度控制算法
//  184 ** 入口：
//  185 ** 出口：
//  186 ** 说明:
//  187 *********************************************************************/
//  188 /*void motorCtrl()
//  189 {
//  190   float fLeft, fRight;
//  191 
//  192   fLeft = g_fAngleControlOut - g_fSpeedControlOut + g_fDirectionControlOut;
//  193   fRight = g_fAngleControlOut - g_fSpeedControlOut- g_fDirectionControlOut; 
//  194 
//  195 
//  196   // 看似控制速度的系数，我需要改动它来进行调试.
//  197 //  fLeft *= 10000;//10000
//  198 //  fRight *= 10000;//10000
//  199   
//  200    fLeft *= 10000;//10000
//  201   fRight *= 10000;//10000
//  202   
//  203   
//  204   if(fLeft > MOTOR_OUT_MAX)
//  205     fLeft = MOTOR_OUT_MAX;
//  206   if(fLeft < MOTOR_OUT_MIN)	
//  207     fLeft = MOTOR_OUT_MIN;
//  208   if(fRight > MOTOR_OUT_MAX)
//  209     fRight = MOTOR_OUT_MAX;
//  210   if(fRight < MOTOR_OUT_MIN)
//  211     fRight = MOTOR_OUT_MIN;
//  212 
//  213   g_lLeftMotorOut = (long int)fLeft;
//  214   g_lRightMotorOut = (long int)fRight;
//  215   
//  216   motorSpeedOut();
//  217  
//  218 }*/
//  219 
//  220 
//  221 
//  222 #endif
//  223 
//  224 
//  225 
// 
// 120 bytes in section .rodata
// 272 bytes in section .text
// 
// 272 bytes of CODE  memory
// 120 bytes of CONST memory
//
//Errors: none
//Warnings: 1
