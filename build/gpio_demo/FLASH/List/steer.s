///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  19:53:06 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    steer\steer.c                                           /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    steer\steer.c -lCN C:\Users\Administrator\Desktop\MPU60 /
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
//                    emo\FLASH\List\steer.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN FTM_PWM_Duty
        EXTERN FTM_PWM_init
        EXTERN PID_flag
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN abs
        EXTERN angle_p
        EXTERN bili
        EXTERN integral_b
        EXTERN k_chashu_speed
        EXTERN sep
        EXTERN tan
        EXTERN true_speed_L
        EXTERN true_speed_R
        EXTERN wanted_speed
        EXTERN wanted_speed_L
        EXTERN wanted_speed_R

        PUBLIC PWMSetSteer
        PUBLIC steerCtrl
        PUBLIC steer_init

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\steer\steer.c
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
//   13 #include "global.h"
//   14 #include "math.h"
//   15 
//   16 
//   17 /********************************************************************
//   18 ** 函数名称 : void steer_init() 
//   19 ** 功能描述 : 设置舵机转向
//   20 ** 入口     ：
//   21 ** 出口     ：
//   22 ** 说明     :  初始化PWM波及占空比
//   23 *********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void steer_init()         
//   25 {
steer_init:
        PUSH     {R7,LR}
//   26     ASSERT_RST(STEER_INIT_VAL <= FTM_PRECISON,"舵机0最大值不能超过PWM精度值");        
//   27     FTM_PWM_init(STEER_FTMN,STEER_FTMCH,STEER_FREQ,STEER_INIT_VAL); 
        MOV      R3,#+1464
        MOVS     R2,#+100
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       FTM_PWM_init
//   28 #if STEER_DOUBLE
//   29     ASSERT_RST(STEER_INIT_VAL1 <= FTM_PRECISON,"舵机最大值不能超过PWM精度值");
//   30     FTM_PWM_init(STEER_FTMN,STEER_FTMCH1,STEER_FREQ,STEER_INIT_VAL1); 
//   31 #endif
//   32 }
        POP      {R0,PC}          ;; return
//   33 
//   34 /********************************************************************
//   35 ** 函数名称: void PWMSetSteer(int angle_pwm) 
//   36 ** 功能描述: 设置舵机转向
//   37 ** 入口：角度值
//   38 ** 出口：
//   39 ** 说明:  
//   40 *********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 void PWMSetSteer(int angle_pwm)         
//   42 {
PWMSetSteer:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//   43     //占空比不能超过上限（防止过压）
//   44     //同时防止方向打死  
//   45     //这个保护措施是必要的
//   46   /* if(angle_pwm<STEER_MIDDLE)
//   47    {
//   48      int p=STEER_MIDDLE-angle_pwm;
//   49      angle_pwm=STEER_MIDDLE-p*a1;
//   50    }*/
//   51     if(angle_pwm < STEER_RIGHT)
        MOVW     R0,#+1294
        CMP      R4,R0
        BGE.N    ??PWMSetSteer_0
//   52         
//   53     {
//   54       angle_pwm = STEER_RIGHT;
        MOVW     R4,#+1294
//   55    
//   56     }
//   57     if(angle_pwm > STEER_LEFT)
??PWMSetSteer_0:
        MOVW     R0,#+1635
        CMP      R4,R0
        BLT.N    ??PWMSetSteer_1
//   58     {
//   59          angle_pwm = STEER_LEFT;
        MOVW     R4,#+1634
//   60      
//   61     }
//   62     
//   63      FTM_PWM_Duty(STEER_FTMN,STEER_FTMCH,angle_pwm);
??PWMSetSteer_1:
        MOVS     R2,R4
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       FTM_PWM_Duty
//   64     if(PID_flag)
        LDR.N    R0,??DataTable0
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??PWMSetSteer_2
//   65     {
//   66      
//   67     
//   68       float angle_pp=angle_p*abs(STEER_MIDDLE-angle_pwm);
        RSBS     R0,R4,#+1464
        BL       abs
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable0_1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
//   69       float dev_angle=tan(angle_pp);
        BL       __aeabi_f2d
        BL       tan
        BL       __aeabi_d2f
        MOVS     R5,R0
