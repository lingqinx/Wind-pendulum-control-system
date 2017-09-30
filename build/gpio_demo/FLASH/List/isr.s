///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  20:51:58 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\projects /
//                    \gpio_demo\isr.c                                        /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\projects /
//                    \gpio_demo\isr.c -lCN C:\Users\Administrator\Desktop\MP /
//                    U60508.12\build\gpio_demo\FLASH\List\ -lB               /
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
//                    emo\FLASH\List\isr.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN FTM_PWM_Duty
        EXTERN Pic_Buffer
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_i2d
        EXTERN a_xzm
        EXTERN angle_xzm
        EXTERN atan
        EXTERN ax_xzm
        EXTERN ay_xzm
        EXTERN az_xzm
        EXTERN cc
        EXTERN ccc
        EXTERN cccc
        EXTERN code_xzm
        EXTERN count_xzm
        EXTERN distance_xzm
        EXTERN duty1
        EXTERN duty2
        EXTERN duty3
        EXTERN duty4
        EXTERN edge_xzm
        EXTERN exti_irq_DIS
        EXTERN exti_irq_EN
        EXTERN gpio_get
        EXTERN is_over_1_xzm
        EXTERN is_over_2_xzm
        EXTERN is_over_3_xzm
        EXTERN is_over_4_xzm
        EXTERN number_xzm
        EXTERN photo_complete_flag
        EXTERN tmprow
        EXTERN uart0Printf
        EXTERN uartRecvChar
        EXTERN w_xzm
        EXTERN wx_last_xzm
        EXTERN wx_xzm
        EXTERN wy_last_xzm
        EXTERN wy_xzm
        EXTERN wz_xzm

        PUBLIC LPT_Handler
        PUBLIC LPT_INT_count
        PUBLIC PIT0_IRQHandler
        PUBLIC PIT1_IRQHandler
        PUBLIC PITcounter
        PUBLIC PORTA_IRQHandler
        PUBLIC PORTB_IRQHandler
        PUBLIC PORTC_IRQHandler
        PUBLIC PORTE_IRQHandler
        PUBLIC UART0_IRQHandler
        PUBLIC UART3_IRQHandler
        PUBLIC b_4_xzm
        PUBLIC b_60_xzm
        PUBLIC h_4_xzm
        PUBLIC h_60_xzm
        PUBLIC l_4_xzm
        PUBLIC l_60_xzm
        PUBLIC tmpline

// C:\Users\Administrator\Desktop\MPU60508.12\src\projects\gpio_demo\isr.c
//    1 #include "common.h"
//    2 #include "include.h"
//    3 #include "math.h"
//    4  
//    5 /**********************************************************************************
//    6 *  函数名称：void UART0_IRQHandler()
//    7 *  功能说明：串口中断处理函数
//    8 *  参数说明：无
//    9 *  函数返回：无
//   10 *  修改时间：2014-6-16  wuwenqi
//   11 *  备    注：
//   12 **********************************************************************************/	
//   13 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   14 void UART0_IRQHandler(void)
//   15 {
UART0_IRQHandler:
        PUSH     {R7,LR}
//   16   uint8 ch;
//   17 
//   18   //接收一个字节数据并回发
//   19    ch=uartRecvChar (UART0);      
        MOVS     R0,#+0
        BL       uartRecvChar
//   20    uart0Printf("Input = %c\n",ch);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,R0
        LDR.N    R0,??DataTable0
        BL       uart0Printf
//   21 /*
//   22   switch(ch){
//   23     //这里写发送给单片机的指令
//   24   case '0':
//   25     show_photo_data_flag = 1;
//   26      
//   27   break;
//   28   case 'p':
//   29     show_data_flag = 1;    
//   30   break;
//   31   case '9':
//   32     show_photo_data_flag = 2;
//   33     if( show_photo_data_flag == 2)
//   34      {
//   35         show_photo();
//   36         show_photo_data_flag = 0;
//   37      }    
//   38   break;
//   39   case '3':
//   40     show_photo_data_flag = 3;
//   41      if( show_photo_data_flag == 3)
//   42      {
//   43         uartPrintf("***************true_speed_L*******************\n ");
//   44        for(int i=0;i<=ab;i++)
//   45           uartPrintf("%d ",shuzu[i]);
//   46        uartPrintf("***************true_speed_R*******************\n ");
//   47        for(int i=0;i<=ab;i++)
//   48           uartPrintf("%d ",shuzuL[i]);
//   49        uartPrintf("***************bongbong*******************\n ");
//   50        for(int i=0;i<=ab;i++)
//   51           uartPrintf("%d ",shuzuR[i]);
//   52         show_photo_data_flag = 0;
//   53      }    
//   54   break;
//   55   case '4':
//   56     show_photo_data_flag = 4;    
//   57   break;
//   58   case '5':
//   59     show_photo_data_flag = 5;    
//   60     break;
//   61   case'6':
//   62     show_photo_flagg = 1;   
//   63   case 'r':
//   64     show_photo_data_flag = 6;    
//   65     break;
//   66   case 's':
//   67     show_photo_data_flag = 7;  
//   68     PIT_IRQ_DIS(PIT0);
//   69     
//   70     PWMSetMotor2(0,0);
//   71     
//   72     break;
//   73    case '8':
//   74     show_photo_data_flag = 8;    
//   75     break;
//   76  
//   77   default:
//   78     break;
//   79   }
//   80   show_parameter_flag = 1; // 显示输出信息*/
//   81 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     `?<Constant "Input = %c\\n">`
//   82 
//   83     
//   84 
//   85 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   86 int l_60_xzm = 11;
l_60_xzm:
        DATA
        DC32 11

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   87 int h_60_xzm = 349;
h_60_xzm:
        DATA
        DC32 349

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   88 int b_60_xzm = 9500;
b_60_xzm:
        DATA
        DC32 9500
//   89 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   90 int l_4_xzm = 5;
l_4_xzm:
        DATA
        DC32 5

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   91 int h_4_xzm = 355;
h_4_xzm:
        DATA
        DC32 355

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   92 int b_4_xzm = 10000;
b_4_xzm:
        DATA
        DC32 10000
//   93 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   94 void UART3_IRQHandler(void)
//   95 {
UART3_IRQHandler:
        PUSH     {R3-R5,LR}
//   96   uint8 ch;
//   97   
//   98   //接收一个字节数据并回发
//   99   if(number_xzm == 2 || number_xzm == 1)//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        LDR.W    R0,??UART3_IRQHandler_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??UART3_IRQHandler_1
        LDR.W    R0,??UART3_IRQHandler_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??UART3_IRQHandler_2
