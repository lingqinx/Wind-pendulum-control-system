///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  05:05:25 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\projects\SX_demo\ma /
//                    in.c                                                    /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\projects\SX_demo\ma /
//                    in.c -lCN D:\workspace\myworkspace\SW_K60\build\SX_demo /
//                    \RAM\List\ -lB D:\workspace\myworkspace\SW_K60\build\SX /
//                    _demo\RAM\List\ -o D:\workspace\myworkspace\SW_K60\buil /
//                    d\SX_demo\RAM\Obj\ --no_cse --no_unroll --no_inline     /
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
//                    main.s                                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME main

        #define SHT_PROGBITS 0x1

        EXTERN CCD_init
        EXTERN DIPswitch_ctrl
        EXTERN GetBlackLine
        EXTERN ShowPhoto
        EXTERN UARTx
        EXTERN WritePicBlack
        EXTERN WritePicTest
        EXTERN bus_clk_khz
        EXTERN delayms
        EXTERN enable_irq
        EXTERN lptmr_counter_init
        EXTERN motor_init
        EXTERN pit_init
        EXTERN showChoice
        EXTERN steer_init
        EXTERN time_delay_ms
        EXTERN uartPrintf
        EXTERN water_lights

        PUBLIC main

// D:\workspace\myworkspace\SW_K60\src\projects\SX_demo\main.c
//    1 /*******************************************************************************
//    2                               北京邮电大学 K60 学习例程
//    3 【例程名称】北京邮电大学摄像头组例程
//    4 【Designed】snowwolf
//    5 【E-mail  】snowwolf2012@qq.com
//    6 【软件版本】V1.0
//    7 【最后更新】2012年3月24日
//    8 ------------------------------------------------
//    9 【dev.env.】IAR 6.3
//   10 【Target  】K60X256
//   11 【Crystal 】50.000Mhz
//   12 【busclock】48.000MHz
//   13 【pllclock】96.000MHz   
//   14 【 说  明 】仅做内部学习使用，请勿外传
//   15 【 参  考 】野火嵌入式开发工作室
//   16             龙丘开发例程
//   17             苏州大学《嵌入式系统原理与实践》
//   18 
//   19 接口说明：
//   20           拨码开关：PA14    PA15    PA16    PA17
//   21           舵机    ：PA12    PA13
//   22           电机    ：PC1     PC2     PC3     PC4
//   23           行中断  ：PB18
//   24           场中断  ：PB19
//   25           Y0-Y7   : PD0-PD7  (数字摄像头or外部AD数据线)
//   26           PLCK    ：PA29    (需要用DMA的才要接这一个信号，PLCK经过4分频后接PA19)
//   27                     我是用HD74LS161AP做的分频电路
//   28           串口    ：PB16  PB17  波特率 115200  收不到信号可以把收发反转一个
//   29           编码器  ：PC5
//   30 需要修改主频的到 k60_bupt.h里修改（不建议修改）
//   31 ********************************************************************************/	
//   32 
//   33 
//   34 #include "common.h"
//   35 #include "include.h"
//   36 
//   37 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   38 void main()
//   39 {
main:
        PUSH     {R3-R5,LR}
//   40   DisableInterrupts;  
        CPSID i         
//   41   
//   42   uartPrintf("北京邮电大学摄像头组例程\n");
        LDR.N    R0,??main_0
        BL       uartPrintf
//   43   //初始化拨码开关
//   44   DIPswitch_ctrl();
        BL       DIPswitch_ctrl
//   45   //初始化舵机
//   46   steer_init();
        BL       steer_init
//   47   //电机初始化
//   48   motor_init();
        BL       motor_init
//   49   //摄像头初始化
//   50   CCD_init();
        BL       CCD_init
//   51   
//   52   //初始化PIT   100Hz  
//   53   pit_init(PIT0,100); 
        MOVS     R1,#+100
        MOVS     R0,#+0
        BL       pit_init