//   70       int chasuzhi=wanted_speed*k_chashu_speed*dev_angle;
        LDR.N    R0,??DataTable0_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable0_3
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R5,R0
//   71        
//   72       
//   73        
//   74        if(1)//普通askman模型 外侧轮子加不上速度，以内侧轮子为中心  外侧轮子速度大于25 时 内侧减速
//   75        {
//   76          if(abs(STEER_MIDDLE-angle_pwm)<=sep)
        RSBS     R0,R4,#+1464
        BL       abs
        LDR.N    R1,??DataTable0_4
        LDR      R1,[R1, #+0]
        CMP      R1,R0
        BLT.N    ??PWMSetSteer_3
//   77          {
//   78            wanted_speed_L=wanted_speed;
        LDR.N    R0,??DataTable0_5
        LDR.N    R1,??DataTable0_2
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//   79            wanted_speed_R=wanted_speed;
        LDR.N    R0,??DataTable0_6
        LDR.N    R1,??DataTable0_2
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??PWMSetSteer_2
//   80          }
//   81          else
//   82          {
//   83              if((STEER_MIDDLE-angle_pwm)<=0)//good
??PWMSetSteer_3:
        RSBS     R0,R4,#+1464
        CMP      R0,#+1
        BGE.N    ??PWMSetSteer_4
//   84             {
//   85                 wanted_speed_R=wanted_speed-chasuzhi;
        LDR.N    R0,??DataTable0_2
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,R5
        LDR.N    R1,??DataTable0_6
        STR      R0,[R1, #+0]
//   86                 wanted_speed_L=wanted_speed+chasuzhi;
        LDR.N    R0,??DataTable0_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R5,R0
        LDR.N    R1,??DataTable0_5
        STR      R0,[R1, #+0]
//   87                 if(wanted_speed_L-true_speed_L>bili&&(true_speed_L-wanted_speed_R<=wanted_speed/6))//内侧减速肯定能达到
        LDR.N    R0,??DataTable0_7
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable0_5
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable0_8
        LDR      R2,[R2, #+0]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??PWMSetSteer_5
        LDR.N    R0,??DataTable0_2
        LDR      R0,[R0, #+0]
        MOVS     R1,#+6
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable0_8
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable0_6
        LDR      R2,[R2, #+0]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BLT.N    ??PWMSetSteer_5
//   88                     wanted_speed_R=wanted_speed_R-(wanted_speed_L-true_speed_L)*integral_b;
        LDR.N    R0,??DataTable0_6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.N    R0,??DataTable0_5
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable0_8
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable0_9
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable0_6
        STR      R0,[R1, #+0]
//   89                     
//   90               
//   91                 if(wanted_speed_R<=2*wanted_speed/3)
??PWMSetSteer_5:
        LDR.N    R0,??DataTable0_2
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable0_6
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??PWMSetSteer_2
//   92                     wanted_speed_R=2*wanted_speed/3;
        LDR.N    R0,??DataTable0_2
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable0_6
        STR      R0,[R1, #+0]
        B.N      ??PWMSetSteer_2
//   93             }
//   94              else
//   95             {
//   96                 wanted_speed_L=wanted_speed-chasuzhi;
??PWMSetSteer_4:
        LDR.N    R0,??DataTable0_2
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,R5
        LDR.N    R1,??DataTable0_5
        STR      R0,[R1, #+0]
//   97                 wanted_speed_R=wanted_speed+chasuzhi;
        LDR.N    R0,??DataTable0_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R5,R0
        LDR.N    R1,??DataTable0_6
        STR      R0,[R1, #+0]
//   98                 if(wanted_speed_R-true_speed_R>bili&&(true_speed_R-wanted_speed_L<=wanted_speed/6))//内侧减速肯定能达到
        LDR.N    R0,??DataTable0_7
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable0_6
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable0_10
        LDR      R2,[R2, #+0]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??PWMSetSteer_6
        LDR.N    R0,??DataTable0_2
        LDR      R0,[R0, #+0]
        MOVS     R1,#+6
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable0_10
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable0_5
        LDR      R2,[R2, #+0]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BLT.N    ??PWMSetSteer_6
//   99                     wanted_speed_L=wanted_speed_L-(wanted_speed_R-true_speed_R)*(integral_b+0.1);
        LDR.N    R0,??DataTable0_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable0_6
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable0_10
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable0_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable0_11  ;; 0x9999999a
        LDR.N    R3,??DataTable0_12  ;; 0x3fb99999
        BL       __aeabi_dadd
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R6
        MOVS     R1,R7
        BL       __aeabi_dsub
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable0_5
        STR      R0,[R1, #+0]
//  100                 if(wanted_speed_L<=2*wanted_speed/3)
??PWMSetSteer_6:
        LDR.N    R0,??DataTable0_2
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable0_5
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??PWMSetSteer_2
//  101                     wanted_speed_L=2*wanted_speed/3;
        LDR.N    R0,??DataTable0_2
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable0_5
        STR      R0,[R1, #+0]
//  102             }
//  103          }
//  104        }
//  105      
//  106     }
//  107  
//  108 
//  109 
//  110 }
??PWMSetSteer_2:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     PID_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     angle_p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     wanted_speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_3:
        DC32     k_chashu_speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_4:
        DC32     sep

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_5:
        DC32     wanted_speed_L

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_6:
        DC32     wanted_speed_R

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_7:
        DC32     bili

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_8:
        DC32     true_speed_L

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_9:
        DC32     integral_b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_10:
        DC32     true_speed_R

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_11:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_12:
        DC32     0x3fb99999
//  111 
//  112 
//  113 /********************************************************************
//  114 ** 函数名称: steerCtrl
//  115 ** 功能描述: 速度控制算法
//  116 ** 入口：
//  117 ** 出口：
//  118 ** 说明:  
//  119 *********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  120 void steerCtrl()
//  121 {
//  122     /*
//  123     int angle_pwm;
//  124     angle_pwm = 0;    //去除warning
//  125     
//  126     //自己的舵机控制算法
//  127     
//  128     
//  129     PWMSetSteer(angle_pwm) ; 
//  130     */ 
//  131 }
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
//  132 
//  133 
//  134 #if STEER_DOUBLE
//  135 void PWMSetSteer1(int angle_pwm)         
//  136 {
//  137     //占空比不能超过上限（防止过压）
//  138     //同时防止方向打死  
//  139     //这个保护措施是必要的
//  140     if(angle_pwm < STEER_RIGHT1)
//  141          angle_pwm = STEER_RIGHT1;
//  142     if(angle_pwm > STEER_LEFT1)
//  143          angle_pwm = STEER_LEFT1;
//  144     
//  145     
//  146     FTM_PWM_Duty(STEER_FTMN,STEER_FTMCH1,angle_pwm);
//  147 }
//  148 
//  149 
//  150 /********************************************************************
//  151 ** 函数名称: steerCtrl
//  152 ** 功能描述: 速度控制算法
//  153 ** 入口：
//  154 ** 出口：
//  155 ** 说明:  
//  156 *********************************************************************/
//  157 void steerCtrl1()
//  158 {
//  159     /*
//  160     int angle_pwm;
//  161     angle_pwm = 0;    //去除warning
//  162     
//  163     //自己的舵机控制算法
//  164     
//  165     
//  166     
//  167     PWMSetSteer1(angle_pwm) ;  
//  168     */
//  169 }
//  170 
//  171 #endif
// 
// 546 bytes in section .text
// 
// 546 bytes of CODE memory
//
//Errors: none
//Warnings: 3