//  100   {
//  101     
//  102     int x=distance_xzm;
??UART3_IRQHandler_1:
        LDR.W    R0,??UART3_IRQHandler_0+0x4
        LDR      R0,[R0, #+0]
//  103     if(x>=50)
        CMP      R0,#+50
        BLT.N    ??UART3_IRQHandler_3
//  104       x=x+3;
        ADDS     R0,R0,#+3
//  105    if(number_xzm == 2) 
??UART3_IRQHandler_3:
        LDR.W    R1,??UART3_IRQHandler_0
        LDR      R1,[R1, #+0]
        CMP      R1,#+2
        BNE.N    ??UART3_IRQHandler_4
//  106    {
//  107    l_60_xzm = x/5-1; 
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        LDR.W    R1,??UART3_IRQHandler_0+0x8
        STR      R0,[R1, #+0]
//  108    h_60_xzm = 360 - l_60_xzm;
        LDR.W    R0,??UART3_IRQHandler_0+0x8
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+360
        LDR.W    R1,??UART3_IRQHandler_0+0xC
        STR      R0,[R1, #+0]
        B.N      ??UART3_IRQHandler_5
//  109    }
//  110    else
//  111    {
//  112      l_60_xzm = 11;
??UART3_IRQHandler_4:
        LDR.W    R0,??UART3_IRQHandler_0+0x8
        MOVS     R1,#+11
        STR      R1,[R0, #+0]
//  113      h_60_xzm = 349;
        LDR.W    R0,??UART3_IRQHandler_0+0xC
        MOVW     R1,#+349
        STR      R1,[R0, #+0]
//  114    }
//  115    
//  116    ch=uartRecvChar (UART3);
??UART3_IRQHandler_5:
        MOVS     R0,#+3
        BL       uartRecvChar
        MOVS     R4,R0
//  117    
//  118    FTM_PWM_Duty(FTM0,CH2,100);
        MOVS     R2,#+100
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  119    FTM_PWM_Duty(FTM0,CH3,100);
        MOVS     R2,#+100
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  120    
//  121    if(ch == 0x55)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+85
        BNE.N    ??UART3_IRQHandler_6
//  122    {
//  123        edge_xzm = 1;
        LDR.W    R0,??UART3_IRQHandler_7
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  124        w_xzm = 0;
        LDR.W    R0,??UART3_IRQHandler_0+0x10
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  125        a_xzm = 0;
        LDR.W    R0,??UART3_IRQHandler_0+0x14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  126        count_xzm = 1;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  127        code_xzm[0] = 0x42;
        LDR.W    R0,??UART3_IRQHandler_0+0x1C
        MOVS     R1,#+66
        STRB     R1,[R0, #+0]
//  128        code_xzm[count_xzm] = ch;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        STRB     R4,[R0, R1]
        B.N      ??UART3_IRQHandler_2
//  129    }
//  130    else if(edge_xzm == 1 && ch == 0x53)
??UART3_IRQHandler_6:
        LDR.W    R0,??UART3_IRQHandler_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UART3_IRQHandler_8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+83
        BNE.N    ??UART3_IRQHandler_8
//  131    {
//  132        count_xzm = count_xzm + 1;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??UART3_IRQHandler_0+0x18
        STR      R0,[R1, #+0]
//  133        code_xzm[count_xzm] = ch;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        STRB     R4,[R0, R1]
//  134        a_xzm = 1;
        LDR.W    R0,??UART3_IRQHandler_0+0x14
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        B.N      ??UART3_IRQHandler_2
//  135    }
//  136    else if(edge_xzm == 1 && ch == 0x52)
??UART3_IRQHandler_8:
        LDR.W    R0,??UART3_IRQHandler_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UART3_IRQHandler_9
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+82
        BNE.N    ??UART3_IRQHandler_9
//  137    {
//  138        count_xzm = count_xzm + 1;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??UART3_IRQHandler_0+0x18
        STR      R0,[R1, #+0]
//  139        code_xzm[count_xzm] = ch;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        STRB     R4,[R0, R1]
//  140        w_xzm = 1;
        LDR.W    R0,??UART3_IRQHandler_0+0x10
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        B.N      ??UART3_IRQHandler_2
//  141    }
//  142    
//  143    else
//  144    {
//  145      edge_xzm = 0;
??UART3_IRQHandler_9:
        LDR.W    R0,??UART3_IRQHandler_7
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  146      if(w_xzm == 1)//角速度
        LDR.W    R0,??UART3_IRQHandler_0+0x10
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??UART3_IRQHandler_10
//  147      {
//  148        if(count_xzm < 11)
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BGE.N    ??UART3_IRQHandler_11
//  149        {
//  150           count_xzm = count_xzm + 1;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??UART3_IRQHandler_0+0x18
        STR      R0,[R1, #+0]
//  151           code_xzm[count_xzm] = ch;  
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        STRB     R4,[R0, R1]
//  152        }
//  153        if(count_xzm == 11)
??UART3_IRQHandler_11:
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BNE.W    ??UART3_IRQHandler_10
//  154        {
//  155          wx_xzm = (((code_xzm[4]<<8)|code_xzm[3]))/32768.0*2000.0;
        LDR.W    R0,??UART3_IRQHandler_0+0x1C
        LDRB     R0,[R0, #+4]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        LDRB     R1,[R1, #+3]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_dmul
        LDR.W    R2,??UART3_IRQHandler_12+0x8
        STRD     R0,R1,[R2, #+0]
//  156          wy_xzm = (((code_xzm[6]<<8)|code_xzm[5]))/32768.0*2000.0;
        LDR.W    R0,??UART3_IRQHandler_0+0x1C
        LDRB     R0,[R0, #+6]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        LDRB     R1,[R1, #+5]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_dmul
        LDR.W    R2,??UART3_IRQHandler_12+0xC
        STRD     R0,R1,[R2, #+0]
//  157          wz_xzm = (((code_xzm[8]<<8)|code_xzm[7]))/32768.0*2000.0;
        LDR.W    R0,??UART3_IRQHandler_0+0x1C
        LDRB     R0,[R0, #+8]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        LDRB     R1,[R1, #+7]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable1
        STRD     R0,R1,[R2, #+0]
//  158          
//  159          //算角速度
//  160          if(wx_xzm>2000)
        LDR.W    R2,??UART3_IRQHandler_12+0x8
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_13
//  161            wx_xzm = wx_xzm - 4000;
        LDR.W    R0,??UART3_IRQHandler_12+0x8
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_1  ;; 0xc0af4000
        BL       __aeabi_dadd
        LDR.W    R2,??UART3_IRQHandler_12+0x8
        STRD     R0,R1,[R2, #+0]
//  162          if(wy_xzm>2000)
??UART3_IRQHandler_13:
        LDR.W    R2,??UART3_IRQHandler_12+0xC
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_14
//  163            wy_xzm = wy_xzm - 4000;
        LDR.W    R0,??UART3_IRQHandler_12+0xC
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_1  ;; 0xc0af4000
        BL       __aeabi_dadd
        LDR.W    R2,??UART3_IRQHandler_12+0xC
        STRD     R0,R1,[R2, #+0]
//  164          if(wz_xzm>2000)
??UART3_IRQHandler_14:
        LDR.W    R2,??DataTable1
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_15
//  165            wz_xzm = wz_xzm - 4000;
        LDR.W    R0,??DataTable1
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_1  ;; 0xc0af4000
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable1
        STRD     R0,R1,[R2, #+0]
//  166          
//  167          if(wy_xzm<0&&wy_last_xzm>0)
??UART3_IRQHandler_15:
        LDR.W    R2,??UART3_IRQHandler_12+0xC
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_16
        LDR.W    R2,??DataTable1_2
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdrcmple
        BCS.N    ??UART3_IRQHandler_16
//  168          {
//  169            if(ay_xzm>=l_60_xzm&&ay_xzm<180)
        LDR.W    R0,??UART3_IRQHandler_0+0x8
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R5,??DataTable1_3
        LDRD     R0,R1,[R5, #+0]
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_17
        LDR.W    R2,??DataTable1_3
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_17
//  170            {
//  171            duty1 = 100;
        LDR.W    R0,??DataTable1_5
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  172            duty2 = 100;
        LDR.W    R0,??DataTable1_6
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  173            //is_over_2_xzm = 1;
//  174            FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.W    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  175            FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.W    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
        B.N      ??UART3_IRQHandler_16
//  176            }
//  177            else if(ay_xzm<=h_60_xzm&&ay_xzm>180)
??UART3_IRQHandler_17:
        LDR.W    R0,??UART3_IRQHandler_0+0xC
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R5,??DataTable1_3
        LDRD     R2,R3,[R5, #+0]
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_18
        LDR.W    R2,??DataTable1_3
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_18
//  178            {
//  179            duty1=100;
        LDR.W    R0,??DataTable1_5
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  180            duty2=100;
        LDR.W    R0,??DataTable1_6
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  181            //is_over_2_xzm = 1;
//  182            FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.W    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  183            FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.W    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
        B.N      ??UART3_IRQHandler_16
//  184            }
//  185            else
//  186            {
//  187            duty1 = b_60_xzm;
??UART3_IRQHandler_18:
        LDR.W    R0,??DataTable1_5
        LDR.W    R1,??DataTable1_7
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  188            duty2 = 100;
        LDR.W    R0,??DataTable1_6
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  189            FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.W    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  190            FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.W    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  191            }
//  192          }
//  193          if(wy_xzm>0&&wy_last_xzm<0)
??UART3_IRQHandler_16:
        LDR.W    R2,??UART3_IRQHandler_12+0xC
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdrcmple
        BCS.N    ??UART3_IRQHandler_19
        LDR.W    R2,??DataTable1_2
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_19
//  194          {
//  195            if(ay_xzm>=l_60_xzm&&ay_xzm<180)
        LDR.W    R0,??UART3_IRQHandler_0+0x8
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R5,??DataTable1_3
        LDRD     R0,R1,[R5, #+0]
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_20
        LDR.W    R2,??DataTable1_3
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_20
//  196            {
//  197            duty2 = 100;
        LDR.W    R0,??DataTable1_6
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  198            duty1 = 100;
        LDR.W    R0,??DataTable1_5
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  199            //is_over_2_xzm = 1;
//  200            FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.W    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  201            FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.W    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
        B.N      ??UART3_IRQHandler_19
//  202            }
//  203            else if(ay_xzm<=h_60_xzm&&ay_xzm>180)
??UART3_IRQHandler_20:
        LDR.W    R0,??UART3_IRQHandler_0+0xC
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R5,??DataTable1_3
        LDRD     R2,R3,[R5, #+0]
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_21
        LDR.W    R2,??DataTable1_3
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_21
//  204            {
//  205            duty2=100;
        LDR.W    R0,??DataTable1_6
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  206            duty1=100;
        LDR.W    R0,??DataTable1_5
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  207            //is_over_2_xzm = 1;
//  208            FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.W    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  209            FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.W    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
        B.N      ??UART3_IRQHandler_19
//  210            }
//  211            else
//  212            {
//  213            duty2 = b_60_xzm;
??UART3_IRQHandler_21:
        LDR.W    R0,??DataTable1_6
        LDR.W    R1,??DataTable1_7
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  214            duty1 = 100;
        LDR.W    R0,??DataTable1_5
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  215            FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.W    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  216            FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.W    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  217            }
//  218          }
//  219          wy_last_xzm = wy_xzm;
??UART3_IRQHandler_19:
        LDR.W    R0,??DataTable1_2
        LDR.W    R1,??UART3_IRQHandler_12+0xC
        LDRD     R2,R3,[R1, #+0]
        STRD     R2,R3,[R0, #+0]
//  220          //uart0Printf("\nwx:%lf\nwy:%lf\nwz:%lf\n",wx_xzm,wy_xzm,wz_xzm);   
//  221        }
//  222      }
//  223      if(a_xzm == 1)//角度
??UART3_IRQHandler_10:
        LDR.W    R0,??UART3_IRQHandler_0+0x14
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??UART3_IRQHandler_2
//  224      {
//  225        if(count_xzm < 11)
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BGE.N    ??UART3_IRQHandler_22
//  226        {
//  227           count_xzm = count_xzm + 1;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??UART3_IRQHandler_0+0x18
        STR      R0,[R1, #+0]
//  228           code_xzm[count_xzm] = ch;  
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        STRB     R4,[R0, R1]
//  229        }
//  230        if(count_xzm == 11)
??UART3_IRQHandler_22:
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BNE.W    ??UART3_IRQHandler_2
//  231        {
//  232          ax_xzm = (((code_xzm[4]<<8)|code_xzm[3]))/32768.0*180.0;
        LDR.W    R0,??UART3_IRQHandler_0+0x1C
        LDRB     R0,[R0, #+4]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        LDRB     R1,[R1, #+3]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable2
        STRD     R0,R1,[R2, #+0]
//  233          ay_xzm = (((code_xzm[6]<<8)|code_xzm[5]))/32768.0*180.0;
        LDR.W    R0,??UART3_IRQHandler_0+0x1C
        LDRB     R0,[R0, #+6]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        LDRB     R1,[R1, #+5]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable1_3
        STRD     R0,R1,[R2, #+0]
//  234          az_xzm = (((code_xzm[8]<<8)|code_xzm[7]))/32768.0*180.0;
        LDR.W    R0,??UART3_IRQHandler_0+0x1C
        LDRB     R0,[R0, #+8]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        LDRB     R1,[R1, #+7]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable2_1
        STRD     R0,R1,[R2, #+0]
//  235          
//  236          //算角度
//  237          if(ay_xzm>=l_60_xzm+8&&ay_xzm<180)
        LDR.W    R0,??UART3_IRQHandler_0+0x8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+8
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R4,??DataTable1_3
        LDRD     R0,R1,[R4, #+0]
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_23
        LDR.W    R2,??DataTable1_3
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_23
//  238          {
//  239            if(number_xzm == 2)
        LDR.W    R0,??UART3_IRQHandler_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??UART3_IRQHandler_24
//  240              is_over_2_xzm = 1;
        LDR.W    R0,??DataTable2_2
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        B.N      ??UART3_IRQHandler_23
//  241            else
//  242              is_over_1_xzm = 1;
??UART3_IRQHandler_24:
        LDR.W    R0,??DataTable2_3
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  243          }
//  244          if(ay_xzm>=l_60_xzm&&ay_xzm<180)
??UART3_IRQHandler_23:
        LDR.W    R0,??UART3_IRQHandler_0+0x8
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R4,??DataTable1_3
        LDRD     R0,R1,[R4, #+0]
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_25
        LDR.W    R2,??DataTable1_3
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_25
//  245          {
//  246            duty1=100;
        LDR.W    R0,??DataTable1_5
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  247            duty2=100;
        LDR.W    R0,??DataTable1_6
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  248            FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.W    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  249            FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.W    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  250          }
//  251          if(ay_xzm<=h_60_xzm-8&&ay_xzm>180)
??UART3_IRQHandler_25:
        LDR.W    R0,??UART3_IRQHandler_0+0xC
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+8
        BL       __aeabi_i2d
        LDR.W    R4,??DataTable1_3
        LDRD     R2,R3,[R4, #+0]
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_26
        LDR.W    R2,??DataTable1_3
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_26
//  252          {
//  253            if(number_xzm == 2)
        LDR.W    R0,??UART3_IRQHandler_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??UART3_IRQHandler_27
//  254              is_over_2_xzm = 1;
        LDR.W    R0,??DataTable2_2
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        B.N      ??UART3_IRQHandler_26
//  255            else
//  256              is_over_1_xzm = 1;
??UART3_IRQHandler_27:
        LDR.W    R0,??DataTable2_3
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  257          }
//  258          if(ay_xzm<=h_60_xzm&&ay_xzm>180)
??UART3_IRQHandler_26:
        LDR.W    R0,??UART3_IRQHandler_0+0xC
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R4,??DataTable1_3
        LDRD     R2,R3,[R4, #+0]
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_28
        LDR.W    R2,??DataTable1_3
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_28
//  259          {
//  260            duty1=100;
        LDR.W    R0,??DataTable1_5
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  261            duty2=100; 
        LDR.W    R0,??DataTable1_6
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  262            FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.W    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  263            FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.W    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  264          }
//  265          if(ay_xzm<l_60_xzm)
??UART3_IRQHandler_28:
        LDR.W    R0,??UART3_IRQHandler_0+0x8
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R4,??DataTable1_3
        LDRD     R0,R1,[R4, #+0]
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_29
//  266          {
//  267            duty1=b_60_xzm;
        LDR.W    R0,??DataTable1_5
        LDR.W    R1,??DataTable1_7
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  268            duty2=100;
        LDR.W    R0,??DataTable1_6
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  269            
//  270            FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.W    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  271            FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.W    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  272          }
//  273          if(ay_xzm>h_60_xzm)
??UART3_IRQHandler_29:
        LDR.W    R0,??UART3_IRQHandler_0+0xC
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R4,??DataTable1_3
        LDRD     R2,R3,[R4, #+0]
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_2
//  274          {
//  275            duty1=100;
        LDR.W    R0,??DataTable1_5
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  276            duty2=b_60_xzm;
        LDR.W    R0,??DataTable1_6
        LDR.W    R1,??DataTable1_7
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  277            
//  278            FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.W    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  279            FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.W    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  280          }
//  281          //uart0Printf("\nax:%lf\nay:%lf\naz:%lf\n",ax_xzm,ay_xzm,az_xzm);   
//  282        }
//  283       }  
//  284        //xzm=0x42;
//  285    }
//  286   }
//  287   if(number_xzm == 3)/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
??UART3_IRQHandler_2:
        LDR.W    R0,??UART3_IRQHandler_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.W    ??UART3_IRQHandler_30
//  288   {
//  289     ch=uartRecvChar (UART3);
        MOVS     R0,#+3
        BL       uartRecvChar
        MOVS     R4,R0
//  290    if(ch == 0x55)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+85
        BNE.N    ??UART3_IRQHandler_31
//  291    {
//  292        edge_xzm = 1;
        LDR.W    R0,??UART3_IRQHandler_7
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  293        w_xzm = 0;
        LDR.W    R0,??UART3_IRQHandler_0+0x10
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  294        a_xzm = 0;
        LDR.W    R0,??UART3_IRQHandler_0+0x14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  295        count_xzm = 1;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  296        code_xzm[0] = 0x42;
        LDR.W    R0,??UART3_IRQHandler_0+0x1C
        MOVS     R1,#+66
        STRB     R1,[R0, #+0]
//  297        code_xzm[count_xzm] = ch;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        STRB     R4,[R0, R1]
        B.N      ??UART3_IRQHandler_30
//  298    }
//  299    else if(edge_xzm == 1 && ch == 0x53)
??UART3_IRQHandler_31:
        LDR.W    R0,??UART3_IRQHandler_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UART3_IRQHandler_32
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+83
        BNE.N    ??UART3_IRQHandler_32
//  300    {
//  301        count_xzm = count_xzm + 1;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??UART3_IRQHandler_0+0x18
        STR      R0,[R1, #+0]
//  302        code_xzm[count_xzm] = ch;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        STRB     R4,[R0, R1]
//  303        a_xzm = 1;
        LDR.W    R0,??UART3_IRQHandler_0+0x14
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        B.N      ??UART3_IRQHandler_30
//  304    }
//  305    else if(edge_xzm == 1 && ch == 0x52)
??UART3_IRQHandler_32:
        LDR.W    R0,??UART3_IRQHandler_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UART3_IRQHandler_33
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+82
        BNE.N    ??UART3_IRQHandler_33
//  306    {
//  307        count_xzm = count_xzm + 1;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??UART3_IRQHandler_0+0x18
        STR      R0,[R1, #+0]
//  308        code_xzm[count_xzm] = ch;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??UART3_IRQHandler_0+0x1C
        STRB     R4,[R0, R1]
//  309        w_xzm = 1;
        LDR.W    R0,??UART3_IRQHandler_0+0x10
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        B.N      ??UART3_IRQHandler_30
//  310    }
//  311    
//  312    else
//  313    {
//  314      edge_xzm = 0;
??UART3_IRQHandler_33:
        LDR.W    R0,??UART3_IRQHandler_7
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  315      if(w_xzm == 1)//角速度
        LDR.W    R0,??UART3_IRQHandler_0+0x10
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??UART3_IRQHandler_34
//  316      {
//  317        if(count_xzm < 11)
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BGE.N    ??UART3_IRQHandler_35
//  318        {
//  319           count_xzm = count_xzm + 1;
        LDR.W    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??UART3_IRQHandler_0+0x18
        STR      R0,[R1, #+0]
//  320           code_xzm[count_xzm] = ch;  
        LDR.N    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??UART3_IRQHandler_0+0x1C
        STRB     R4,[R0, R1]
//  321        }
//  322        if(count_xzm == 11)
??UART3_IRQHandler_35:
        LDR.N    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BNE.W    ??UART3_IRQHandler_34
//  323        {
//  324          wx_xzm = (((code_xzm[4]<<8)|code_xzm[3]))/32768.0*2000.0;
        LDR.N    R0,??UART3_IRQHandler_0+0x1C
        LDRB     R0,[R0, #+4]
        LDR.N    R1,??UART3_IRQHandler_0+0x1C
        LDRB     R1,[R1, #+3]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_dmul
        LDR.W    R2,??UART3_IRQHandler_12+0x8
        STRD     R0,R1,[R2, #+0]
//  325          wy_xzm = (((code_xzm[6]<<8)|code_xzm[5]))/32768.0*2000.0;
        LDR.N    R0,??UART3_IRQHandler_0+0x1C
        LDRB     R0,[R0, #+6]
        LDR.N    R1,??UART3_IRQHandler_0+0x1C
        LDRB     R1,[R1, #+5]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_dmul
        LDR.W    R2,??UART3_IRQHandler_12+0xC
        STRD     R0,R1,[R2, #+0]
//  326          wz_xzm = (((code_xzm[8]<<8)|code_xzm[7]))/32768.0*2000.0;
        LDR.N    R0,??UART3_IRQHandler_0+0x1C
        LDRB     R0,[R0, #+8]
        LDR.N    R1,??UART3_IRQHandler_0+0x1C
        LDRB     R1,[R1, #+7]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable1
        STRD     R0,R1,[R2, #+0]
//  327          
//  328          //算角速度
//  329          if(wx_xzm>2000)
        LDR.W    R2,??UART3_IRQHandler_12+0x8
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_36
//  330            wx_xzm = wx_xzm - 4000;
        LDR.W    R0,??UART3_IRQHandler_12+0x8
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_1  ;; 0xc0af4000
        BL       __aeabi_dadd
        LDR.W    R2,??UART3_IRQHandler_12+0x8
        STRD     R0,R1,[R2, #+0]
//  331          if(wy_xzm>2000)
??UART3_IRQHandler_36:
        LDR.W    R2,??UART3_IRQHandler_12+0xC
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_37
//  332            wy_xzm = wy_xzm - 4000;
        LDR.W    R0,??UART3_IRQHandler_12+0xC
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_1  ;; 0xc0af4000
        BL       __aeabi_dadd
        LDR.W    R2,??UART3_IRQHandler_12+0xC
        STRD     R0,R1,[R2, #+0]
//  333          if(wz_xzm>2000)
??UART3_IRQHandler_37:
        LDR.W    R2,??DataTable1
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_38
//  334            wz_xzm = wz_xzm - 4000;
        LDR.W    R0,??DataTable1
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_1  ;; 0xc0af4000
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable1
        STRD     R0,R1,[R2, #+0]
//  335          
//  336          
//  337          wy_last_xzm = wy_xzm;
??UART3_IRQHandler_38:
        LDR.W    R0,??DataTable1_2
        LDR.W    R1,??UART3_IRQHandler_12+0xC
        LDRD     R2,R3,[R1, #+0]
        STRD     R2,R3,[R0, #+0]
//  338          //uart0Printf("\nwx:%lf\nwy:%lf\nwz:%lf\n",wx_xzm,wy_xzm,wz_xzm);   
//  339        }
//  340      }
//  341      if(a_xzm == 1)//角度
??UART3_IRQHandler_34:
        LDR.N    R0,??UART3_IRQHandler_0+0x14
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??UART3_IRQHandler_30
//  342      {
//  343        if(count_xzm < 11)
        LDR.N    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BGE.N    ??UART3_IRQHandler_39
//  344        {
//  345           count_xzm = count_xzm + 1;
        LDR.N    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??UART3_IRQHandler_0+0x18
        STR      R0,[R1, #+0]
//  346           code_xzm[count_xzm] = ch;  
        LDR.N    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??UART3_IRQHandler_0+0x1C
        STRB     R4,[R0, R1]
//  347        }
//  348        if(count_xzm == 11)
??UART3_IRQHandler_39:
        LDR.N    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BNE.W    ??UART3_IRQHandler_30
//  349        {
//  350          ax_xzm = (((code_xzm[4]<<8)|code_xzm[3]))/32768.0*180.0;
        LDR.N    R0,??UART3_IRQHandler_0+0x1C
        LDRB     R0,[R0, #+4]
        LDR.N    R1,??UART3_IRQHandler_0+0x1C
        LDRB     R1,[R1, #+3]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable2
        STRD     R0,R1,[R2, #+0]
//  351          ay_xzm = (((code_xzm[6]<<8)|code_xzm[5]))/32768.0*180.0;
        LDR.N    R0,??UART3_IRQHandler_0+0x1C
        LDRB     R0,[R0, #+6]
        LDR.N    R1,??UART3_IRQHandler_0+0x1C
        LDRB     R1,[R1, #+5]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable1_3
        STRD     R0,R1,[R2, #+0]
//  352          az_xzm = (((code_xzm[8]<<8)|code_xzm[7]))/32768.0*180.0;
        LDR.N    R0,??UART3_IRQHandler_0+0x1C
        LDRB     R0,[R0, #+8]
        LDR.N    R1,??UART3_IRQHandler_0+0x1C
        LDRB     R1,[R1, #+7]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable2_1
        STRD     R0,R1,[R2, #+0]
//  353          
//  354          if(ax_xzm>180)
        LDR.W    R2,??DataTable2
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_40
//  355            ax_xzm=ax_xzm-360;
        LDR.W    R0,??DataTable2
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5  ;; 0xc0768000
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable2
        STRD     R0,R1,[R2, #+0]
//  356          if(ay_xzm>180)
??UART3_IRQHandler_40:
        LDR.W    R2,??DataTable1_3
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_41
//  357            ay_xzm=ay_xzm-360;
        LDR.W    R0,??DataTable1_3
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5  ;; 0xc0768000
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable1_3
        STRD     R0,R1,[R2, #+0]
//  358          if(az_xzm>180)
??UART3_IRQHandler_41:
        LDR.W    R2,??DataTable2_1
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.W    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_42
//  359            az_xzm=az_xzm-360;
        LDR.W    R0,??DataTable2_1
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5  ;; 0xc0768000
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable2_1
        STRD     R0,R1,[R2, #+0]
//  360          
//  361          ax_xzm = ax_xzm + 2.19;
??UART3_IRQHandler_42:
        LDR.W    R0,??DataTable2
        LDRD     R2,R3,[R0, #+0]
        LDR.W    R0,??DataTable5_1  ;; 0xb851eb85
        LDR.W    R1,??DataTable5_2  ;; 0x4001851e
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable2
        STRD     R0,R1,[R2, #+0]
//  362          ay_xzm = ay_xzm - 1.88;
        LDR.W    R0,??DataTable1_3
        LDRD     R2,R3,[R0, #+0]
        LDR.W    R0,??DataTable5_3  ;; 0xe147ae14
        LDR.W    R1,??DataTable5_4  ;; 0xbffe147a
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable1_3
        STRD     R0,R1,[R2, #+0]
//  363          
//  364          double result_xzm;
//  365          result_xzm=atan(ax_xzm/ay_xzm)*(180/3.141592);
        LDR.W    R2,??DataTable2
        LDRD     R0,R1,[R2, #+0]
        LDR.W    R4,??DataTable1_3
        LDRD     R2,R3,[R4, #+0]
        BL       __aeabi_ddiv
        BL       atan
        LDR.W    R2,??DataTable5_5  ;; 0x7e61df46
        LDR.W    R3,??DataTable5_6  ;; 0x404ca5dc
        BL       __aeabi_dmul
//  366          
//  367          
//  368          
//  369          //算角速度
//  370          //uart0Printf("ax:%lf\nay:%lf\naz:%lf\n-----%lf\n",ax_xzm,ay_xzm,az_xzm,result_xzm);   
//  371        }
//  372       }  
//  373        //xzm=0x42;
//  374    }    
//  375   }
//  376    if(number_xzm == 4)//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
??UART3_IRQHandler_30:
        LDR.N    R0,??UART3_IRQHandler_0
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.W    ??UART3_IRQHandler_43
//  377   {
//  378    
//  379     
//  380    ch=uartRecvChar (UART3);
        MOVS     R0,#+3
        BL       uartRecvChar
        MOVS     R4,R0
//  381    
//  382    if(ch == 0x55)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+85
        BNE.N    ??UART3_IRQHandler_44
//  383    {
//  384        edge_xzm = 1;
        LDR.W    R0,??UART3_IRQHandler_7
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  385        w_xzm = 0;
        LDR.N    R0,??UART3_IRQHandler_0+0x10
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  386        a_xzm = 0;
        LDR.N    R0,??UART3_IRQHandler_0+0x14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  387        count_xzm = 1;
        LDR.N    R0,??UART3_IRQHandler_0+0x18
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  388        code_xzm[0] = 0x42;
        LDR.N    R0,??UART3_IRQHandler_0+0x1C
        MOVS     R1,#+66
        STRB     R1,[R0, #+0]
//  389        code_xzm[count_xzm] = ch;
        LDR.N    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??UART3_IRQHandler_0+0x1C
        STRB     R4,[R0, R1]
        B.N      ??UART3_IRQHandler_43
//  390    }
//  391    else if(edge_xzm == 1 && ch == 0x53)
??UART3_IRQHandler_44:
        LDR.W    R0,??UART3_IRQHandler_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UART3_IRQHandler_45
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+83
        BNE.N    ??UART3_IRQHandler_45
//  392    {
//  393        count_xzm = count_xzm + 1;
        LDR.N    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??UART3_IRQHandler_0+0x18
        STR      R0,[R1, #+0]
//  394        code_xzm[count_xzm] = ch;
        LDR.N    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??UART3_IRQHandler_0+0x1C
        STRB     R4,[R0, R1]
//  395        a_xzm = 1;
        LDR.N    R0,??UART3_IRQHandler_0+0x14
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        B.N      ??UART3_IRQHandler_43
//  396    }
//  397    else if(edge_xzm == 1 && ch == 0x52)
??UART3_IRQHandler_45:
        LDR.N    R0,??UART3_IRQHandler_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UART3_IRQHandler_46
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+82
        BNE.N    ??UART3_IRQHandler_46
//  398    {
//  399        count_xzm = count_xzm + 1;
        LDR.N    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??UART3_IRQHandler_0+0x18
        STR      R0,[R1, #+0]
//  400        code_xzm[count_xzm] = ch;
        LDR.N    R0,??UART3_IRQHandler_0+0x18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??UART3_IRQHandler_0+0x1C
        STRB     R4,[R0, R1]
//  401        w_xzm = 1;
        LDR.N    R0,??UART3_IRQHandler_0+0x10
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        B.N      ??UART3_IRQHandler_43
        DATA
??UART3_IRQHandler_0:
        DC32     number_xzm
        DC32     distance_xzm
        DC32     l_60_xzm
        DC32     h_60_xzm
        DC32     w_xzm
        DC32     a_xzm
        DC32     count_xzm
        DC32     code_xzm
        THUMB
//  402    }
//  403    
//  404    else
//  405    {
//  406      edge_xzm = 0;
??UART3_IRQHandler_46:
        LDR.N    R0,??UART3_IRQHandler_7
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  407      if(w_xzm == 1)//角速度
        LDR.W    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??UART3_IRQHandler_47
//  408      {
//  409        if(count_xzm < 11)
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BGE.N    ??UART3_IRQHandler_48
//  410        {
//  411           count_xzm = count_xzm + 1;
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable5_8
        STR      R0,[R1, #+0]
//  412           code_xzm[count_xzm] = ch;  
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable5_9
        STRB     R4,[R0, R1]
//  413        }
//  414        if(count_xzm == 11)
??UART3_IRQHandler_48:
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BNE.W    ??UART3_IRQHandler_47
//  415        {
//  416          wx_xzm = (((code_xzm[4]<<8)|code_xzm[3]))/32768.0*2000.0;
        LDR.W    R0,??DataTable5_9
        LDRB     R0,[R0, #+4]
        LDR.W    R1,??DataTable5_9
        LDRB     R1,[R1, #+3]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_dmul
        LDR.N    R2,??UART3_IRQHandler_12+0x8
        STRD     R0,R1,[R2, #+0]
//  417          wy_xzm = (((code_xzm[6]<<8)|code_xzm[5]))/32768.0*2000.0;
        LDR.W    R0,??DataTable5_9
        LDRB     R0,[R0, #+6]
        LDR.W    R1,??DataTable5_9
        LDRB     R1,[R1, #+5]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_dmul
        LDR.N    R2,??UART3_IRQHandler_12+0xC
        STRD     R0,R1,[R2, #+0]
//  418          wz_xzm = (((code_xzm[8]<<8)|code_xzm[7]))/32768.0*2000.0;
        LDR.W    R0,??DataTable5_9
        LDRB     R0,[R0, #+8]
        LDR.W    R1,??DataTable5_9
        LDRB     R1,[R1, #+7]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??UART3_IRQHandler_12  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable1
        STRD     R0,R1,[R2, #+0]
//  419          
//  420          //算角速度
//  421          if(wx_xzm>2000)
        LDR.N    R2,??UART3_IRQHandler_12+0x8
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.N    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_49
//  422            wx_xzm = wx_xzm - 4000;
        LDR.N    R0,??UART3_IRQHandler_12+0x8
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_1  ;; 0xc0af4000
        BL       __aeabi_dadd
        LDR.N    R2,??UART3_IRQHandler_12+0x8
        STRD     R0,R1,[R2, #+0]
//  423          if(wy_xzm>2000)
??UART3_IRQHandler_49:
        LDR.N    R2,??UART3_IRQHandler_12+0xC
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.N    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_50
//  424            wy_xzm = wy_xzm - 4000;
        LDR.N    R0,??UART3_IRQHandler_12+0xC
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1  ;; 0xc0af4000
        BL       __aeabi_dadd
        LDR.N    R2,??UART3_IRQHandler_12+0xC
        STRD     R0,R1,[R2, #+0]
//  425          if(wz_xzm>2000)
??UART3_IRQHandler_50:
        LDR.N    R2,??DataTable1
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+1
        LDR.N    R3,??UART3_IRQHandler_12+0x4  ;; 0x409f4000
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_51
//  426            wz_xzm = wz_xzm - 4000;
        LDR.N    R0,??DataTable1
        LDRD     R2,R3,[R0, #+0]
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1  ;; 0xc0af4000
        BL       __aeabi_dadd
        LDR.N    R2,??DataTable1
        STRD     R0,R1,[R2, #+0]
//  427           
//  428          if(wy_xzm<0)
??UART3_IRQHandler_51:
        LDR.N    R2,??UART3_IRQHandler_12+0xC
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_52
//  429           {
//  430              if((ay_xzm < l_4_xzm || ay_xzm > h_4_xzm)&&(wy_xzm>-7))
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R5,??DataTable1_3
        LDRD     R0,R1,[R5, #+0]
        BL       __aeabi_cdcmple
        BCC.N    ??UART3_IRQHandler_53
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.N    R5,??DataTable1_3
        LDRD     R2,R3,[R5, #+0]
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_54
??UART3_IRQHandler_53:
        LDR.N    R2,??UART3_IRQHandler_12+0xC
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#-1
        LDR.W    R3,??DataTable6_2  ;; 0xc01bffff
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_54
//  431              {
//  432               duty1=100; 
        LDR.N    R0,??DataTable1_5
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  433          //     duty2=10000;
//  434               duty2=8000;
        LDR.N    R0,??DataTable1_6
        MOV      R1,#+8000
        STR      R1,[R0, #+0]
//  435               is_over_4_xzm=1;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  436               FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.N    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  437               FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.N    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
        B.N      ??UART3_IRQHandler_52
//  438              }
//  439              else
//  440              {
//  441                is_over_4_xzm=0;
??UART3_IRQHandler_54:
        LDR.W    R0,??DataTable7
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  442                if(wy_xzm > -7 && wy_xzm > wy_last_xzm)
        LDR.N    R2,??UART3_IRQHandler_12+0xC
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#-1
        LDR.W    R3,??DataTable6_2  ;; 0xc01bffff
        BL       __aeabi_cdrcmple
        BHI.N    ??UART3_IRQHandler_55
        LDR.N    R2,??DataTable1_2
        LDRD     R0,R1,[R2, #+0]
        LDR.N    R5,??UART3_IRQHandler_12+0xC
        LDRD     R2,R3,[R5, #+0]
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_55
//  443                {
//  444                  duty1 = 8000;
        LDR.N    R0,??DataTable1_5
        MOV      R1,#+8000
        STR      R1,[R0, #+0]
//  445                  duty2 = 100;
        LDR.N    R0,??DataTable1_6
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  446                  FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.N    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  447                  FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.N    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
        B.N      ??UART3_IRQHandler_52
//  448                }
//  449                else
//  450                {
//  451                duty1 = 100;
??UART3_IRQHandler_55:
        LDR.N    R0,??DataTable1_5
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  452              //  duty2 = 10000;
//  453                duty2=8000;
        LDR.N    R0,??DataTable1_6
        MOV      R1,#+8000
        STR      R1,[R0, #+0]
//  454                FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.N    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  455                FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.N    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  456                }
//  457              }
//  458               
//  459           }
//  460           if(wy_xzm>0)
??UART3_IRQHandler_52:
        LDR.N    R2,??UART3_IRQHandler_12+0xC
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdrcmple
        BCS.W    ??UART3_IRQHandler_56
//  461           {  
//  462             if((ay_xzm < l_4_xzm || ay_xzm > h_4_xzm)&&(wy_xzm<7))
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R5,??DataTable1_3
        LDRD     R0,R1,[R5, #+0]
        BL       __aeabi_cdcmple
        BCC.N    ??UART3_IRQHandler_57
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.N    R5,??DataTable1_3
        LDRD     R2,R3,[R5, #+0]
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_58
??UART3_IRQHandler_57:
        LDR.N    R2,??UART3_IRQHandler_12+0xC
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.W    R3,??DataTable8  ;; 0x401c0000
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_58
//  463              {
//  464             //  duty1=10000;
//  465                is_over_4_xzm=1;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  466               duty1=8000;
        LDR.N    R0,??DataTable1_5
        MOV      R1,#+8000
        STR      R1,[R0, #+0]
//  467               duty2=100;
        LDR.N    R0,??DataTable1_6
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  468               FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.N    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  469               FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.N    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
        B.N      ??UART3_IRQHandler_56
//  470              }
//  471              else
//  472              {
//  473                is_over_4_xzm=0;
??UART3_IRQHandler_58:
        LDR.W    R0,??DataTable7
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  474                if(wy_xzm < 7 && wy_xzm < wy_last_xzm)
        LDR.N    R2,??UART3_IRQHandler_12+0xC
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.W    R3,??DataTable8  ;; 0x401c0000
        B.N      ??UART3_IRQHandler_59
        Nop      
        DATA
??UART3_IRQHandler_7:
        DC32     edge_xzm
        THUMB
??UART3_IRQHandler_59:
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_60
        LDR.N    R2,??UART3_IRQHandler_12+0xC
        LDRD     R0,R1,[R2, #+0]
        LDR.N    R5,??DataTable1_2
        LDRD     R2,R3,[R5, #+0]
        BL       __aeabi_cdcmple
        BCS.N    ??UART3_IRQHandler_60
//  475                {
//  476                  duty1 = 100;
        LDR.N    R0,??DataTable1_5
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  477                  duty2 = 8000;
        LDR.N    R0,??DataTable1_6
        MOV      R1,#+8000
        STR      R1,[R0, #+0]
//  478                  FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.N    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  479                  FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.N    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
        B.N      ??UART3_IRQHandler_56
        DATA
??UART3_IRQHandler_12:
        DC32     0x40e00000
        DC32     0x409f4000
        DC32     wx_xzm
        DC32     wy_xzm
        THUMB
//  480                }
//  481                else
//  482                {
//  483             //   duty1 = 10000;
//  484                  duty1=8000;
??UART3_IRQHandler_60:
        LDR.N    R0,??DataTable1_5
        MOV      R1,#+8000
        STR      R1,[R0, #+0]
//  485                duty2 = 100;
        LDR.N    R0,??DataTable1_6
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  486                FTM_PWM_Duty(FTM0,CH0,duty1);
        LDR.N    R0,??DataTable1_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  487                FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.N    R0,??DataTable1_6
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  488                }
//  489              }
//  490           }
//  491          /*  
//  492           if(wx_xzm>0)
//  493           {
//  494             if((ax_xzm < l_4_xzm || ax_xzm > h_4_xzm)&&(wx_xzm<5))
//  495             {
//  496            
//  497               duty3=1000;
//  498               duty4=1000;
//  499               FTM_PWM_Duty(FTM0,CH2,duty3);
//  500               FTM_PWM_Duty(FTM0,CH3,duty4);
//  501             }
//  502             else
//  503             {
//  504             duty3 = 100;
//  505             duty4 = 10000;
//  506             FTM_PWM_Duty(FTM0,CH2,duty3);
//  507             FTM_PWM_Duty(FTM0,CH3,duty4);
//  508             }
//  509           }
//  510          if(wx_xzm<0)
//  511           {  
//  512             if((ax_xzm < l_4_xzm || ax_xzm > h_4_xzm)&&(wx_xzm>-5))
//  513             {
//  514            
//  515               duty3=1000;
//  516               duty4=1000;
//  517               FTM_PWM_Duty(FTM0,CH2,duty3);
//  518               FTM_PWM_Duty(FTM0,CH3,duty4);
//  519             }
//  520             else
//  521             {
//  522             duty3 = 10000;
//  523             duty4 = 100;
//  524             FTM_PWM_Duty(FTM0,CH2,duty3);
//  525             FTM_PWM_Duty(FTM0,CH3,duty4);
//  526             }
//  527           }
//  528          */
//  529          wy_last_xzm = wy_xzm;
??UART3_IRQHandler_56:
        LDR.N    R0,??DataTable1_2
        LDR.W    R1,??DataTable8_1
        LDRD     R2,R3,[R1, #+0]
        STRD     R2,R3,[R0, #+0]
//  530          
//  531          wx_last_xzm = wx_xzm;
        LDR.W    R0,??DataTable8_2
        LDR.W    R1,??DataTable8_3
        LDRD     R2,R3,[R1, #+0]
        STRD     R2,R3,[R0, #+0]
//  532          
//  533          //uart0Printf("\nwx:%lf\nwy:%lf\nwz:%lf\n",wx_xzm,wy_xzm,wz_xzm);   
//  534        }
//  535      }
//  536      if(a_xzm == 1)//角度
??UART3_IRQHandler_47:
        LDR.W    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??UART3_IRQHandler_43
//  537      {
//  538        if(count_xzm < 11)
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BGE.N    ??UART3_IRQHandler_61
//  539        {
//  540           count_xzm = count_xzm + 1;
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable5_8
        STR      R0,[R1, #+0]
//  541           code_xzm[count_xzm] = ch;  
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable5_9
        STRB     R4,[R0, R1]
//  542        }
//  543        if(count_xzm == 11)
??UART3_IRQHandler_61:
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BNE.N    ??UART3_IRQHandler_43
//  544        {
//  545          ax_xzm = (((code_xzm[4]<<8)|code_xzm[3]))/32768.0*180.0;
        LDR.W    R0,??DataTable5_9
        LDRB     R0,[R0, #+4]
        LDR.W    R1,??DataTable5_9
        LDRB     R1,[R1, #+3]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable8_5  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_dmul
        LDR.N    R2,??DataTable2
        STRD     R0,R1,[R2, #+0]
//  546          ay_xzm = (((code_xzm[6]<<8)|code_xzm[5]))/32768.0*180.0;
        LDR.W    R0,??DataTable5_9
        LDRB     R0,[R0, #+6]
        LDR.W    R1,??DataTable5_9
        LDRB     R1,[R1, #+5]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable8_5  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_dmul
        LDR.N    R2,??DataTable1_3
        STRD     R0,R1,[R2, #+0]
//  547          az_xzm = (((code_xzm[8]<<8)|code_xzm[7]))/32768.0*180.0;
        LDR.W    R0,??DataTable5_9
        LDRB     R0,[R0, #+8]
        LDR.W    R1,??DataTable5_9
        LDRB     R1,[R1, #+7]
        ORRS     R0,R1,R0, LSL #+8
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable8_5  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_4  ;; 0x40668000
        BL       __aeabi_dmul
        LDR.N    R2,??DataTable2_1
        STRD     R0,R1,[R2, #+0]
//  548          
//  549          //算角速度
//  550          
//  551          
//  552         
//  553          //uart0Printf("\nax:%lf\nay:%lf\naz:%lf\n",ax_xzm,ay_xzm,az_xzm);   
//  554        }
//  555       }  
//  556        //xzm=0x42;
//  557    }
//  558   } 
//  559 }
??UART3_IRQHandler_43:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     wz_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0xc0af4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     wy_last_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     ay_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x40668000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     duty1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     duty2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     b_60_xzm
//  560     
//  561 
//  562 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  563 u8 PITcounter = 0;
PITcounter:
        DS8 1
//  564 /*************************************************************************
//  565 *  函数名称：PIT0_IRQHandler
//  566 *  功能说明：PIT0 定时中断服务函数，每1ms速度和方向平滑输出一次
//  567 *  参数说明：无
//  568 *  函数返回：无
//  569 *  修改时间：2014-6-17 wuwenqi
//  570 *  备    注：
//  571 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  572 void PIT1_IRQHandler(void)
//  573 {
PIT1_IRQHandler:
        PUSH     {R7,LR}
//  574   //EnableInterrupts;
//  575    PIT_Flag_Clear(PIT1);                 //清中断标志位
        LDR.W    R0,??DataTable8_6  ;; 0x4003711c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable8_6  ;; 0x4003711c
        STR      R0,[R1, #+0]
//  576    if(number_xzm==5)
        LDR.W    R0,??DataTable8_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.W    ??PIT1_IRQHandler_0
//  577    {
//  578    if(cccc==0)
        LDR.W    R0,??DataTable8_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??PIT1_IRQHandler_1
//  579    {
//  580      duty1=10000;
        LDR.W    R0,??DataTable8_9
        MOVW     R1,#+10000
        STR      R1,[R0, #+0]
//  581      duty2=100;
        LDR.W    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  582      duty3=100;
        LDR.W    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  583      duty4=100;
        LDR.W    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  584    }
//  585    if(cccc==2)
??PIT1_IRQHandler_1:
        LDR.W    R0,??DataTable8_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??PIT1_IRQHandler_2
//  586    {
//  587      duty1=100;
        LDR.W    R0,??DataTable8_9
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  588      duty2=10000;
        LDR.W    R0,??DataTable8_10
        MOVW     R1,#+10000
        STR      R1,[R0, #+0]
//  589      duty3=100;
        LDR.W    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  590      duty4=100;
        LDR.W    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  591    }
//  592    if(cccc==1)
??PIT1_IRQHandler_2:
        LDR.W    R0,??DataTable8_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??PIT1_IRQHandler_3
//  593    {
//  594      duty1=100;
        LDR.W    R0,??DataTable8_9
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  595      duty2=100;
        LDR.W    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  596      duty3=10000;
        LDR.W    R0,??DataTable8_11
        MOVW     R1,#+10000
        STR      R1,[R0, #+0]
//  597      duty4=100;
        LDR.W    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  598    }
//  599    if(cccc==3)
??PIT1_IRQHandler_3:
        LDR.W    R0,??DataTable8_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??PIT1_IRQHandler_4
//  600    {
//  601      duty1=100;
        LDR.W    R0,??DataTable8_9
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  602      duty2=100;
        LDR.W    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  603      duty3=100;
        LDR.W    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  604      duty4=10000;
        LDR.W    R0,??DataTable8_12
        MOVW     R1,#+10000
        STR      R1,[R0, #+0]
//  605    }
//  606    FTM_PWM_Duty(FTM0,CH0,duty1);
??PIT1_IRQHandler_4:
        LDR.W    R0,??DataTable8_9
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  607    FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.W    R0,??DataTable8_10
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  608    FTM_PWM_Duty(FTM0,CH2,duty3);
        LDR.W    R0,??DataTable8_11
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  609    FTM_PWM_Duty(FTM0,CH3,duty4);
        LDR.W    R0,??DataTable8_12
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  610    cccc++;
        LDR.W    R0,??DataTable8_8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8_8
        STR      R0,[R1, #+0]
//  611    if(cccc==4)
        LDR.W    R0,??DataTable8_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??PIT1_IRQHandler_0
//  612      cccc=0;
        LDR.W    R0,??DataTable8_8
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  613    
//  614 } 
//  615   
//  616   
//  617  
//  618 }
??PIT1_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     ax_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     az_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     is_over_2_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     is_over_1_xzm
//  619 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  620 void PIT0_IRQHandler(void)
//  621 { 
PIT0_IRQHandler:
        PUSH     {R7,LR}
//  622    PIT_Flag_Clear(PIT0);
        LDR.W    R0,??DataTable8_13  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable8_13  ;; 0x4003710c
        STR      R0,[R1, #+0]
//  623    if(number_xzm==3)
        LDR.W    R0,??DataTable8_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.W    ??PIT0_IRQHandler_0
//  624    {
//  625    cc++;
        LDR.W    R0,??DataTable8_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8_14
        STR      R0,[R1, #+0]
//  626    if(cc==930)
        LDR.W    R0,??DataTable8_14
        LDR      R0,[R0, #+0]
        MOVW     R1,#+930
        CMP      R0,R1
        BNE.W    ??PIT0_IRQHandler_0
//  627    {
//  628      cc=0;
        LDR.W    R0,??DataTable8_14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  629      ccc++;
        LDR.W    R0,??DataTable8_15
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8_15
        STR      R0,[R1, #+0]
//  630      if(ccc>=13)
        LDR.W    R0,??DataTable8_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+13
        BLT.N    ??PIT0_IRQHandler_1
//  631      {
//  632        is_over_3_xzm=1;
        LDR.W    R0,??DataTable8_16
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        B.N      ??PIT0_IRQHandler_2
//  633      }
//  634      else
//  635      {
//  636        is_over_3_xzm=0;
??PIT0_IRQHandler_1:
        LDR.W    R0,??DataTable8_16
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  637      }
//  638    //delayms(900);
//  639    FTM_PWM_Duty(FTM0,CH0,duty1);
??PIT0_IRQHandler_2:
        LDR.W    R0,??DataTable8_9
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  640    FTM_PWM_Duty(FTM0,CH1,duty2);
        LDR.W    R0,??DataTable8_10
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  641    FTM_PWM_Duty(FTM0,CH2,duty3);
        LDR.W    R0,??DataTable8_11
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  642    FTM_PWM_Duty(FTM0,CH3,duty4);
        LDR.W    R0,??DataTable8_12
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       FTM_PWM_Duty
//  643    
//  644    if(angle_xzm>=15&&angle_xzm<=35)//15~35
        LDR.W    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+15
        CMP      R0,#+21
        BCS.N    ??PIT0_IRQHandler_3
//  645   {
//  646     if(duty1==100)
        LDR.W    R0,??DataTable8_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??PIT0_IRQHandler_4
//  647       duty1=9000;
        LDR.W    R0,??DataTable8_9
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
        B.N      ??PIT0_IRQHandler_5
//  648     else
//  649       duty1=100;
??PIT0_IRQHandler_4:
        LDR.W    R0,??DataTable8_9
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  650     if(duty2==100)
??PIT0_IRQHandler_5:
        LDR.W    R0,??DataTable8_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??PIT0_IRQHandler_6
//  651       duty2=9000;
        LDR.W    R0,??DataTable8_10
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
        B.N      ??PIT0_IRQHandler_7
//  652     else
//  653       duty2=100;
??PIT0_IRQHandler_6:
        LDR.W    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  654     if(duty3==100)
??PIT0_IRQHandler_7:
        LDR.W    R0,??DataTable8_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??PIT0_IRQHandler_8
//  655       duty3=7000;
        LDR.W    R0,??DataTable8_11
        MOVW     R1,#+7000
        STR      R1,[R0, #+0]
        B.N      ??PIT0_IRQHandler_9
//  656     else
//  657       duty3=100;
??PIT0_IRQHandler_8:
        LDR.W    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  658     if(duty4==100)
??PIT0_IRQHandler_9:
        LDR.W    R0,??DataTable8_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??PIT0_IRQHandler_10
//  659       duty4=7000;
        LDR.W    R0,??DataTable8_12
        MOVW     R1,#+7000
        STR      R1,[R0, #+0]
        B.N      ??PIT0_IRQHandler_11
//  660     else
//  661       duty4=100;
??PIT0_IRQHandler_10:
        LDR.W    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  662          return;
??PIT0_IRQHandler_11:
        B.N      ??PIT0_IRQHandler_12
//  663   }
//  664    
//  665   if(angle_xzm>=0&&angle_xzm<15)
??PIT0_IRQHandler_3:
        LDR.W    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+0
        CMP      R0,#+15
        BCS.N    ??PIT0_IRQHandler_13
//  666   {
//  667     if(duty1==100)
        LDR.W    R0,??DataTable8_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??PIT0_IRQHandler_14
//  668    {
//  669      duty1=9000;
        LDR.W    R0,??DataTable8_9
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
        B.N      ??PIT0_IRQHandler_15
//  670    }
//  671    else
//  672      duty1=100;
??PIT0_IRQHandler_14:
        LDR.W    R0,??DataTable8_9
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  673   
//  674    if(duty2==100)
??PIT0_IRQHandler_15:
        LDR.W    R0,??DataTable8_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??PIT0_IRQHandler_16
//  675    {
//  676      duty2=9000;
        LDR.W    R0,??DataTable8_10
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
        B.N      ??PIT0_IRQHandler_17
//  677    }
//  678    else
//  679      duty2=100;
??PIT0_IRQHandler_16:
        LDR.W    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  680    
//  681    duty3=100;
??PIT0_IRQHandler_17:
        LDR.W    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  682    duty4=100;
        LDR.W    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  683    return;
        B.N      ??PIT0_IRQHandler_12
//  684   }
//  685    if(angle_xzm>=80&&angle_xzm<120)
??PIT0_IRQHandler_13:
        LDR.W    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+80
        CMP      R0,#+40
        BCS.N    ??PIT0_IRQHandler_18
//  686    {
//  687    if(duty3==100)
        LDR.W    R0,??DataTable8_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??PIT0_IRQHandler_19
//  688    {
//  689      duty3=9000;
        LDR.W    R0,??DataTable8_11
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
        B.N      ??PIT0_IRQHandler_20
//  690    }
//  691    else
//  692      duty3=100;
??PIT0_IRQHandler_19:
        LDR.W    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  693    
//  694    if(duty4==100)
??PIT0_IRQHandler_20:
        LDR.W    R0,??DataTable8_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??PIT0_IRQHandler_21
//  695    {
//  696      duty4=9000;
        LDR.W    R0,??DataTable8_12
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
        B.N      ??PIT0_IRQHandler_22
//  697    }
//  698    else
//  699      duty4=100;
??PIT0_IRQHandler_21:
        LDR.W    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  700    duty1=100;
??PIT0_IRQHandler_22:
        LDR.W    R0,??DataTable8_9
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  701    duty2=100;
        LDR.W    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  702    return;
        B.N      ??PIT0_IRQHandler_12
//  703    
//  704    }
//  705    if(duty1==100)
??PIT0_IRQHandler_18:
        LDR.W    R0,??DataTable8_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??PIT0_IRQHandler_23
//  706    {
//  707      duty1=9000;
        LDR.W    R0,??DataTable8_9
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
        B.N      ??PIT0_IRQHandler_24
//  708    }
//  709    else
//  710      duty1=100;
??PIT0_IRQHandler_23:
        LDR.W    R0,??DataTable8_9
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  711   
//  712    if(duty2==100)
??PIT0_IRQHandler_24:
        LDR.W    R0,??DataTable8_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??PIT0_IRQHandler_25
//  713    {
//  714      duty2=9000;
        LDR.W    R0,??DataTable8_10
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
        B.N      ??PIT0_IRQHandler_26
//  715    }
//  716    else
//  717      duty2=100;
??PIT0_IRQHandler_25:
        LDR.W    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  718    if(duty3==100)
??PIT0_IRQHandler_26:
        LDR.W    R0,??DataTable8_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??PIT0_IRQHandler_27
//  719    {
//  720      duty3=9000;
        LDR.W    R0,??DataTable8_11
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
        B.N      ??PIT0_IRQHandler_28
//  721    }
//  722    else
//  723      duty3=100;
??PIT0_IRQHandler_27:
        LDR.W    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  724    
//  725    if(duty4==100)
??PIT0_IRQHandler_28:
        LDR.W    R0,??DataTable8_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??PIT0_IRQHandler_29
//  726    {
//  727      duty4=9000;
        LDR.W    R0,??DataTable8_12
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
        B.N      ??PIT0_IRQHandler_0
//  728    }
//  729    else
//  730      duty4=100;
??PIT0_IRQHandler_29:
        LDR.W    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  731    
//  732    }
//  733    }
//  734    //uart0Printf("asda\n");
//  735    
//  736    
//  737 }
??PIT0_IRQHandler_0:
??PIT0_IRQHandler_12:
        POP      {R0,PC}          ;; return
//  738 
//  739 
//  740 /************************************************************************* 
//  741 *  函数名称：PORTC_IRQHandler
//  742 *  功能说明：液晶屏按键控制外部中断函数
//  743 *  参数说明：无   
//  744 *  函数返回：无
//  745 *  修改时间：2015-3-14 luozimeng
//  746 *  备    注：
//  747 *************************************************************************/
//  748 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  749 void PORTA_IRQHandler()
//  750 {  
//  751   if(PORTA_ISFR & (1<<5))//判断PORTA 5是否产生中断
PORTA_IRQHandler:
        LDR.W    R0,??DataTable8_18  ;; 0x400490a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??PORTA_IRQHandler_0
//  752     {
//  753       PORTA_ISFR |=(1<<5);//产生中断，清中断
        LDR.W    R0,??DataTable8_18  ;; 0x400490a0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.W    R1,??DataTable8_18  ;; 0x400490a0
        STR      R0,[R1, #+0]
//  754       ///////////////////////
//  755  
//  756       if(number_xzm==2)
        LDR.W    R0,??DataTable8_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??PORTA_IRQHandler_1
//  757       {
//  758         is_over_2_xzm = 0;
        LDR.W    R0,??DataTable8_19
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  759         distance_xzm --;
        LDR.W    R0,??DataTable8_20
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable8_20
        STR      R0,[R1, #+0]
//  760         if(distance_xzm < 30)
        LDR.W    R0,??DataTable8_20
        LDR      R0,[R0, #+0]
        CMP      R0,#+30
        BGE.N    ??PORTA_IRQHandler_1
//  761           distance_xzm = 30;
        LDR.W    R0,??DataTable8_20
        MOVS     R1,#+30
        STR      R1,[R0, #+0]
//  762       }
//  763       if(number_xzm==3)
??PORTA_IRQHandler_1:
        LDR.W    R0,??DataTable8_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??PORTA_IRQHandler_0
//  764       {
//  765         is_over_3_xzm = 0;
        LDR.W    R0,??DataTable8_16
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  766         angle_xzm --;
        LDR.W    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable8_17
        STR      R0,[R1, #+0]
//  767         if(angle_xzm < 0)
        LDR.W    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??PORTA_IRQHandler_0
//  768           angle_xzm = 0;
        LDR.W    R0,??DataTable8_17
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  769       }
//  770       /////////////////////
//  771     }
//  772   if(PORTA_ISFR & (1<<13))//判断PORTA 13是否产生中断
??PORTA_IRQHandler_0:
        LDR.W    R0,??DataTable8_18  ;; 0x400490a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BPL.W    ??PORTA_IRQHandler_2
//  773     {
//  774       PORTA_ISFR |=(1<<13);//产生中断，清中断
        LDR.W    R0,??DataTable8_18  ;; 0x400490a0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable8_18  ;; 0x400490a0
        STR      R0,[R1, #+0]
//  775       ///////////////////////
//  776       if(number_xzm==2)
        LDR.W    R0,??DataTable8_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??PORTA_IRQHandler_3
//  777       {
//  778         is_over_2_xzm = 0;
        LDR.W    R0,??DataTable8_19
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  779         distance_xzm ++;
        LDR.W    R0,??DataTable8_20
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8_20
        STR      R0,[R1, #+0]
//  780         if(distance_xzm > 60)
        LDR.W    R0,??DataTable8_20
        LDR      R0,[R0, #+0]
        CMP      R0,#+61
        BLT.N    ??PORTA_IRQHandler_3
//  781           distance_xzm = 60;
        LDR.W    R0,??DataTable8_20
        MOVS     R1,#+60
        STR      R1,[R0, #+0]
//  782       }
//  783       if(number_xzm==3)
??PORTA_IRQHandler_3:
        LDR.W    R0,??DataTable8_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.W    ??PORTA_IRQHandler_2
//  784       {
//  785         is_over_3_xzm = 0;
        LDR.W    R0,??DataTable8_16
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  786         cc=0;
        LDR.W    R0,??DataTable8_14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  787         angle_xzm ++;
        LDR.W    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8_17
        STR      R0,[R1, #+0]
//  788         if(angle_xzm >180)
        LDR.W    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+181
        BLT.N    ??PORTA_IRQHandler_4
//  789           angle_xzm = 180;
        LDR.W    R0,??DataTable8_17
        MOVS     R1,#+180
        STR      R1,[R0, #+0]
//  790         
//  791        if(angle_xzm==45)
??PORTA_IRQHandler_4:
        LDR.W    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+45
        BNE.N    ??PORTA_IRQHandler_5
//  792         {
//  793         duty1=9000;
        LDR.W    R0,??DataTable8_9
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  794         duty4=9000;
        LDR.W    R0,??DataTable8_12
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  795         duty2=100;
        LDR.W    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  796         duty3=100;
        LDR.W    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  797         ccc=0;
        LDR.W    R0,??DataTable8_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  798         cc=0;
        LDR.W    R0,??DataTable8_14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  799         }
//  800         if(angle_xzm==135)
??PORTA_IRQHandler_5:
        LDR.W    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+135
        BNE.N    ??PORTA_IRQHandler_6
//  801         {
//  802           duty1=9000;
        LDR.W    R0,??DataTable8_9
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  803         duty3=9000;
        LDR.W    R0,??DataTable8_11
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  804         duty2=100;
        LDR.W    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  805         duty4=100;
        LDR.W    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  806         ccc=0;
        LDR.W    R0,??DataTable8_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  807         cc=0;
        LDR.W    R0,??DataTable8_14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  808         }
//  809         if(angle_xzm==90)
??PORTA_IRQHandler_6:
        LDR.W    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+90
        BNE.N    ??PORTA_IRQHandler_7
//  810         {
//  811          duty1=100;
        LDR.W    R0,??DataTable8_9
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  812         duty3=9000;
        LDR.W    R0,??DataTable8_11
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  813         duty2=100;
        LDR.W    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  814         duty4=100;
        LDR.W    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  815         ccc=0;
        LDR.W    R0,??DataTable8_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  816         cc=0;
        LDR.W    R0,??DataTable8_14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  817         }
//  818         if(angle_xzm==0)
??PORTA_IRQHandler_7:
        LDR.W    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??PORTA_IRQHandler_8
//  819         {
//  820           duty1=9000;
        LDR.W    R0,??DataTable8_9
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  821           duty3=100;
        LDR.W    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  822           duty2=100;
        LDR.W    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  823           duty4=100;
        LDR.W    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  824           ccc=0;
        LDR.W    R0,??DataTable8_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  825           cc=0;
        LDR.W    R0,??DataTable8_14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  826         }
//  827         if(angle_xzm>=15&&angle_xzm<=35)
??PORTA_IRQHandler_8:
        LDR.W    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+15
        CMP      R0,#+21
        BCS.N    ??PORTA_IRQHandler_2
//  828         {
//  829           duty1=9000;
        LDR.W    R0,??DataTable8_9
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  830           duty3=100;
        LDR.W    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  831           duty2=100;
        LDR.W    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  832           duty4=7000;
        LDR.W    R0,??DataTable8_12
        MOVW     R1,#+7000
        STR      R1,[R0, #+0]
//  833           ccc=0;
        LDR.W    R0,??DataTable8_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  834           cc=0;
        LDR.W    R0,??DataTable8_14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  835         }
//  836        
//  837       }
//  838           
//  839         /////////////////////
//  840     }
//  841   
//  842 }
??PORTA_IRQHandler_2:
        BX       LR               ;; return
//  843 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  844 void PORTC_IRQHandler()
//  845 {  
//  846   if(PORTC_ISFR & (1<<0))//判断PORTC 0是否产生中断
PORTC_IRQHandler:
        LDR.W    R0,??DataTable8_21  ;; 0x4004b0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??PORTC_IRQHandler_0
//  847   {
//  848       PORTC_ISFR |=(1<<0);//产生中断，清中断
        LDR.W    R0,??DataTable8_21  ;; 0x4004b0a0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable8_21  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//  849         ///////////////////////
//  850         //uartPrintf("\n--------------PC0--------------（EXIT）\n");
//  851         /////////////////////
//  852   }
//  853   if(PORTC_ISFR & (1<<6))//判断PORTC 6是否产生中断
??PORTC_IRQHandler_0:
        LDR.W    R0,??DataTable8_21  ;; 0x4004b0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??PORTC_IRQHandler_1
//  854       {
//  855         PORTC_ISFR |=(1<<6);//产生中断，清中断
        LDR.W    R0,??DataTable8_21  ;; 0x4004b0a0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable8_21  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//  856         ///////////////////////
//  857           //uartPrintf("\n--------------PC6--------------（EXIT）\n");
//  858        /* 
//  859         int x=0;
//  860         while(x<10)
//  861         {
//  862           if(x%2==0)
//  863           {
//  864               FTM_PWM_Duty(FTM0,CH0,9500);
//  865               FTM_PWM_Duty(FTM0,CH1,100);
//  866           }
//  867            else
//  868            {
//  869              FTM_PWM_Duty(FTM0,CH1,9500);
//  870              FTM_PWM_Duty(FTM0,CH0,100);
//  871            }
//  872         
//  873         delayms(850);
//  874         x++;
//  875         }
//  876         
//  877          number_xzm=5;
//  878          cccc=0;*/
//  879         /////////////////////
//  880       }
//  881    if(PORTC_ISFR & (1<<7))//判断PORTC 7是否产生中断
??PORTC_IRQHandler_1:
        LDR.W    R0,??DataTable8_21  ;; 0x4004b0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??PORTC_IRQHandler_2
//  882     {
//  883       PORTC_ISFR |=(1<<7);//产生中断，清中断
        LDR.W    R0,??DataTable8_21  ;; 0x4004b0a0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable8_21  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//  884       
//  885       ///////////////////////
//  886             //uartPrintf("\n--------------PC7--------------（EXIT）\n");
//  887 
//  888       /////////////////////
//  889     }
//  890 }
??PORTC_IRQHandler_2:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0xc0768000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0xb851eb85

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x4001851e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0xe147ae14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0xbffe147a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x7e61df46

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x404ca5dc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     w_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     count_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     code_xzm
//  891 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  892 void PORTE_IRQHandler()
//  893 {  
PORTE_IRQHandler:
        PUSH     {R7,LR}
//  894   if(PORTE_ISFR & (1<<24))//判断PORTE 24是否产生中断
        LDR.N    R0,??DataTable8_22  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+7
        BPL.N    ??PORTE_IRQHandler_0
//  895   {
//  896      PORTE_ISFR |=(1<<24);//产生中断，清中断
        LDR.N    R0,??DataTable8_22  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable8_22  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//  897      ///////////////////////
//  898      if(gpio_get(PORTE,25)==HIGH && gpio_get(PORTE,26)==HIGH)
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       gpio_get
        CMP      R0,#+1
        BNE.N    ??PORTE_IRQHandler_1
        MOVS     R1,#+26
        MOVS     R0,#+4
        BL       gpio_get
        CMP      R0,#+1
        BNE.N    ??PORTE_IRQHandler_1
//  899      {
//  900         number_xzm = 4;
        LDR.N    R0,??DataTable8_7
        MOVS     R1,#+4
        STR      R1,[R0, #+0]
//  901         duty1=100;
        LDR.N    R0,??DataTable8_9
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  902         duty2=100;
        LDR.N    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  903         duty3=100;
        LDR.N    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  904         duty4=100;
        LDR.N    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
        B.N      ??PORTE_IRQHandler_0
//  905         //uartPrintf("---------------------4\n");
//  906      }
//  907      else
//  908      {
//  909         number_xzm = 1;
??PORTE_IRQHandler_1:
        LDR.N    R0,??DataTable8_7
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  910         //uartPrintf("---------------------1\n");
//  911      }
//  912         
//  913      /////////////////////
//  914   }
//  915   if(PORTE_ISFR & (1<<25))//判断PORTE 25是否产生中断
??PORTE_IRQHandler_0:
        LDR.N    R0,??DataTable8_22  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??PORTE_IRQHandler_2
//  916   {
//  917      PORTE_ISFR |=(1<<6);//产生中断，清中断
        LDR.N    R0,??DataTable8_22  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable8_22  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//  918      ///////////////////////
//  919      if(gpio_get(PORTE,24)==HIGH && gpio_get(PORTE,26)==HIGH)
        MOVS     R1,#+24
        MOVS     R0,#+4
        BL       gpio_get
        CMP      R0,#+1
        BNE.N    ??PORTE_IRQHandler_3
        MOVS     R1,#+26
        MOVS     R0,#+4
        BL       gpio_get
        CMP      R0,#+1
        BNE.N    ??PORTE_IRQHandler_3
//  920      {
//  921         number_xzm = 4;
        LDR.N    R0,??DataTable8_7
        MOVS     R1,#+4
        STR      R1,[R0, #+0]
//  922         //uartPrintf("---------------------4\n");
//  923         duty1=100;
        LDR.N    R0,??DataTable8_9
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  924         duty2=100;
        LDR.N    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  925         duty3=100;
        LDR.N    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  926         duty4=100;
        LDR.N    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
        B.N      ??PORTE_IRQHandler_2
//  927      }
//  928      else
//  929      {
//  930         number_xzm = 2;
??PORTE_IRQHandler_3:
        LDR.N    R0,??DataTable8_7
        MOVS     R1,#+2
        STR      R1,[R0, #+0]
//  931         //uartPrintf("---------------------2\n");
//  932      }
//  933      /////////////////////
//  934   }
//  935   if(PORTE_ISFR & (1<<26))//判断PORTE 26是否产生中断
??PORTE_IRQHandler_2:
        LDR.N    R0,??DataTable8_22  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+5
        BPL.W    ??PORTE_IRQHandler_4
//  936   {
//  937      PORTE_ISFR |=(1<<26);//产生中断，清中断
        LDR.N    R0,??DataTable8_22  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4000000
        LDR.N    R1,??DataTable8_22  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//  938       
//  939      ///////////////////////
//  940      if(gpio_get(PORTE,25)==HIGH && gpio_get(PORTE,26)==HIGH)
        MOVS     R1,#+25
        MOVS     R0,#+4
        BL       gpio_get
        CMP      R0,#+1
        BNE.N    ??PORTE_IRQHandler_5
        MOVS     R1,#+26
        MOVS     R0,#+4
        BL       gpio_get
        CMP      R0,#+1
        BNE.N    ??PORTE_IRQHandler_5
//  941      {
//  942         number_xzm = 4;
        LDR.N    R0,??DataTable8_7
        MOVS     R1,#+4
        STR      R1,[R0, #+0]
//  943         duty1=100;
        LDR.N    R0,??DataTable8_9
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  944         duty2=100;
        LDR.N    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  945         duty3=100;
        LDR.N    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  946         duty4=100;
        LDR.N    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
        B.N      ??PORTE_IRQHandler_4
//  947         //uartPrintf("---------------------4\n");
//  948      }
//  949      else
//  950      {
//  951         number_xzm = 3;
??PORTE_IRQHandler_5:
        LDR.N    R0,??DataTable8_7
        MOVS     R1,#+3
        STR      R1,[R0, #+0]
//  952         if(angle_xzm==45)
        LDR.N    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+45
        BNE.N    ??PORTE_IRQHandler_6
//  953         {
//  954         duty1=9000;
        LDR.N    R0,??DataTable8_9
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  955         duty4=9000;
        LDR.N    R0,??DataTable8_12
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  956         duty2=100;
        LDR.N    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  957         duty3=100;
        LDR.N    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  958         ccc=0;
        LDR.N    R0,??DataTable8_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  959         cc=0;
        LDR.N    R0,??DataTable8_14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  960         }
//  961         if(angle_xzm==135)
??PORTE_IRQHandler_6:
        LDR.N    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+135
        BNE.N    ??PORTE_IRQHandler_7
//  962         {
//  963           duty1=9000;
        LDR.N    R0,??DataTable8_9
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  964         duty3=9000;
        LDR.N    R0,??DataTable8_11
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  965         duty2=100;
        LDR.N    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  966         duty4=100;
        LDR.N    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  967         ccc=0;
        LDR.N    R0,??DataTable8_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  968         cc=0;
        LDR.N    R0,??DataTable8_14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  969         }
//  970         if(angle_xzm==90)
??PORTE_IRQHandler_7:
        LDR.N    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+90
        BNE.N    ??PORTE_IRQHandler_8
//  971         {
//  972          duty1=100;
        LDR.N    R0,??DataTable8_9
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  973         duty3=9000;
        LDR.N    R0,??DataTable8_11
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  974         duty2=100;
        LDR.N    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  975         duty4=100;
        LDR.N    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  976         ccc=0;
        LDR.N    R0,??DataTable8_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  977         cc=0;
        LDR.N    R0,??DataTable8_14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  978         }
//  979         if(angle_xzm==0)
??PORTE_IRQHandler_8:
        LDR.N    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??PORTE_IRQHandler_9
//  980         {
//  981           duty1=9000;
        LDR.N    R0,??DataTable8_9
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  982         duty3=100;
        LDR.N    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  983         duty2=100;
        LDR.N    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  984         duty4=100;
        LDR.N    R0,??DataTable8_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  985         ccc=0;
        LDR.N    R0,??DataTable8_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  986         cc=0;
        LDR.N    R0,??DataTable8_14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  987         }
//  988         if(angle_xzm==30)
??PORTE_IRQHandler_9:
        LDR.N    R0,??DataTable8_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+30
        BNE.N    ??PORTE_IRQHandler_4
//  989         {
//  990           duty1=9000;
        LDR.N    R0,??DataTable8_9
        MOVW     R1,#+9000
        STR      R1,[R0, #+0]
//  991           duty3=100;
        LDR.N    R0,??DataTable8_11
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  992           duty2=100;
        LDR.N    R0,??DataTable8_10
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  993           duty4=7500;
        LDR.N    R0,??DataTable8_12
        MOVW     R1,#+7500
        STR      R1,[R0, #+0]
//  994           ccc=0;
        LDR.N    R0,??DataTable8_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  995           cc=0;
        LDR.N    R0,??DataTable8_14
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  996         }
//  997         //uartPrintf("---------------------3\n");
//  998      }
//  999      /////////////////////
// 1000   }
// 1001 }
??PORTE_IRQHandler_4:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     l_4_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     h_4_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0xc01bffff
// 1002 
// 1003 
// 1004 
// 1005 /************************************************************************* 
// 1006 *  函数名称：PORTB_IRQHandler
// 1007 *  功能说明：摄像头行场中断服务函数  场中断使用food，就不用分奇偶场了
// 1008 *  参数说明：无   
// 1009 *  函数返回：无
// 1010 *  修改时间：2014-6-17 wuwenqi
// 1011 *  备    注：
// 1012 *************************************************************************/
// 1013 #if 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 1014 u32 tmpline = 0;//行号
tmpline:
        DS8 4
// 1015  //已采集到的图像的行号
// 1016 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1017 void PORTB_IRQHandler()
// 1018 {
PORTB_IRQHandler:
        PUSH     {R4,LR}
// 1019      u32 tmpISFR = 0;
        MOVS     R4,#+0
// 1020      tmpISFR=PORTB_ISFR;
        LDR.N    R0,??DataTable8_23  ;; 0x4004a0a0
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
// 1021      PORTB_ISFR |= 0xFFFFFFFF;
        LDR.N    R0,??DataTable8_23  ;; 0x4004a0a0
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable8_23  ;; 0x4004a0a0
        MOVS     R2,#-1
        STR      R2,[R1, #+0]
// 1022      
// 1023      DisableInterrupts; //不允许中断嵌套
        CPSID i
// 1024      //========================== n = CAM_HR_CHn ========================================
// 1025      
// 1026      if((tmpISFR & (1<<CAM_HR_CHn)))   //PB3 触发中断  行中断
        LSLS     R1,R4,#+30
        BPL.N    ??PORTB_IRQHandler_0
// 1027      {
// 1028        //uart0Printf("H ");
// 1029          tmpline++; 
        LDR.N    R0,??DataTable8_24
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable8_24
        STR      R0,[R1, #+0]
// 1030              if(0 == (tmpline % 2))//对tmpline取余，当tmpline为偶数行时进入（进行数据传输）
        LDR.N    R0,??DataTable8_24
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??PORTB_IRQHandler_0
// 1031              {
// 1032                if(tmpline > 2)
        LDR.N    R0,??DataTable8_24
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BCC.N    ??PORTB_IRQHandler_1
// 1033                {
// 1034                  DMA_SETDAADDR(CAM_DMA_CH,&Pic_Buffer[tmprow][0]);//Pic_Buffer的大小为120(row)*160(column) 这里是指从第row行的第0列（个像素点）开始传输
        LDR.N    R0,??DataTable8_25
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+115
        LDR.N    R2,??DataTable8_26
        MLA      R0,R1,R0,R2
        LDR.N    R1,??DataTable8_27  ;; 0x40009010
        STR      R0,[R1, #+0]
// 1035                  DMA_EN(CAM_DMA_CH);//使能通道硬件DMA请求 
        LDR.N    R0,??DataTable8_28  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable8_28  ;; 0x4000800c
        STR      R0,[R1, #+0]
// 1036                  tmprow++;
        LDR.N    R0,??DataTable8_25
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable8_25
        STRB     R0,[R1, #+0]
// 1037                }
// 1038               // uart0Printf("R:%d ",tmprow);
// 1039                if(tmprow >= ROW)
??PORTB_IRQHandler_1:
        LDR.N    R0,??DataTable8_25
        LDRB     R0,[R0, #+0]
        CMP      R0,#+120
        BLT.N    ??PORTB_IRQHandler_0
// 1040                {
// 1041                  
// 1042                    Dis_CAM;
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       exti_irq_DIS
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       exti_irq_DIS
// 1043                    photo_complete_flag = 1;
        LDR.N    R0,??DataTable8_29
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1044                     //uartPrintf("%d\n",photo_complete_flag);
// 1045                    //uart0Printf("C");
// 1046                }
// 1047             }  
// 1048      }
// 1049      //========================== n = CAM_VS_CHn ========================================
// 1050      if((tmpISFR & (1<<CAM_VS_CHn))) //PTB2 触发中断  场中断；
??PORTB_IRQHandler_0:
        LSLS     R0,R4,#+28
        BPL.N    ??PORTB_IRQHandler_2
// 1051      { 
// 1052        //uart0Printf("V ");
// 1053          tmpline = 0;//行号清零
        LDR.N    R0,??DataTable8_24
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1054          tmprow = 0; //列号清零
        LDR.N    R0,??DataTable8_25
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1055          DMA_IRQ_CLEAN(CAM_DMA_CH);//清除通道传输中断标志位
        LDR.N    R0,??DataTable8_30  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable8_30  ;; 0x40008024
        STR      R0,[R1, #+0]
// 1056          En_HREF;                  //打开行中断  
        MOVS     R2,#+9
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       exti_irq_EN
// 1057          
// 1058          
// 1059      }
// 1060      
// 1061     
// 1062        
// 1063      EnableInterrupts; //打开中断
??PORTB_IRQHandler_2:
        CPSIE i
// 1064 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     is_over_4_xzm
// 1065 #endif
// 1066 
// 1067 /*************************************************************************
// 1068 *                             蓝宙电子工作室
// 1069 *
// 1070 *  函数名称：LPT_Handler
// 1071 *  功能说明：LPT编码器溢出中断
// 1072 *  参数说明：无
// 1073 *  函数返回：无
// 1074 *  修改时间：2014-6-17   已测试
// 1075 *  备    注：
// 1076 *************************************************************************/

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1077 volatile u8 LPT_INT_count = 0;
LPT_INT_count:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1078 void  LPT_Handler(void)
// 1079 {
// 1080     LPTMR0_CSR |= LPTMR_CSR_TCF_MASK;   //清除LPTMR比较标志
LPT_Handler:
        LDR.N    R0,??DataTable8_31  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable8_31  ;; 0x40040000
        STR      R0,[R1, #+0]
// 1081     LPT_INT_count++;                    //中断溢出加1
        LDR.N    R0,??DataTable8_32
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable8_32
        STRB     R0,[R1, #+0]
// 1082 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x401c0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     wy_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     wx_last_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     wx_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     a_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x40e00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x4003711c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     number_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     cccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     duty1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     duty2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     duty3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     duty4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x4003710c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     cc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     ccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DC32     is_over_3_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_17:
        DC32     angle_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_18:
        DC32     0x400490a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_19:
        DC32     is_over_2_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_20:
        DC32     distance_xzm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_21:
        DC32     0x4004b0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_22:
        DC32     0x4004d0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_23:
        DC32     0x4004a0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_24:
        DC32     tmpline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_25:
        DC32     tmprow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_26:
        DC32     Pic_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_27:
        DC32     0x40009010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_28:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_29:
        DC32     photo_complete_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_30:
        DC32     0x40008024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_31:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_32:
        DC32     LPT_INT_count

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Input = %c\\n">`:
        DATA
        DC8 "Input = %c\012"

        END
// 
//     6 bytes in section .bss
//    24 bytes in section .data
//    12 bytes in section .rodata
// 6 538 bytes in section .text
// 
// 6 538 bytes of CODE  memory
//    12 bytes of CONST memory
//    30 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