//   54   //使能PIT  测试时关闭  程序正常运行时使能
//   55   //除实验六七外都需要关闭使能
//   56   //PIT_IRQ_EN(PIT0);
//   57   //gpio_init(PORTD,0,GPO,0);   //用于测试PIT
//   58   
//   59   //初始化外部测速  接PC5   第二个参数用65535 否则计数提前清零 这是一个16位计数器
//   60   lptmr_counter_init(LPT0_ALT2,65535,2,LPT_Rising);   
        MOVS     R3,#+0
        MOVS     R2,#+2
        MOVW     R1,#+65535
        MOVS     R0,#+2
        BL       lptmr_counter_init
//   61   //打开串口中断
//   62   UART_IRQ_EN(UART0); 
        LDR.N    R0,??main_0+0x4
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??main_0+0x4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+3]
        MOVS     R0,#+45
        BL       enable_irq
//   63   EnableInterrupts;    
        CPSIE i         
//   64   while(1)
//   65   {
//   66 //以下 “1”表示打开当前测试程序，“0表示关闭”
//   67 //实验一
//   68 #if 0           //测试拨码开关     测试结果： 成功
//   69                 //操作把 PA14    PA15    PA16    PA17 接在拨码开关电路上（主板上是设计好的就是这几个引脚）
//   70                 uartPrintf("切换拔码开关观看效果\n");
//   71                 DIPswitch_ctrl();
//   72                 delayms(1000);
//   73 //实验二
//   74 #elif 0         //测试舵机        测试结果： 成功
//   75                 //操作  将PA12    PA13 接在示波器上，看波型  目前左右极限是200 - 5000 即1% -- 50%
//   76                 //100Hz
//   77                 u32 i = 0;
//   78                 
//   79                 //在 i = 0 和 i = 5500 时不在安全范围内应该不反应
//   80                 //占空比每一秒加5%
//   81                 for(i = 0;i<10500;i+=500)
//   82                 {
//   83                   uartPrintf("当前占空比 %d %%\n",i*100/FTM_PRECISON);
//   84                   PWMSetSteer(i) ; 
//   85 #if STEER_DOUBLE
//   86                   PWMSetSteer1(i) ;
//   87 #endif
//   88                   delayms(2000);
//   89                 }
//   90                 
//   91 //实验三
//   92 #elif 0         //测试电机        测试结果：成功
//   93                 //操作  将 PC1     PC2     PC3     PC4 接在示波器上，看波型
//   94                 int i = 0;
//   95                 //占空比每一秒加5%
//   96                 //范围 0%-100%
//   97                 //小于 0 是 PC2 PC4是有波型 PC1 PC3为0电平
//   98                 //大于 0 是 PC1 PC3是有波型 PC2 PC4为0电平
//   99                 for(i = -10000;i<10500;i+=500)
//  100                 {
//  101                   uartPrintf("当前占空比 %d %%\n",abs(i)*100/FTM_PRECISON);
//  102 #if MOTOR_DOUBLE
//  103                   PWMSetMotor2(i,i);  
//  104 #else
//  105                   PWMSetMotor(i);  
//  106 #endif            
//  107                   delayms(2000);
//  108                 }
//  109 //实验四
//  110 #elif 1         //测试中断法取图像  测试结果
//  111 #ifdef CCD_DMA
//  112       #error "这里是中断法采集图像，请注释掉 CCD_DMA!"            
//  113 #endif
//  114                 while(1)
//  115                 {
//  116                 uint32 tick0 = 0,tick1 = 0;	
??main_1:
        MOVS     R4,#+0
        MOVS     R5,#+0
//  117                 uartPrintf("\n输入 s  开始采集一幅图像\n");   
        LDR.N    R0,??main_0+0x8
        BL       uartPrintf
//  118                 if( (showChoice & 0x01) )
        LDR.N    R0,??main_0+0xC
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.W    ??main_2
//  119                  {
//  120                     uartPrintf("\n开始采集一幅图像\n");   
        LDR.N    R0,??main_0+0x10
        BL       uartPrintf
