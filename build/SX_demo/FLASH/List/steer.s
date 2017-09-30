///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:47:34 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\src\drivers\steer\steer.c                        /
//    Command line =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\src\drivers\steer\steer.c -lCN                   /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\List\ -lB                    /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\List\ -o                     /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\Obj\ --no_cse --no_unroll    /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "E:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\ -I                             /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\common\ -I               /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\cpu\ -I                  /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\ -I              /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\gpio\ -I         /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\wdog\ -I         /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\mcg\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\uart\ -I         /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\lptmr\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\LED\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\fun\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\FTM\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\pit\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\DIPswitch\ -I    /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\steer\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\ccd\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\dma\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\motor\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\platforms\ -I            /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\projects\ -I             /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\projects\SX_demo\ -Ol    /
//    List file    =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\List\steer.s                 /
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

// C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л���IO����\src\drivers\steer\steer.c
//    1 /*
//    2 ************************************************************************
//    3 *                �����ʵ��ѧ K60 ѧϰ����                                        
//    4 * �ļ��� :[steer.c] 
//    5 * ��  �� �������������
//    6 *��ƸĽ���snowwolf
//    7 *  Email ��snowwolf2012@qq.com
//    8 * ˵  �� �������������
//    9 ***********************************************************************
//   10 */
//   11 
//   12 #include "steer.h"
//   13 
//   14 
//   15 
//   16 /********************************************************************
//   17 ** �������� : void steer_init() 
//   18 ** �������� : ���ö��ת��
//   19 ** ���     ��
//   20 ** ����     ��
//   21 ** ˵��     :  ��ʼ��PWM����ռ�ձ�
//   22 *********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 void steer_init()         
//   24 {
steer_init:
        PUSH     {R7,LR}
//   25     ASSERT_RST(STEER_INIT_VAL <= FTM_PRECISON,"���0���ֵ���ܳ���PWM����ֵ");        
//   26     FTM_PWM_init(STEER_FTMN,STEER_FTMCH,STEER_FREQ,STEER_INIT_VAL); 
        MOV      R3,#+1200
        MOVS     R2,#+100
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       FTM_PWM_init
//   27 #if STEER_DOUBLE
//   28     ASSERT_RST(STEER_INIT_VAL1 <= FTM_PRECISON,"������ֵ���ܳ���PWM����ֵ");
//   29     FTM_PWM_init(STEER_FTMN,STEER_FTMCH1,STEER_FREQ,STEER_INIT_VAL1); 
//   30 #endif
//   31 }
        POP      {R0,PC}          ;; return
//   32 
//   33 /********************************************************************
//   34 ** ��������: void PWMSetSteer(int angle_pwm) 
//   35 ** ��������: ���ö��ת��
//   36 ** ��ڣ��Ƕ�ֵ
//   37 ** ���ڣ�
//   38 ** ˵��:  
//   39 *********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 void PWMSetSteer(int angle_pwm)         
//   41 {
PWMSetSteer:
        PUSH     {R7,LR}
//   42     //ռ�ձȲ��ܳ������ޣ���ֹ��ѹ��
//   43     //ͬʱ��ֹ�������  
//   44     //���������ʩ�Ǳ�Ҫ��
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
//   55 ** ��������: steerCtrl
//   56 ** ��������: �ٶȿ����㷨
//   57 ** ��ڣ�
//   58 ** ���ڣ�
//   59 ** ˵��:  
//   60 *********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 void steerCtrl()
//   62 {
//   63     /*
//   64     int angle_pwm;
//   65     angle_pwm = 0;    //ȥ��warning
//   66     
//   67     //�Լ��Ķ�������㷨
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
//   78     //ռ�ձȲ��ܳ������ޣ���ֹ��ѹ��
//   79     //ͬʱ��ֹ�������  
//   80     //���������ʩ�Ǳ�Ҫ��
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
//   92 ** ��������: steerCtrl
//   93 ** ��������: �ٶȿ����㷨
//   94 ** ��ڣ�
//   95 ** ���ڣ�
//   96 ** ˵��:  
//   97 *********************************************************************/
//   98 void steerCtrl1()
//   99 {
//  100     /*
//  101     int angle_pwm;
//  102     angle_pwm = 0;    //ȥ��warning
//  103     
//  104     //�Լ��Ķ�������㷨
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
