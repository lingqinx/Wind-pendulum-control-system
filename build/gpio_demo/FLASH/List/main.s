///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  20:44:22 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\projects /
//                    \gpio_demo\main.c                                       /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\projects /
//                    \gpio_demo\main.c -lCN C:\Users\Administrator\Desktop\M /
//                    PU60508.12\build\gpio_demo\FLASH\List\ -lB              /
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
//                    emo\FLASH\List\main.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN FTM_PWM_Duty
        EXTERN FTM_PWM_init
        EXTERN LED_INIT_xzm
        EXTERN MPU6050_Init
        EXTERN angle_xzm
        EXTERN delayms
        EXTERN distance_xzm
        EXTERN duty1
        EXTERN duty2
        EXTERN duty3
        EXTERN duty4
        EXTERN exti_init
        EXTERN gpio_init
        EXTERN gpio_set
        EXTERN is_over_1_xzm
        EXTERN is_over_2_xzm
        EXTERN is_over_3_xzm
        EXTERN is_over_4_xzm
        EXTERN number_xzm
        EXTERN pit_init
        EXTERN pit_irq_EN
        EXTERN uart_init
        EXTERN uart_irq_EN
        EXTERN xianshi

        PUBLIC main

// C:\Users\Administrator\Desktop\MPU60508.12\src\projects\gpio_demo\main.c
//    1 /*******************************************************************************
//    2                               北京邮电大学 K60 学习例程
//    3 
//    4 ------------------------------------------------
//    5 【dev.env.】IAR 6.3
//    6 【Target  】K60X256
//    7 【Crystal 】50.000Mhz
//    8 【busclock】48.000MHz
//    9 【pllclock】96.000MHz   
//   10 【 说  明 】仅做内部学习使用，请务外传
//   11 【 参  考 】野火嵌入式开发工作室
//   12             龙丘开发例程
//   13             苏州大学《嵌入式系统原理与实践》
//   14 【最后更新时间】2014-6-16   wuwenqi
//   15 
//   16 端口定义：  PTD【0,7】——Y【0,7】
//   17             PTB2——VSYN   场中断
//   18             PTB3——HREF   行中断
//   19             PTB9——PCLK
//   20             PTB0——SCL
//   21             PTB1——SDA
//   22 
//   23 ********************************************************************************/	
//   24 
//   25 #include "common.h"
//   26 #include "include.h"
//   27 #include "math.h"
//   28 
//   29 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   30 void main()
//   31 {
main:
        PUSH     {R7,LR}
//   32    
//   33   MPU6050_Init();
        BL       MPU6050_Init
//   34   uart_init (UART3,115200);
        MOVS     R1,#+115200
        MOVS     R0,#+3
        BL       uart_init
//   35   uart_irq_EN(UART3);
        MOVS     R0,#+3
        BL       uart_irq_EN
//   36   
//   37   uart_irq_EN(UART0);
        MOVS     R0,#+0
        BL       uart_irq_EN
//   38   LED_INIT_xzm();
        BL       LED_INIT_xzm
//   39   pit_init(PIT0,1000);
        MOV      R1,#+1000
        MOVS     R0,#+0
        BL       pit_init
//   40   //pit_init(PIT1,1);
//   41   pit_irq_EN(PIT0);
        MOVS     R0,#+0
        BL       pit_irq_EN
//   42   //pit_irq_EN(PIT1);
//   43    
//   44     gpio_init(PORTA,17,GPO,LOW);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_init
//   45     gpio_init(PORTA,16,GPO,LOW);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_init
//   46     gpio_init(PORTB, 3,GPO,LOW);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       gpio_init
//   47     gpio_init(PORTB, 2,GPO,LOW);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       gpio_init
//   48     
//   49     exti_init(PORTC, 6, rising_down);      //PORTC  6 端口外部中断初始化 ，上升沿触发中断，内部下拉
        MOVS     R2,#+9
        MOVS     R1,#+6
        MOVS     R0,#+2
        BL       exti_init
//   50     exti_init(PORTC, 7, rising_down);      //PORTC  7 端口外部中断初始化 ，上升沿触发中断，内部下拉
        MOVS     R2,#+9
        MOVS     R1,#+7
        MOVS     R0,#+2
        BL       exti_init
//   51     exti_init(PORTC, 0, rising_down);      //PORTC  0 端口外部中断初始化 ，上升沿触发中断，内部下拉
        MOVS     R2,#+9
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       exti_init
//   52     exti_init(PORTA,13, rising_down);      //PORTA 13 端口外部中断初始化 ，上升沿触发中断，内部下拉
        MOVS     R2,#+9
        MOVS     R1,#+13
        MOVS     R0,#+0
        BL       exti_init