//  121                 
//  122                     PIT_RELOAD(PIT0,100); 
        LDR.N    R0,??main_0+0x14  ;; 0x40037108
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??main_0+0x14  ;; 0x40037108
        STR      R0,[R1, #+0]
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        LDR.N    R1,??main_0+0x1C  ;; 0x40037100
        STR      R0,[R1, #+0]
        LDR.N    R0,??main_0+0x14  ;; 0x40037108
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??main_0+0x14  ;; 0x40037108
        STR      R0,[R1, #+0]
//  123                     tick0 = GET_PITCNTus(PIT0);
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R4,R1,R0
//  124                     WritePicTest();WritePicTest();
        BL       WritePicTest
        BL       WritePicTest
//  125                     WritePicTest();WritePicTest();
        BL       WritePicTest
        BL       WritePicTest
//  126                     WritePicTest();WritePicTest();
        BL       WritePicTest
        BL       WritePicTest
//  127                     WritePicTest();WritePicTest();
        BL       WritePicTest
        BL       WritePicTest
//  128                     WritePicTest();WritePicTest();
        BL       WritePicTest
        BL       WritePicTest
//  129                     
//  130                     tick1 = GET_PITCNTus(PIT0);        
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R5,R1,R0
//  131                     uartPrintf("\n图像数据遍历10遍 用时：%d us\n",tick0 - tick1);
        SUBS     R1,R4,R5
        LDR.N    R0,??main_0+0x24
        BL       uartPrintf
//  132                    
//  133                     PIT_RELOAD(PIT0,100); 
        LDR.N    R0,??main_0+0x14  ;; 0x40037108
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??main_0+0x14  ;; 0x40037108
        STR      R0,[R1, #+0]
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        LDR.N    R1,??main_0+0x1C  ;; 0x40037100
        STR      R0,[R1, #+0]
        LDR.N    R0,??main_0+0x14  ;; 0x40037108
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??main_0+0x14  ;; 0x40037108
        STR      R0,[R1, #+0]
//  134                     tick0 = GET_PITCNTus(PIT0);
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R4,R1,R0
//  135                     //GetPhoto();    //这个函数里有开中断操作
//  136                     time_delay_ms(10);
        MOVS     R0,#+10
        BL       time_delay_ms
//  137                     tick1 = GET_PITCNTus(PIT0);        
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R5,R1,R0
//  138                     uartPrintf("\n采集到一幅图像 用时：%d us\n",tick0 - tick1);
        SUBS     R1,R4,R5
        LDR.N    R0,??main_0+0x28
        BL       uartPrintf
//  139                     
//  140                     PIT_RELOAD(PIT0,100); 
        LDR.N    R0,??main_0+0x14  ;; 0x40037108
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??main_0+0x14  ;; 0x40037108
        STR      R0,[R1, #+0]
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        LDR.N    R1,??main_0+0x1C  ;; 0x40037100
        STR      R0,[R1, #+0]
        LDR.N    R0,??main_0+0x14  ;; 0x40037108
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??main_0+0x14  ;; 0x40037108
        STR      R0,[R1, #+0]
//  141                     tick0 = GET_PITCNTus(PIT0);
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R4,R1,R0
//  142                     GetBlackLine() ;
        BL       GetBlackLine
//  143                     tick1 = GET_PITCNTus(PIT0);  
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R5,R1,R0
//  144                     uartPrintf("\n处理一幅图像 用时：%d us\n",tick0 - tick1);
        SUBS     R1,R4,R5
        LDR.N    R0,??main_0+0x2C
        BL       uartPrintf
//  145                     
//  146                     ShowPhoto();
        BL       ShowPhoto
//  147                     
//  148                     WritePicBlack();
        BL       WritePicBlack
//  149                     
//  150                     //SendCenterLine3(Line_Center_L, Line_Center, Line_Center_R);
//  151                     
//  152                     showChoice &= 0xFE;//采集结束
        LDR.N    R0,??main_0+0xC
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFE
        LDR.N    R1,??main_0+0xC
        STRB     R0,[R1, #+0]
//  153                     delayms(1000);
        MOV      R0,#+1000
        BL       delayms
//  154                 }//end of if
//  155                  water_lights();
??main_2:
        BL       water_lights
//  156                 delayms(1000);
        MOV      R0,#+1000
        BL       delayms
        B.N      ??main_1
        DATA
??main_0:
        DC32     `?<Constant "\\261\\261\\276\\251\\323\\312\\265\\347\\2`
        DC32     UARTx
        DC32     `?<Constant "\\n\\312\\344\\310\\353 s  \\277\\252\\312`
        DC32     showChoice
        DC32     `?<Constant "\\n\\277\\252\\312\\274\\262\\311\\274\\257`
        DC32     0x40037108
        DC32     bus_clk_khz
        DC32     0x40037100
        DC32     0x40037104
        DC32     `?<Constant "\\n\\315\\274\\317\\361\\312\\375\\276\\335`
        DC32     `?<Constant "\\n\\262\\311\\274\\257\\265\\275\\322\\273`
        DC32     `?<Constant "\\n\\264\\246\\300\\355\\322\\273\\267\\371`
//  157                 }
//  158                 
//  159 //实验五
//  160 #elif 0         //测试DMA法取图像  测试结果                
//  161 #ifndef CCD_DMA
//  162       #error "这里是DMA法采集图像，请定义 CCD_DMA!"            
//  163 #endif
//  164                 
//  165 //实验六
//  166 #elif 0         //测试PIT       测试结果： 成功  
//  167                   // 操作 :从初始化部分打开中断
//  168                          //设置PD0输出可以看到有一个650Hz的方波 说明PIT1300Hz正常
//  169                          
//  170                 
//  171 //实验七               
//  172 #elif 0         //测试外部测速   测试结果:  成功
//  173                 //从初始化部分打开中断
//  174                 //用 PWM 模拟编码器  将 PC1 与PC5短接
//  175                 int i = 0;  
//  176                 for(i = 1;i<60;i+=4)
//  177                 {
//  178                   FTM_PWM_freq(MOTOR_FTMN,i*1000) ;
//  179                   FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0, 5000);
//  180                   delayms(1000); 
//  181                   uartPrintf("当前PWM波频率%7dHz ",i*1000); 
//  182                   uartPrintf("10ms读取脉冲(速度):%4d个\n",trueSpeed); 
//  183              
//  184                 }
//  185 //实验八
//  186 #elif 0         //中断法读串口数据  测试结果 
//  187                 
//  188 #endif    
//  189     
//  190   }
//  191 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\261\\261\\276\\251\\323\\312\\265\\347\\2`:
        DATA
        DC8 "\261\261\276\251\323\312\265\347\264\363\321\247\311\343\317\361\315\267\327\351\300\375\263\314\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\312\\344\\310\\353 s  \\277\\252\\312`:
        DATA
        DC8 "\012\312\344\310\353 s  \277\252\312\274\262\311\274\257\322\273\267\371\315\274\317\361\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\277\\252\\312\\274\\262\\311\\274\\257`:
        DATA
        DC8 "\012\277\252\312\274\262\311\274\257\322\273\267\371\315\274\317\361\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\315\\274\\317\\361\\312\\375\\276\\335`:
        DATA
        DC8 "\012\315\274\317\361\312\375\276\335\261\351\300\37210\261\351 \323\303\312\261\243\272%d us\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\262\\311\\274\\257\\265\\275\\322\\273`:
        DATA
        DC8 "\012\262\311\274\257\265\275\322\273\267\371\315\274\317\361 \323\303\312\261\243\272%d us\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\264\\246\\300\\355\\322\\273\\267\\371`:
        DATA
        DC8 "\012\264\246\300\355\322\273\267\371\315\274\317\361 \323\303\312\261\243\272%d us\012"
        DC8 0

        END
// 
// 168 bytes in section .rodata
// 520 bytes in section .text
// 
// 520 bytes of CODE  memory
// 168 bytes of CONST memory
//
//Errors: none
//Warnings: none
