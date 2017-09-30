///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:47:32 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\ccd\ccd.c                            /
//    Command line =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\ccd\ccd.c -lCN                       /
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
//                    IO操作\build\SX_demo\FLASH\List\ccd.s                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME ccd

        #define SHT_PROGBITS 0x1

        EXTERN DMA_PORTx2BUFF_Init
        EXTERN FTM_Input_init
        EXTERN FTMx
        EXTERN GPIOx
        EXTERN Line_Center
        EXTERN Line_Center_L
        EXTERN Line_Center_R
        EXTERN PhotoBlackMax
        EXTERN Pic_Buffer
        EXTERN get_mid
        EXTERN gpio_init
        EXTERN photeCompleteFlag
        EXTERN showChoice
        EXTERN uart0Printf
        EXTERN uartPrintf

        PUBLIC CCD_init
        PUBLIC GetBlackLine
        PUBLIC GetPhoto
        PUBLIC ImproveSingleRow
        PUBLIC OptimizeCenterLine
        PUBLIC SendCenterLine3
        PUBLIC ShowPhoto
        PUBLIC WritePicBlack
        PUBLIC WritePicTest

// C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本IO操作\src\drivers\ccd\ccd.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程                                        
//    4 * 文件名 :[ccd.c] 
//    5 * 描  述 ：摄像头驱动函数
//    6 *设计改进：snowwolf
//    7 *  Email ：snowwolf2012@qq.com
//    8 * 说  明 ：摄像头驱动函数
//    9 ***********************************************************************
//   10 */
//   11 #include "common.h"
//   12 #include "ccd.h"
//   13 #include "uart.h"
//   14 #include "global.h"
//   15 #include "fun.h"
//   16 
//   17 #define  printp         uartPrintf
//   18 #define  myprintf       uartPrintf
//   19 #define  myprintfno     uartPrintf
//   20 
//   21 
//   22 /*************************************************************************
//   23 *  函数名称：LED_init
//   24 *  功能说明：初始化LED端口，设置IO口为输出方向
//   25 *  参数说明：无
//   26 *  函数返回：无
//   27 *  修改时间：2012-2-2   已测试
//   28 *  备    注：
//   29 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 void    CCD_init(void)
//   31 {
CCD_init:
        PUSH     {R4,LR}
        SUB      SP,SP,#+16
//   32     int i = 0;
        MOVS     R4,#+0
//   33     ASSERT_RST((CCD0 == 0 || CCD0 == 8 || CCD0 == 16 || CCD0 == 24),"CCD 管脚定义错误，CCD0为0 or 8or 16 or 24");
//   34     ASSERT_RST((CCD0 == CCD ),"CCD 管脚定义错误，CCD0为必须与宏定义CCD一致");
//   35    /*
//   36     gpio_init(CCD_PORT,CCD0,GPI_DOWN,0);
//   37     gpio_init(CCD_PORT,CCD1,GPI_DOWN,0);
//   38     gpio_init(CCD_PORT,CCD2,GPI_DOWN,0);
//   39     gpio_init(CCD_PORT,CCD3,GPI_DOWN,0);
//   40     gpio_init(CCD_PORT,CCD4,GPI_DOWN,0);
//   41     gpio_init(CCD_PORT,CCD5,GPI_DOWN,0);
//   42     gpio_init(CCD_PORT,CCD6,GPI_DOWN,0);
//   43     gpio_init(CCD_PORT,CCD7,GPI_DOWN,0);
//   44   */  
//   45     gpio_init(CCD_PORT,CCD0,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+3
        BL       gpio_init
//   46     gpio_init(CCD_PORT,CCD1,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+3
        BL       gpio_init
//   47     gpio_init(CCD_PORT,CCD2,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+3
        BL       gpio_init
//   48     gpio_init(CCD_PORT,CCD3,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+3
        BL       gpio_init
//   49     gpio_init(CCD_PORT,CCD4,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,#+3
        BL       gpio_init
//   50     gpio_init(CCD_PORT,CCD5,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+3
        BL       gpio_init
//   51     gpio_init(CCD_PORT,CCD6,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+3
        BL       gpio_init
//   52     gpio_init(CCD_PORT,CCD7,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,#+3
        BL       gpio_init
//   53     
//   54     //行中断
//   55     FTM_Input_init(CCD_FTM,CCD_HR_CH,Rising);              //初始化FTM输入捕捉模式，上升沿触发
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       FTM_Input_init
//   56     //场中断
//   57     FTM_Input_init(CCD_FTM,CCD_VS_CH,Falling);             //初始化FTM输入捕捉模式，下降沿触发
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+2
        BL       FTM_Input_init