//   53     exti_init(PORTA, 5, rising_down);      //PORTA  5 端口外部中断初始化 ，上升沿触发中断，内部下拉
        MOVS     R2,#+9
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       exti_init
//   54     exti_init(PORTE,24, rising_down);      //PORTE 24 端口外部中断初始化 ，高电平触发中断
        MOVS     R2,#+9
        MOVS     R1,#+24
        MOVS     R0,#+4
        BL       exti_init
//   55     exti_init(PORTE,25, rising_down);      //PORTE 25 端口外部中断初始化 ，高电平触发中断
        MOVS     R2,#+9
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       exti_init
//   56     exti_init(PORTE,26, rising_down);      //PORTE 26 端口外部中断初始化 ，高电平触发中断
        MOVS     R2,#+9
        MOVS     R1,#+26
        MOVS     R0,#+4
        BL       exti_init
//   57  
//   58         
//   59 
//   60   FTM_PWM_init(FTM0,CH0,1600,duty1);
        LDR.N    R0,??main_0
        LDR      R3,[R0, #+0]
        MOV      R2,#+1600
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_init
//   61   FTM_PWM_init(FTM0,CH1,1600,duty2);
        LDR.N    R0,??main_0+0x4
        LDR      R3,[R0, #+0]
        MOV      R2,#+1600
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_init
//   62   FTM_PWM_init(FTM0,CH2,1600,duty3);
        LDR.N    R0,??main_0+0x8
        LDR      R3,[R0, #+0]
        MOV      R2,#+1600
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       FTM_PWM_init
//   63   FTM_PWM_init(FTM0,CH3,1600,duty4);
        LDR.N    R0,??main_0+0xC
        LDR      R3,[R0, #+0]
        MOV      R2,#+1600
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       FTM_PWM_init
//   64   
//   65   //time_delay_ms(1000);
//   66               
//   67   //int count=0;
//   68   
//   69     while(1)
//   70     {
//   71       //uart0Printf("%d\n",number_xzm);
//   72       if(number_xzm==1)//题号1,2,3,4
??main_1:
        LDR.N    R0,??main_0+0x10
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_2
//   73       {
//   74         gpio_set(PORTB, 3,HIGH);  
        MOVS     R2,#+1
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       gpio_set
//   75         xianshi(is_over_1_xzm);
        LDR.N    R0,??main_0+0x14
        LDR      R0,[R0, #+0]
        BL       xianshi
//   76         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//   77         gpio_set(PORTB, 3,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       gpio_set
//   78         
//   79         gpio_set(PORTB, 2,HIGH);
        MOVS     R2,#+1
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       gpio_set
//   80         xianshi(0);
        MOVS     R0,#+0
        BL       xianshi
//   81         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//   82         gpio_set(PORTB, 2,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       gpio_set
//   83         
//   84         gpio_set(PORTA,16,HIGH);
        MOVS     R2,#+1
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_set
//   85         xianshi(0);
        MOVS     R0,#+0
        BL       xianshi
//   86         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//   87         gpio_set(PORTA,16,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_set
//   88         
//   89         gpio_set(PORTA,17,HIGH);
        MOVS     R2,#+1
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_set
//   90         xianshi(0);
        MOVS     R0,#+0
        BL       xianshi
//   91         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//   92         gpio_set(PORTA,17,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_set
//   93       }
//   94       if(number_xzm==2)//题号1,2,3,4
??main_2:
        LDR.N    R0,??main_0+0x10
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??main_3
//   95       {
//   96         gpio_set(PORTB, 3,HIGH);  
        MOVS     R2,#+1
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       gpio_set
//   97         xianshi(is_over_2_xzm);
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        BL       xianshi
//   98         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//   99         gpio_set(PORTB, 3,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       gpio_set
//  100         
//  101         gpio_set(PORTB, 2,HIGH);
        MOVS     R2,#+1
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       gpio_set
//  102         xianshi(0);
        MOVS     R0,#+0
        BL       xianshi
//  103         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//  104         gpio_set(PORTB, 2,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       gpio_set
//  105         
//  106         gpio_set(PORTA,16,HIGH);
        MOVS     R2,#+1
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_set
//  107         xianshi(distance_xzm/10);
        LDR.N    R0,??main_0+0x1C
        LDR      R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        BL       xianshi
//  108         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//  109         gpio_set(PORTA,16,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_set
//  110         
//  111         gpio_set(PORTA,17,HIGH);
        MOVS     R2,#+1
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_set
//  112         xianshi(distance_xzm%10);
        LDR.N    R0,??main_0+0x1C
        LDR      R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        BL       xianshi
//  113         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//  114         gpio_set(PORTA,17,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_set
//  115       }
//  116       if(number_xzm==3)//题号1,2,3,4
??main_3:
        LDR.N    R0,??main_0+0x10
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??main_4
//  117       {
//  118         gpio_set(PORTB, 3,HIGH);  
        MOVS     R2,#+1
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       gpio_set
//  119         xianshi(is_over_3_xzm);
        LDR.N    R0,??main_0+0x20
        LDR      R0,[R0, #+0]
        BL       xianshi
//  120         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//  121         gpio_set(PORTB, 3,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       gpio_set
//  122         
//  123         gpio_set(PORTB, 2,HIGH);
        MOVS     R2,#+1
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       gpio_set
//  124         xianshi(angle_xzm/100);
        LDR.N    R0,??main_0+0x24
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        BL       xianshi
//  125         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//  126         gpio_set(PORTB, 2,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       gpio_set
//  127         
//  128         gpio_set(PORTA,16,HIGH);
        MOVS     R2,#+1
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_set
//  129         xianshi((angle_xzm%100)/10);
        LDR.N    R0,??main_0+0x24
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        BL       xianshi
//  130         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//  131         gpio_set(PORTA,16,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_set
//  132         
//  133         gpio_set(PORTA,17,HIGH);
        MOVS     R2,#+1
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_set
//  134         xianshi(angle_xzm%10);
        LDR.N    R0,??main_0+0x24
        LDR      R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        BL       xianshi
//  135         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//  136         gpio_set(PORTA,17,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_set
//  137       }
//  138       if(number_xzm==4)//题号1,2,3,4
??main_4:
        LDR.N    R0,??main_0+0x10
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??main_5
//  139       {
//  140         gpio_set(PORTB, 3,HIGH);  
        MOVS     R2,#+1
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       gpio_set
//  141         xianshi(is_over_4_xzm);
        LDR.N    R0,??main_0+0x28
        LDR      R0,[R0, #+0]
        BL       xianshi
//  142         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//  143         gpio_set(PORTB, 3,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       gpio_set
//  144         
//  145         gpio_set(PORTB, 2,HIGH);
        MOVS     R2,#+1
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       gpio_set
//  146         xianshi(0);
        MOVS     R0,#+0
        BL       xianshi
//  147         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//  148         gpio_set(PORTB, 2,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       gpio_set
//  149         
//  150         gpio_set(PORTA,16,HIGH);
        MOVS     R2,#+1
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_set
//  151         xianshi(0);
        MOVS     R0,#+0
        BL       xianshi
//  152         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//  153         gpio_set(PORTA,16,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_set
//  154         
//  155         gpio_set(PORTA,17,HIGH);
        MOVS     R2,#+1
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_set
//  156         xianshi(0);
        MOVS     R0,#+0
        BL       xianshi
//  157         delayms(5);
        MOVS     R0,#+5
        BL       delayms
//  158         gpio_set(PORTA,17,LOW);
        MOVS     R2,#+0
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_set
//  159       }
//  160       
//  161         FTM_PWM_Duty(FTM0,CH0,duty1);
??main_5:
        LDR.N    R0,??main_0
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  162         FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.N    R0,??main_0+0x4
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  163         FTM_PWM_Duty(FTM0,CH2,duty3);
        LDR.N    R0,??main_0+0x8
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  164         FTM_PWM_Duty(FTM0,CH3,duty4);
        LDR.N    R0,??main_0+0xC
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
        B.N      ??main_1
        DATA
??main_0:
        DC32     duty1
        DC32     duty2
        DC32     duty3
        DC32     duty4
        DC32     number_xzm
        DC32     is_over_1_xzm
        DC32     is_over_2_xzm
        DC32     distance_xzm
        DC32     is_over_3_xzm
        DC32     angle_xzm
        DC32     is_over_4_xzm
//  165         
//  166         //time_delay_ms(900);                 //延时0.5s   
//  167        
//  168         //uart0Printf("xzm-%ld-%ld-%ld-%ld-%ld-%ld\n",ax,ay,az,wx,wy,wz);
//  169         
//  170        
//  171     }   
//  172 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  173 
//  174   
//  175  
// 
// 944 bytes in section .text
// 
// 944 bytes of CODE memory
//
//Errors: none
//Warnings: none