//   58     //关行场中断
//   59     Dis_CCD;
        LDR.W    R0,??DataTable8_6
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+20]
        BICS     R0,R0,#0x40
        LDR.W    R1,??DataTable8_6
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+20]
        LDR.W    R0,??DataTable8_6
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x40
        LDR.W    R1,??DataTable8_6
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+12]
//   60     
//   61 #ifdef CCD_DMA
//   62     DMA_PORTx2BUFF_Init (CCD_DMA_CH,(void *)&CCD_DATA,&Pic_Buffer[0][0],PLCK_CH,DMA_BYTE1,COLUMN,DMA_rising);//DMA_falling DMA_rising
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
        MOVS     R0,#+160
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+41
        LDR.W    R2,??DataTable8_7
        LDR.W    R0,??DataTable8_8
        LDR      R0,[R0, #+12]
        ADDS     R1,R0,#+16
        MOVS     R0,#+4
        BL       DMA_PORTx2BUFF_Init
//   63     //DMA通道4初始化，PTA27上升沿触发DMA传输，源地址为PTD_BYTE0_IN，目的地址为：BUFF ，每次传输1Byte，传输3次后停止传输，恢复目的地址   
//   64     /* 开启中断 */
//   65     //DMA_EN(CCD_DMA_CH);                                    //使能通道CHn 硬件请求
//   66     //DMA_IRQ_EN(CCD_DMA_CH);                                //允许DMA通道传输 
//   67     DMA_IRQ_CLEAN(CCD_DMA_CH);
        LDR.W    R0,??DataTable8_9  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable8_9  ;; 0x40008024
        STR      R0,[R1, #+0]
//   68 #endif
//   69     
//   70     for(i = 0;i<ROW;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??CCD_init_0
//   71        Line_Center[i] = COLUMN/2;
??CCD_init_1:
        LDR.W    R0,??DataTable8_10
        MOVS     R1,#+80
        STR      R1,[R0, R4, LSL #+2]
        ADDS     R4,R4,#+1
??CCD_init_0:
        CMP      R4,#+120
        BLT.N    ??CCD_init_1
//   72     
//   73     for(i = 0;i<ROW;i++)
        MOVS     R4,#+0
        B.N      ??CCD_init_2
//   74        Line_Center_L[i] = COLUMN_START;
??CCD_init_3:
        LDR.W    R0,??DataTable8_11
        MOVS     R1,#+1
        STR      R1,[R0, R4, LSL #+2]
        ADDS     R4,R4,#+1
??CCD_init_2:
        CMP      R4,#+120
        BLT.N    ??CCD_init_3
//   75     
//   76     for(i = 0;i<ROW;i++)
        MOVS     R4,#+0
        B.N      ??CCD_init_4
//   77        Line_Center_R[i] = COLUMN_END;
??CCD_init_5:
        LDR.W    R0,??DataTable8_12
        MOVS     R1,#+155
        STR      R1,[R0, R4, LSL #+2]
        ADDS     R4,R4,#+1
??CCD_init_4:
        CMP      R4,#+120
        BLT.N    ??CCD_init_5
//   78     
//   79 }
        POP      {R0-R4,PC}       ;; return
//   80 /***************************************************
//   81 ** 函数名称: WritePicBlack
//   82 ** 功能描述: 以 * 表示黑色输出图像
//   83 ** 入口：
//   84 ** 出口：
//   85 ** 说明: 调试用，看取到的图像   
//   86 ****************************************************/ 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   87 void WritePicBlack()
//   88 {
WritePicBlack:
        PUSH     {R3-R5,LR}
//   89      unsigned int rows = 0, cols = 0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//   90      for(rows = 1;rows < ROW;rows++)
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??WritePicBlack_0
//   91      {
//   92          myprintf("%2d",rows);
//   93          for(cols = 0;cols < COLUMN;cols++)
//   94          {
//   95             if(Pic_Buffer[rows][cols] < PhotoBlackMax)
//   96                  myprintfno("*");
//   97             else
//   98                  myprintfno(" ");
//   99          }
//  100          myprintf("\n");
??WritePicBlack_1:
        ADR.N    R0,??DataTable6  ;; "\n"
        BL       uartPrintf
        ADDS     R4,R4,#+1
??WritePicBlack_0:
        CMP      R4,#+120
        BCS.N    ??WritePicBlack_2
        MOVS     R1,R4
        ADR.N    R0,??DataTable6_1  ;; "%2d"
        BL       uartPrintf
        MOVS     R5,#+0
        B.N      ??WritePicBlack_3
??WritePicBlack_4:
        ADR.N    R0,??DataTable6_2  ;; " "
        BL       uartPrintf
??WritePicBlack_5:
        ADDS     R5,R5,#+1
??WritePicBlack_3:
        CMP      R5,#+160
        BCS.N    ??WritePicBlack_1
        MOVS     R0,#+160
        LDR.W    R1,??DataTable8_7
        MLA      R0,R0,R4,R1
        LDRB     R0,[R5, R0]
        LDR.W    R1,??DataTable8_13
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??WritePicBlack_4
        ADR.N    R0,??DataTable6_3  ;; "*"
        BL       uartPrintf
        B.N      ??WritePicBlack_5
//  101      }
//  102      myprintf("\n");
??WritePicBlack_2:
        ADR.N    R0,??DataTable6  ;; "\n"
        BL       uartPrintf
//  103      
//  104 }
        POP      {R0,R4,R5,PC}    ;; return
//  105 
//  106 /***************************************************
//  107 ** 函数名称: WritePicTest
//  108 ** 功能描述: 遍历图像数据  用于测试时间
//  109 ** 入口：
//  110 ** 出口：
//  111 ** 说明: 
//  112 ****************************************************/ 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  113 void WritePicTest()
//  114 {
//  115      unsigned int rows = 0, cols = 0;
WritePicTest:
        MOVS     R0,#+0
        MOVS     R1,#+0
//  116      for(rows = 0;rows < ROW;rows++)
        MOVS     R2,#+0
        MOVS     R0,R2
        B.N      ??WritePicTest_0
//  117      {
//  118          for(cols = 0;cols < COLUMN;cols++)
//  119          {
//  120             Pic_Buffer[rows][cols]=0;
??WritePicTest_1:
        MOVS     R2,#+160
        LDR.W    R3,??DataTable8_7
        MLA      R2,R2,R0,R3
        MOVS     R3,#+0
        STRB     R3,[R1, R2]
//  121          }
        ADDS     R1,R1,#+1
??WritePicTest_2:
        CMP      R1,#+160
        BCC.N    ??WritePicTest_1
        ADDS     R0,R0,#+1
??WritePicTest_0:
        CMP      R0,#+120
        BCS.N    ??WritePicTest_3
        MOVS     R1,#+0
        B.N      ??WritePicTest_2
//  122      }
//  123      
//  124 }
??WritePicTest_3:
        BX       LR               ;; return
//  125 
//  126 /*
//  127 ***************************************************************** 
//  128 ** 函数名称: ShowPhoto
//  129 ** 功能描述: 画出一幅图画
//  130 ** 输    入: 无 
//  131 ** 输    出: 无 
//  132 ** 说明：  
//  133 *****************************************************************
//  134 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void ShowPhoto()
//  136 {
ShowPhoto:
        PUSH     {R3-R5,LR}
//  137     u16 i,j;
//  138     for(i=0;i<ROW;i++) 
        MOVS     R4,#+0
        B.N      ??ShowPhoto_0
//  139       { 
//  140         for(j=0;j<COLUMN;j++)
//  141         {
//  142              uart0Printf("%d",Pic_Buffer[i][j]);
//  143              if(j != COLUMN -1)
//  144                  uart0Printf(",");
//  145 #if TEST != 8             
//  146              if(!(showChoice & 0x01)) 
//  147                  return;
//  148 #endif
//  149         }         
//  150         uart0Printf("\n");
??ShowPhoto_1:
        ADR.N    R0,??DataTable6  ;; "\n"
        BL       uart0Printf
        ADDS     R4,R4,#+1
??ShowPhoto_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+120
        BCS.N    ??ShowPhoto_2
        MOVS     R5,#+0
        B.N      ??ShowPhoto_3
??ShowPhoto_4:
        ADDS     R5,R5,#+1
??ShowPhoto_3:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+160
        BCS.N    ??ShowPhoto_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R0,#+160
        LDR.W    R1,??DataTable8_7
        MLA      R0,R0,R4,R1
        LDRB     R1,[R5, R0]
        ADR.N    R0,??DataTable6_4  ;; 0x25, 0x64, 0x00, 0x00
        BL       uart0Printf
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+159
        BEQ.N    ??ShowPhoto_5
        ADR.N    R0,??DataTable6_5  ;; ","
        BL       uart0Printf
??ShowPhoto_5:
        LDR.W    R0,??DataTable8_14
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??ShowPhoto_4
        B.N      ??ShowPhoto_6
//  151     }
//  152     uart0Printf("\n"); 
??ShowPhoto_2:
        ADR.N    R0,??DataTable6  ;; "\n"
        BL       uart0Printf
//  153     uart0Printf("\n"); 
        ADR.N    R0,??DataTable6  ;; "\n"
        BL       uart0Printf
//  154     uart0Printf("\n"); 
        ADR.N    R0,??DataTable6  ;; "\n"
        BL       uart0Printf
//  155     uart0Printf("\n"); 
        ADR.N    R0,??DataTable6  ;; "\n"
        BL       uart0Printf
//  156     uart0Printf("\n");
        ADR.N    R0,??DataTable6  ;; "\n"
        BL       uart0Printf
//  157    
//  158 }
??ShowPhoto_6:
        POP      {R0,R4,R5,PC}    ;; return
//  159 
//  160 
//  161 /*
//  162 **************************************************
//  163 ** 函数名称：void GetPhoto()
//  164 ** 功能描述：图像提取
//  165 **  参  数 ：无
//  166 ** 返 回 值：无
//  167 **  说  明 ：提取一幅图像到全局数组变量 Pic_Buffer 中 
//  168 **************************************************
//  169 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  170 void GetPhoto() 
//  171 {
//  172     photeCompleteFlag = 0;
GetPhoto:
        LDR.W    R0,??DataTable8_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  173     Clr_CCDF;
        LDR.W    R0,??DataTable8_6
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+80]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable8_6
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+80]
        LDR.W    R0,??DataTable8_6
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+80]
        BICS     R0,R0,#0x2
        LDR.W    R1,??DataTable8_6
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+80]
//  174     En_VSYNC;
        LDR.W    R0,??DataTable8_6
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+20]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable8_6
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+20]
//  175     while(!photeCompleteFlag);
??GetPhoto_0:
        LDR.W    R0,??DataTable8_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetPhoto_0
//  176     Dis_CCD;
        LDR.W    R0,??DataTable8_6
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+20]
        BICS     R0,R0,#0x40
        LDR.W    R1,??DataTable8_6
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+20]
        LDR.W    R0,??DataTable8_6
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x40
        LDR.W    R1,??DataTable8_6
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+12]
//  177     photeCompleteFlag = 0;
        LDR.W    R0,??DataTable8_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  178 }
        BX       LR               ;; return
//  179 
//  180 
//  181 
//  182 
//  183 /*
//  184 **************************************************
//  185 * 函数名称: OptimizeCenterLine
//  186 * 功能描述: 路线滤波(优化) 
//  187 * 入口：
//  188 * 出口：
//  189 * 说明: 前后取中值 
//  190 ***************************************************
//  191 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  192 void  OptimizeCenterLine()
//  193 {
OptimizeCenterLine:
        PUSH     {R4,LR}
//  194       unsigned char i = 0; 
        MOVS     R4,#+0
//  195       Line_Center[ROW-1] = get_mid(Line_Center[ROW-2],Line_Center[ROW-3],Line_Center[ROW-4]);
        LDR.W    R0,??DataTable8_10
        LDR      R2,[R0, #+464]
        LDR.W    R0,??DataTable8_10
        LDR      R1,[R0, #+468]
        LDR.W    R0,??DataTable8_10
        LDR      R0,[R0, #+472]
        BL       get_mid
        LDR.W    R1,??DataTable8_10
        STR      R0,[R1, #+476]
//  196       for(i = ROW -2 ;i > 1;i--)
        MOVS     R0,#+118
        MOVS     R4,R0
        B.N      ??OptimizeCenterLine_0
//  197       {
//  198           Line_Center[i] = get_mid(Line_Center[i - 1],Line_Center[i],Line_Center[i + 1]);
??OptimizeCenterLine_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_10
        ADDS     R0,R0,R4, LSL #+2
        LDR      R2,[R0, #+4]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_10
        LDR      R1,[R0, R4, LSL #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable8_10
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #-4]
        BL       get_mid
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable8_10
        STR      R0,[R1, R4, LSL #+2]
//  199       }
        SUBS     R4,R4,#+1
??OptimizeCenterLine_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BCS.N    ??OptimizeCenterLine_1
//  200       //Line_Center[EndLine] = get_mid(Line_Center[EndLine],Line_Center[EndLine + 1],Line_Center[EndLine + 2]);
//  201 }
        POP      {R4,PC}          ;; return
//  202 
//  203 /*
//  204 ********************************************************************
//  205 * 函数名称: void ImproveSingleRow
//  206 *           (unsigned char irows, unsigned char llimit, unsigned char rlimit, unsigned imp)
//  207 * 功能描述: 提高单行图像质量（除噪加提高对比度） 
//  208 * 入口：所在列irow  左右限llimit, rlimit(能取到) ,提高比imp (放大20倍)
//  209 * 出口：
//  210 * 说明: 对异常点取其左，右，上的平均 
//  211 ********************************************************************
//  212 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  213 void ImproveSingleRow(unsigned int irows, unsigned int llimit, unsigned int rlimit)
//  214 {
ImproveSingleRow:
        PUSH     {R4-R6}
//  215      unsigned int icol = 0;
        MOVS     R3,#+0
//  216      unsigned int j = 0,sum = 0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//  217      
//  218      if(llimit < COLUMN_START)
        CMP      R1,#+0
        BNE.N    ??ImproveSingleRow_0
//  219         llimit = COLUMN_START;
        MOVS     R1,#+1
//  220      if(rlimit > COLUMN_END)
??ImproveSingleRow_0:
        CMP      R2,#+156
        BCC.N    ??ImproveSingleRow_1
//  221         rlimit = llimit < COLUMN_END;
        CMP      R1,#+155
        BCS.N    ??ImproveSingleRow_2
        MOVS     R2,#+1
        B.N      ??ImproveSingleRow_3
??ImproveSingleRow_2:
        MOVS     R2,#+0
??ImproveSingleRow_3:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
//  222      
//  223      for(icol = llimit;icol < rlimit + 1;icol++)
??ImproveSingleRow_1:
        MOVS     R3,R1
        B.N      ??ImproveSingleRow_4
//  224      {
//  225          //去除极黑极白点 
//  226          if(Pic_Buffer[irows][icol] < 20 || Pic_Buffer[irows][icol] > 235)
??ImproveSingleRow_5:
        MOVS     R1,#+160
        LDR.W    R4,??DataTable8_7
        MLA      R1,R1,R0,R4
        LDRB     R1,[R3, R1]
        SUBS     R1,R1,#+20
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+216
        BCC.N    ??ImproveSingleRow_6
//  227          {
//  228              j = 0,sum = 0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//  229              if(Pic_Buffer[irows][icol - 1] > 20 && Pic_Buffer[irows][icol - 1] < 235)
        MOVS     R1,#+160
        LDR.W    R6,??DataTable8_7
        MLA      R1,R1,R0,R6
        ADDS     R1,R3,R1
        LDRB     R1,[R1, #-1]
        SUBS     R1,R1,#+21
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+214
        BCS.N    ??ImproveSingleRow_7
//  230                  sum += Pic_Buffer[irows][icol - 1],j++;
        MOVS     R1,#+160
        LDR.W    R6,??DataTable8_7
        MLA      R1,R1,R0,R6
        ADDS     R1,R3,R1
        LDRB     R1,[R1, #-1]
        UXTAB    R5,R5,R1
        ADDS     R4,R4,#+1
//  231              if(Pic_Buffer[irows][icol + 1] > 20 && Pic_Buffer[irows][icol + 1] < 235)
??ImproveSingleRow_7:
        MOVS     R1,#+160
        LDR.W    R6,??DataTable8_7
        MLA      R1,R1,R0,R6
        ADDS     R1,R3,R1
        LDRB     R1,[R1, #+1]
        SUBS     R1,R1,#+21
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+214
        BCS.N    ??ImproveSingleRow_8
//  232                  sum += Pic_Buffer[irows][icol + 1],j++;
        MOVS     R1,#+160
        LDR.W    R6,??DataTable8_7
        MLA      R1,R1,R0,R6
        ADDS     R1,R3,R1
        LDRB     R1,[R1, #+1]
        UXTAB    R5,R5,R1
        ADDS     R4,R4,#+1
//  233              if(Pic_Buffer[irows - 1][icol] > 20 && Pic_Buffer[irows - 1][icol] < 235)
??ImproveSingleRow_8:
        MOVS     R1,#+160
        LDR.W    R6,??DataTable8_7
        MLA      R1,R1,R0,R6
        ADDS     R1,R3,R1
        LDRB     R1,[R1, #-160]
        SUBS     R1,R1,#+21
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+214
        BCS.N    ??ImproveSingleRow_9
//  234                  sum += Pic_Buffer[irows - 1][icol],j++;
        MOVS     R1,#+160
        LDR.W    R6,??DataTable8_7
        MLA      R1,R1,R0,R6
        ADDS     R1,R3,R1
        LDRB     R1,[R1, #-160]
        UXTAB    R5,R5,R1
        ADDS     R4,R4,#+1
//  235                  
//  236              if(j > 0)
??ImproveSingleRow_9:
        CMP      R4,#+0
        BEQ.N    ??ImproveSingleRow_6
//  237                  Pic_Buffer[irows][icol] = sum/j;
        UDIV     R1,R5,R4
        MOVS     R4,#+160
        LDR.W    R5,??DataTable8_7
        MLA      R4,R4,R0,R5
        STRB     R1,[R3, R4]
//  238          }
//  239      }
??ImproveSingleRow_6:
        ADDS     R3,R3,#+1
??ImproveSingleRow_4:
        ADDS     R1,R2,#+1
        CMP      R3,R1
        BCC.N    ??ImproveSingleRow_5
//  240 }//end of void ImproveSingleRow(unsigned char irows, unsigned char llimit, unsigned char rlimit, unsigned imp)
        POP      {R4-R6}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC8      "%2d"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC8      " ",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC8      "*",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC8      0x25, 0x64, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC8      ",",0x0,0x0
//  241 
//  242 /*
//  243 **************************************************
//  244 * 函数名称: void GetBlackLine() 
//  245 * 功能描述: 取得黑线 
//  246 * 入口：
//  247 * 出口：
//  248 * 说明: 
//  249 ***************************************************
//  250 */
//  251 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  252 void GetBlackLine() 
//  253 {
GetBlackLine:
        PUSH     {R3-R11,LR}
//  254       unsigned int gcol = 0,grow = 0;
        MOVS     R1,#+0
        MOVS     R7,#+0
//  255       unsigned int left = 0,right = 0;
        MOVS     R0,#+0
        MOVS     R2,#+0
//  256       unsigned int LlLimit = 0,LrLimit = 0,RlLimit = 0,RrLimit = 0;
        MOVS     R10,#+0
        MOVS     R3,#+0
        STR      R3,[SP, #+0]
        MOVS     R6,#+0
        MOVS     R4,#+0
//  257       unsigned int lFindFlag = 0,rFindFlag = 0;
        MOVS     R11,#+0
        MOVS     R8,#+0
//  258       unsigned int lLost = 0,rLost = 0;
        MOVS     R9,#+0
        MOVS     R5,#+0
//  259 #if G_PRINT
//  260       int temp0 = 0,temp1 = 0;
//  261 #endif
//  262       grow = ROW-1;
        MOVS     R3,#+119
        MOVS     R7,R3
//  263       left = COLUMN_START;
        MOVS     R3,#+1
        MOVS     R0,R3
//  264       right = COLUMN_END;
        MOVS     R3,#+155
        MOVS     R2,R3
//  265       
//  266       LrLimit = COLUMN/2;
        MOVS     R3,#+80
        STR      R3,[SP, #+0]
//  267       LlLimit = COLUMN_START;
        MOVS     R3,#+1
        MOV      R10,R3
//  268       
//  269       RlLimit = COLUMN/2;
        MOVS     R3,#+80
        MOVS     R6,R3
//  270       RrLimit = COLUMN_END;
        MOVS     R3,#+155
        MOVS     R4,R3
//  271       
//  272       Line_Center_L[grow] = left;
        LDR.N    R3,??DataTable8_11
        STR      R0,[R3, R7, LSL #+2]
//  273       Line_Center_R[grow] = right;
        LDR.N    R0,??DataTable8_12
        STR      R2,[R0, R7, LSL #+2]
        B.N      ??GetBlackLine_0
//  274       while(grow > 0)
//  275       {
//  276 #if G_PRINT
//  277            printp("--------------------------------------------------------------------------row = %d\n",grow);
//  278 #endif
//  279           lFindFlag = 0;
//  280           rFindFlag = 0;
//  281 #if G_PRINT
//  282           printp("LEFT: %d-%d \n",LlLimit,LrLimit);
//  283 #endif  
//  284           ImproveSingleRow(grow, LlLimit, LrLimit+5);
//  285           for(gcol = LrLimit;gcol>= LlLimit;gcol--)
//  286           {
//  287 #if G_PRINT
//  288               temp0 = (Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3);
//  289               temp1 = (Pic_Buffer[grow][gcol+3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3);
//  290               printp("%3d********************************(%3d - %3d = %4d)\n",gcol+1,temp0,temp1,temp0-temp1);
//  291 #endif              
//  292               if((Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3 + THRESHOLD) < (Pic_Buffer[grow][gcol + 3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3))
//  293               {
//  294 #if G_PRINT
//  295                    printp("left:\n%4d%4d%4d%4d%4d%4d\n",Pic_Buffer[grow][gcol],Pic_Buffer[grow][gcol+1],Pic_Buffer[grow][gcol+2],Pic_Buffer[grow][gcol+3],Pic_Buffer[grow][gcol+4],Pic_Buffer[grow][gcol+5]);
//  296                    printp("%d - %d = -%d\n",(Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3),(Pic_Buffer[grow][gcol + 3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3),(Pic_Buffer[grow][gcol + 3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3)-(Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3));
//  297 #endif
//  298                    left = gcol + 1;
//  299                    Line_Center_L[grow] = left;
//  300                    
//  301                    if(left + SEARCHWITHDEN < COLUMN_END)
//  302                        LrLimit = left + SEARCHWITHDEN;
//  303                    else
//  304                        LrLimit = COLUMN_END; 
//  305                        
//  306                    if(COLUMN_START + SEARCHWITHDDIS < left)
//  307                        LlLimit = left - SEARCHWITHDDIS;
//  308                    else
//  309                        LlLimit = COLUMN_START;
//  310                        
//  311                        
//  312                    lFindFlag = 1;
//  313                    lLost = 0;
//  314 #if G_PRINT
//  315                    printp("left = %d\n",left);
//  316 #endif 
//  317                    break;
//  318               }
//  319           }
//  320 #if G_PRINT
//  321           printp("RIGHT: %d-%d \n",RlLimit,RrLimit);
//  322 #endif           
//  323           ImproveSingleRow(grow, RlLimit - 5, RrLimit);
//  324           for(gcol = RlLimit-5;gcol<= RrLimit-5;gcol++)
//  325           {
//  326 #if G_PRINT
//  327               temp0 = (Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3);
//  328               temp1 = (Pic_Buffer[grow][gcol+3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3);
//  329               printp("%3d********************************(%3d - %3d = %4d)\n",gcol+1,temp0,temp1,temp0-temp1);
//  330 #endif 
//  331               if((Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3) > (Pic_Buffer[grow][gcol + 3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3  + THRESHOLD))
//  332               {
//  333 #if G_PRINT
//  334                    printp("right:\n%4d%4d%4d%4d%4d%4d\n",Pic_Buffer[grow][gcol],Pic_Buffer[grow][gcol+1],Pic_Buffer[grow][gcol+2],Pic_Buffer[grow][gcol+3],Pic_Buffer[grow][gcol+4],Pic_Buffer[grow][gcol+5]);
//  335                    printp("%d - %d = %d\n",(Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3),(Pic_Buffer[grow][gcol + 3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3),(Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3)-(Pic_Buffer[grow][gcol + 3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3));
//  336 #endif
//  337                    right = gcol + 4;
//  338                    Line_Center_R[grow] = right;
//  339                    
//  340                    if(COLUMN_START + SEARCHWITHDEN < right)
//  341                        RlLimit = right - SEARCHWITHDEN;
//  342                    else
//  343                        RlLimit = COLUMN_END; 
//  344                        
//  345                    if(right + SEARCHWITHDDIS < COLUMN_END)
//  346                        RrLimit = right + SEARCHWITHDDIS;
//  347                    else
//  348                        RrLimit = COLUMN_END;
//  349                        
//  350                    rFindFlag = 1; 
//  351                    rLost = 0;
//  352 #if G_PRINT
//  353                    printp("*RIGHT: %d-%d \n",RlLimit,RrLimit);
//  354                    printp("right = %d\n",right);
//  355 #endif
//  356                    
//  357                    break;
//  358               }
//  359           }
//  360 #if G_PRINT
//  361            printp("lFindFlag = %d   ",lFindFlag);
//  362            printp("rFindFlag = %d \n",rFindFlag);
//  363            printp("lLost = %d   ",lLost);
//  364            printp("rLost = %d \n",rLost);
//  365 #endif          
//  366           if(lFindFlag == 0 && grow < ROW - 1)
//  367           {
//  368               left = Line_Center_L[grow + 1];
//  369               Line_Center_L[grow] = left;
//  370               lLost++;
//  371               if(lLost > 5)
//  372               {
//  373 #if G_PRINT
//  374               printp("left迷失超过5次扩展搜索范围\n");
//  375 #endif
//  376                    if(left + SEARCHWITHDEXT < COLUMN_END)
//  377                        LrLimit = left + SEARCHWITHDEXT;
//  378                    else
//  379                        LrLimit = COLUMN_END; 
//  380                        
//  381                    if(COLUMN_START + SEARCHWITHDEXT/2 < left)
//  382                        LlLimit = left - SEARCHWITHDEXT/2;
//  383                    else
//  384                        LlLimit = COLUMN_START; 
//  385                    //if(Line_Center_L[grow] < COLUMN_END && lLost % 2 == 0)
//  386                    //    Line_Center_L[grow]++;
//  387               }
//  388                 
//  389 #if G_PRINT
//  390               printp("left未找到，取前一个点\n");
//  391 #endif        
//  392           }
//  393           
//  394           if(rFindFlag == 0 && grow < ROW - 1)
//  395           {
//  396               right = Line_Center_R[grow + 1];
//  397               Line_Center_R[grow] = right;
//  398               rLost++;
//  399               if(rLost > 5)
//  400               {
//  401 #if G_PRINT
//  402                    printp("right迷失超过5次扩展搜索范围\n");
//  403 #endif
//  404                    if(right + SEARCHWITHDEXT/2 < COLUMN_END)
//  405                        RrLimit = right + SEARCHWITHDEXT/2;
//  406                    else
//  407                        RrLimit = COLUMN_END; 
//  408                        
//  409                    if(COLUMN_START + SEARCHWITHDEXT < right)
//  410                        RlLimit = right - SEARCHWITHDEXT;
//  411                    else
//  412                        RlLimit = COLUMN_START;
??GetBlackLine_1:
        MOVS     R6,#+1
//  413                       
//  414                    //if(Line_Center_R[grow] > COLUMN_START && rLost % 2 == 0)    
//  415                    //    Line_Center_R[grow]--;
//  416               }
//  417 #if G_PRINT
//  418               printp("right未找到，取前一个点\n");
//  419 #endif        
//  420           }
//  421 #if G_PRINT
//  422               printp("**************************************************(%3d--%3d)\n",Line_Center_L[grow],Line_Center_R[grow]);
//  423 #endif          
//  424           Line_Center[grow] = (Line_Center_L[grow] + Line_Center_R[grow])/2;
??GetBlackLine_2:
        LDR.N    R0,??DataTable8_11
        LDR      R0,[R0, R7, LSL #+2]
        LDR.N    R1,??DataTable8_12
        LDR      R1,[R1, R7, LSL #+2]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable8_10
        STR      R0,[R1, R7, LSL #+2]
//  425           grow--;
        SUBS     R7,R7,#+1
??GetBlackLine_0:
        CMP      R7,#+0
        BEQ.W    ??GetBlackLine_3
        MOVS     R11,#+0
        MOVS     R8,#+0
        LDR      R0,[SP, #+0]
        ADDS     R2,R0,#+5
        MOV      R1,R10
        MOVS     R0,R7
        BL       ImproveSingleRow
        LDR      R1,[SP, #+0]
        B.N      ??GetBlackLine_4
??GetBlackLine_5:
        SUBS     R1,R1,#+1
??GetBlackLine_4:
        CMP      R1,R10
        BCC.N    ??GetBlackLine_6
        MOVS     R0,#+160
        LDR.N    R2,??DataTable8_7
        MLA      R0,R0,R7,R2
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+3]
        MOVS     R2,#+3
        SDIV     R0,R0,R2
        MOVS     R2,#+160
        LDR.N    R3,??DataTable8_7
        MLA      R2,R2,R7,R3
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+4]
        MOVS     R3,#+3
        SDIV     R2,R2,R3
        ADDS     R0,R2,R0
        MOVS     R2,#+160
        LDR.N    R3,??DataTable8_7
        MLA      R2,R2,R7,R3
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+5]
        MOVS     R3,#+3
        SDIV     R2,R2,R3
        ADDS     R0,R2,R0
        MOVS     R2,#+160
        LDR.N    R3,??DataTable8_7
        MLA      R2,R2,R7,R3
        LDRB     R2,[R1, R2]
        MOVS     R3,#+3
        SDIV     R2,R2,R3
        MOVS     R3,#+160
        LDR.W    R12,??DataTable8_7
        MLA      R3,R3,R7,R12
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+1]
        MOVS     R12,#+3
        SDIV     R3,R3,R12
        ADDS     R2,R3,R2
        MOVS     R3,#+160
        LDR.W    R12,??DataTable8_7
        MLA      R3,R3,R7,R12
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+2]
        MOVS     R12,#+3
        SDIV     R3,R3,R12
        ADDS     R2,R3,R2
        ADDS     R2,R2,#+45
        CMP      R2,R0
        BGE.N    ??GetBlackLine_5
        ADDS     R0,R1,#+1
        LDR.N    R1,??DataTable8_11
        STR      R0,[R1, R7, LSL #+2]
        ADDS     R1,R0,#+12
        CMP      R1,#+155
        BCS.N    ??GetBlackLine_7
        ADDS     R1,R0,#+12
        STR      R1,[SP, #+0]
        B.N      ??GetBlackLine_8
??GetBlackLine_7:
        MOVS     R1,#+155
        STR      R1,[SP, #+0]
??GetBlackLine_8:
        CMP      R0,#+8
        BCC.N    ??GetBlackLine_9
        SUBS     R10,R0,#+6
        B.N      ??GetBlackLine_10
??GetBlackLine_9:
        MOVS     R10,#+1
??GetBlackLine_10:
        MOVS     R11,#+1
        MOVS     R9,#+0
??GetBlackLine_6:
        MOVS     R2,R4
        SUBS     R1,R6,#+5
        MOVS     R0,R7
        BL       ImproveSingleRow
        SUBS     R1,R6,#+5
        B.N      ??GetBlackLine_11
??GetBlackLine_12:
        ADDS     R1,R1,#+1
??GetBlackLine_11:
        SUBS     R0,R4,#+5
        CMP      R0,R1
        BCC.N    ??GetBlackLine_13
        MOVS     R0,#+160
        LDR.N    R2,??DataTable8_7
        MLA      R0,R0,R7,R2
        LDRB     R0,[R1, R0]
        MOVS     R2,#+3
        SDIV     R0,R0,R2
        MOVS     R2,#+160
        LDR.N    R3,??DataTable8_7
        MLA      R2,R2,R7,R3
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+1]
        MOVS     R3,#+3
        SDIV     R2,R2,R3
        ADDS     R0,R2,R0
        MOVS     R2,#+160
        LDR.N    R3,??DataTable8_7
        MLA      R2,R2,R7,R3
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+2]
        MOVS     R3,#+3
        SDIV     R2,R2,R3
        ADDS     R0,R2,R0
        MOVS     R2,#+160
        LDR.N    R3,??DataTable8_7
        MLA      R2,R2,R7,R3
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+3]
        MOVS     R3,#+3
        SDIV     R2,R2,R3
        MOVS     R3,#+160
        LDR.W    R12,??DataTable8_7
        MLA      R3,R3,R7,R12
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+4]
        MOVS     R12,#+3
        SDIV     R3,R3,R12
        ADDS     R2,R3,R2
        MOVS     R3,#+160
        LDR.W    R12,??DataTable8_7
        MLA      R3,R3,R7,R12
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+5]
        MOVS     R12,#+3
        SDIV     R3,R3,R12
        ADDS     R2,R3,R2
        ADDS     R2,R2,#+45
        CMP      R2,R0
        BGE.N    ??GetBlackLine_12
        ADDS     R2,R1,#+4
        LDR.N    R0,??DataTable8_12
        STR      R2,[R0, R7, LSL #+2]
        CMP      R2,#+14
        BCC.N    ??GetBlackLine_14
        SUBS     R6,R2,#+12
        B.N      ??GetBlackLine_15
??GetBlackLine_14:
        MOVS     R6,#+155
??GetBlackLine_15:
        ADDS     R0,R2,#+6
        CMP      R0,#+155
        BCS.N    ??GetBlackLine_16
        ADDS     R4,R2,#+6
        B.N      ??GetBlackLine_17
??GetBlackLine_16:
        MOVS     R4,#+155
??GetBlackLine_17:
        MOVS     R8,#+1
        MOVS     R5,#+0
??GetBlackLine_13:
        CMP      R11,#+0
        BNE.N    ??GetBlackLine_18
        CMP      R7,#+119
        BCS.N    ??GetBlackLine_18
        LDR.N    R0,??DataTable8_11
        ADDS     R0,R0,R7, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable8_11
        STR      R0,[R1, R7, LSL #+2]
        ADDS     R9,R9,#+1
        CMP      R9,#+6
        BCC.N    ??GetBlackLine_18
        ADDS     R1,R0,#+30
        CMP      R1,#+155
        BCS.N    ??GetBlackLine_19
        ADDS     R1,R0,#+30
        STR      R1,[SP, #+0]
        B.N      ??GetBlackLine_20
??GetBlackLine_19:
        MOVS     R1,#+155
        STR      R1,[SP, #+0]
??GetBlackLine_20:
        CMP      R0,#+17
        BCC.N    ??GetBlackLine_21
        SUBS     R10,R0,#+15
        B.N      ??GetBlackLine_18
??GetBlackLine_21:
        MOVS     R10,#+1
??GetBlackLine_18:
        CMP      R8,#+0
        BNE.W    ??GetBlackLine_2
        CMP      R7,#+119
        BCS.W    ??GetBlackLine_2
        LDR.N    R0,??DataTable8_12
        ADDS     R0,R0,R7, LSL #+2
        LDR      R2,[R0, #+4]
        LDR.N    R0,??DataTable8_12
        STR      R2,[R0, R7, LSL #+2]
        ADDS     R5,R5,#+1
        CMP      R5,#+6
        BCC.W    ??GetBlackLine_2
        ADDS     R0,R2,#+15
        CMP      R0,#+155
        BCS.N    ??GetBlackLine_22
        ADDS     R4,R2,#+15
        B.N      ??GetBlackLine_23
??GetBlackLine_22:
        MOVS     R4,#+155
??GetBlackLine_23:
        CMP      R2,#+32
        BCC.W    ??GetBlackLine_1
        SUBS     R6,R2,#+30
        B.N      ??GetBlackLine_2
//  426           
//  427       }//end of while(grow > 5)
//  428       
//  429       OptimizeCenterLine();
??GetBlackLine_3:
        BL       OptimizeCenterLine
//  430 }  //end GetBlackLine()
        POP      {R0,R4-R11,PC}   ;; return
//  431 
//  432 
//  433 /*
//  434 ***************************************************
//  435 ** 函数名称: void SendCenterLine(unsigned int * templine)
//  436 ** 功能描述: 输出中心线 
//  437 ** 入口：中心线数组 
//  438 ** 出口：
//  439 ** 说明: 以左中右三线输出
//  440 ***************************************************
//  441 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  442 void SendCenterLine3(int * templineL, int * templine, int * templineR)
//  443 {
SendCenterLine3:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  444     unsigned int i,j;
//  445     unsigned int temp=0;
        MOVS     R9,#+0
//  446 
//  447     uartPrintf("Center Line :\n");
        LDR.N    R0,??DataTable8_16
        BL       uartPrintf
//  448 
//  449   
//  450     
//  451     for(i = 0 ;i< ROW;i++)
        MOVS     R7,#+0
        B.N      ??SendCenterLine3_0
//  452     {
//  453         uartPrintf("%3d",i); 
//  454         uartPrintf("-%3d-%3d-%3d",templineL[i],templine[i],templineR[i]);  
//  455         
//  456         temp=templineL[i];
//  457         for(j=0;j<temp;j++)
//  458         {
//  459             uartPrintf(" ") ;
//  460         }
//  461         
//  462         if(templine[i] > templineL[i])
//  463         {
//  464             uartPrintf("。");
//  465             j++;
//  466         }
//  467         
//  468         temp=templine[i];
//  469         for(;j<temp;j++)
//  470         {
//  471             uartPrintf(" ") ;
//  472         }
//  473         printp("*");
//  474         
//  475         if(templineR[i] > templine[i])
//  476         {
//  477             j++;
//  478             temp=templineR[i];
//  479             for(;j<temp;j++)
//  480             {
//  481                 uartPrintf(" ") ;
//  482             }
//  483             uartPrintf("。\n");
//  484         }
//  485         else
//  486             uartPrintf("\n");
??SendCenterLine3_1:
        ADR.N    R0,??DataTable8  ;; "\n"
        BL       uartPrintf
??SendCenterLine3_2:
        ADDS     R7,R7,#+1
??SendCenterLine3_0:
        CMP      R7,#+120
        BCS.N    ??SendCenterLine3_3
        MOVS     R1,R7
        ADR.N    R0,??DataTable8_1  ;; "%3d"
        BL       uartPrintf
        LDR      R3,[R6, R7, LSL #+2]
        LDR      R2,[R5, R7, LSL #+2]
        LDR      R1,[R4, R7, LSL #+2]
        LDR.N    R0,??DataTable8_17
        BL       uartPrintf
        LDR      R9,[R4, R7, LSL #+2]
        MOVS     R8,#+0
        B.N      ??SendCenterLine3_4
??SendCenterLine3_5:
        ADR.N    R0,??DataTable8_2  ;; " "
        BL       uartPrintf
        ADDS     R8,R8,#+1
??SendCenterLine3_4:
        CMP      R8,R9
        BCC.N    ??SendCenterLine3_5
        LDR      R0,[R4, R7, LSL #+2]
        LDR      R1,[R5, R7, LSL #+2]
        CMP      R0,R1
        BGE.N    ??SendCenterLine3_6
        ADR.N    R0,??DataTable8_3  ;; 0xA1, 0xA3, 0x00, 0x00
        BL       uartPrintf
        ADDS     R8,R8,#+1
??SendCenterLine3_6:
        LDR      R9,[R5, R7, LSL #+2]
        B.N      ??SendCenterLine3_7
??SendCenterLine3_8:
        ADR.N    R0,??DataTable8_2  ;; " "
        BL       uartPrintf
        ADDS     R8,R8,#+1
??SendCenterLine3_7:
        CMP      R8,R9
        BCC.N    ??SendCenterLine3_8
        ADR.N    R0,??DataTable8_4  ;; "*"
        BL       uartPrintf
        LDR      R0,[R5, R7, LSL #+2]
        LDR      R1,[R6, R7, LSL #+2]
        CMP      R0,R1
        BGE.N    ??SendCenterLine3_1
        ADDS     R8,R8,#+1
        LDR      R9,[R6, R7, LSL #+2]
        B.N      ??SendCenterLine3_9
??SendCenterLine3_10:
        ADR.N    R0,??DataTable8_2  ;; " "
        BL       uartPrintf
        ADDS     R8,R8,#+1
??SendCenterLine3_9:
        CMP      R8,R9
        BCC.N    ??SendCenterLine3_10
        ADR.N    R0,??DataTable8_5  ;; "。\n"
        BL       uartPrintf
        B.N      ??SendCenterLine3_2
//  487     }
//  488     
//  489     uartPrintf("\n");
??SendCenterLine3_3:
        ADR.N    R0,??DataTable8  ;; "\n"
        BL       uartPrintf
//  490     
//  491 }
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC8      "%3d"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC8      " ",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC8      0xA1, 0xA3, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC8      "*",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC8      "。\n"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     FTMx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     Pic_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     GPIOx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x40008024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     Line_Center

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     Line_Center_L

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     Line_Center_R

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     PhotoBlackMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     showChoice

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     photeCompleteFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DC32     `?<Constant "Center Line :\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_17:
        DC32     `?<Constant "-%3d-%3d-%3d">`

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "%2d"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "*"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 " "

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "%d"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 ","

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Center Line :\\n">`:
        DATA
        DC8 "Center Line :\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "%3d"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "-%3d-%3d-%3d">`:
        DATA
        DC8 "-%3d-%3d-%3d"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\241\243"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\241\243\012"

        END
//  492 
// 
//    60 bytes in section .rodata
// 1 908 bytes in section .text
// 
// 1 908 bytes of CODE  memory
//    60 bytes of CONST memory
//
//Errors: none
//Warnings: none
