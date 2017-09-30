///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  05:05:24 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\projects\SX_demo\is /
//                    r.c                                                     /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\projects\SX_demo\is /
//                    r.c -lCN D:\workspace\myworkspace\SW_K60\build\SX_demo\ /
//                    RAM\List\ -lB D:\workspace\myworkspace\SW_K60\build\SX_ /
//                    demo\RAM\List\ -o D:\workspace\myworkspace\SW_K60\build /
//                    \SX_demo\RAM\Obj\ --no_cse --no_unroll --no_inline      /
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
//                    isr.s                                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME isr

        #define SHT_PROGBITS 0x1

        EXTERN FTMx
        EXTERN GPIOx
        EXTERN Pic_Buffer
        EXTERN lptmr_counter_clean
        EXTERN motorCtrl
        EXTERN photeCompleteFlag
        EXTERN showChoice
        EXTERN trueSpeed
        EXTERN uart0Printf
        EXTERN uartRecvChar

        PUBLIC FTM2_IRQHandler
        PUBLIC PIT0_IRQHandler
        PUBLIC PITcounter
        PUBLIC UART0_IRQHandler
        PUBLIC picLineSum
        PUBLIC tmpline
        PUBLIC tmpnum
        PUBLIC tmprow

// D:\workspace\myworkspace\SW_K60\src\projects\SX_demo\isr.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程                                        
//    4 * 文件名 :[isr.c] 
//    5 * 描  述 ：中断处理例程
//    6 * 原创   ：野火嵌入式开发工作室
//    7 *设计改进：snowwolf
//    8 *  Email ：snowwolf2012@qq.com
//    9 * 说  明 ：所有的中断函数写在这里
//   10 ***********************************************************************
//   11 */
//   12 
//   13 
//   14 
//   15 #include "common.h"
//   16 #include "include.h"
//   17 #include "isr.h"
//   18 #include "global.h"
//   19 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   20 u8 PITcounter = 0;
PITcounter:
        DS8 1
//   21 /************************************************************************* 
//   22 *  函数名称：PIT0_IRQHandler
//   23 *  功能说明：PIT0 定时中断服务函数
//   24 *  参数说明：无   
//   25 *  函数返回：无
//   26 *  修改时间：2012-2-18    已测试
//   27 *  备    注：建议大家在写程序时尽量用宏定义，这样写出的代码可移值性强
//   28 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 void PIT0_IRQHandler(void)
//   30 {
PIT0_IRQHandler:
        PUSH     {R7,LR}
//   31     PIT_Flag_Clear(PIT0);                 //清中断标志位
        LDR.N    R0,??DataTable2  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable2  ;; 0x4003710c
        STR      R0,[R1, #+0]
//   32    
//   33     trueSpeed = LPTMR0_CNR;   //保存脉冲计数器计算值
        LDR.N    R0,??DataTable2_1
        LDR.N    R1,??DataTable2_2  ;; 0x4004000c
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//   34     lptmr_counter_clean(); 
        BL       lptmr_counter_clean
//   35     //速度控制算法
//   36     motorCtrl();
        BL       motorCtrl
//   37       
//   38     GPIO_TURN(PORTB,0);       //用于测试PIT频率
        LDR.N    R0,??DataTable2_3
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x1
        LDR.N    R1,??DataTable2_3
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+0]
//   39     PITcounter = (PITcounter + 1) % 13;
        LDR.N    R0,??DataTable2_4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        MOVS     R1,#+13
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        LDR.N    R1,??DataTable2_4
        STRB     R0,[R1, #+0]
//   40 }
        POP      {R0,PC}          ;; return
//   41 
//   42 
//   43 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   44 u32 tmpline = 0;//行号
tmpline:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   45 u32 tmprow = 0; //列号
tmprow:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   46 u32 tmpnum = 0; //场号
tmpnum:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   47 u32 picLineSum = 0;//总行数
picLineSum:
        DS8 4
//   48 
//   49 
//   50 #ifdef CCD_DMA
//   51 
//   52 #warning  "this is DMA"
//   53 void FTM2_IRQHandler()
//   54 {
//   55     u8 s=FTM2_STATUS;               //读取捕捉和比较状态  All CHnF bits can be checked using only one read of STATUS.
//   56     u8 CHn;
//   57    
//   58     DisableInterrupts; 
//   59     FTM2_STATUS=0x00;               //清中断标志位
//   60     
//   61     //行中断 PTA8
//   62     CHn=0;//中断标志位被置位，且中断使能 
//   63     if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
//   64     {
//   65         tmpline++; 
//   66         
//   67 
//   68         if(0 == (tmpline % 2))
//   69         {
//   70             ASSERT_RST(DMA_CITER_ELINKNO(CCD_DMA_CH) == COLUMN,"DMA末传输结束");
//   71             DMA_SETDAADDR(CCD_DMA_CH,&Pic_Buffer[tmprow][0]);
//   72             DMA_EN(CCD_DMA_CH);                         //开始DMA传输 
//   73             
//   74             tmprow++;
//   75             if(tmprow >= ROW)
//   76             {
//   77                 photeCompleteFlag = 1;
//   78             }
//   79         }
//   80         
//   81     }
//   82     
//   83     //场中断      PTA9
//   84     CHn=1;
//   85     if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
//   86     {
//   87        //uartSendChar(UART0,'v');
//   88        //uartPrintf("场中断开\n");
//   89        tmpnum++;
//   90        picLineSum = tmpline;
//   91        tmpline = 0;
//   92        tmprow = 0;
//   93        DMA_IRQ_CLEAN(CCD_DMA_CH);
//   94        En_HREF;     //打开行中断
//   95     }
//   96     EnableInterrupts; 
//   97 }
//   98 
//   99 #else //#ifdef CCD_DMA
//  100 
//  101 #warning  "this interrupt"
//  102 
//  103 
//  104 /*
//  105 以下是一96M 系统时钟 48M总线时钟下调试成功，其他摄像头需要自己调配
//  106 */
//  107 #define nops()  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop")

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  108 void FTM2_IRQHandler()
//  109 {
FTM2_IRQHandler:
        PUSH     {R4}
//  110     u8 s=FTM2_STATUS;               //读取捕捉和比较状态  All CHnF bits can be checked using only one read of STATUS.
        LDR.N    R0,??DataTable2_5  ;; 0x400b8050
        LDR      R0,[R0, #+0]
//  111     u8 CHn;
//  112     u8 tmpcol = 0;
        MOVS     R1,#+0
//  113     DisableInterrupts; 
        CPSID i         
//  114     FTM2_STATUS=0x00;               //清中断标志位
        LDR.N    R2,??DataTable2_5  ;; 0x400b8050
        MOVS     R3,#+0
        STR      R3,[R2, #+0]
//  115     
//  116     //行中断 PTA8
//  117     CHn=0;//中断标志位被置位，且中断使能 
        MOVS     R2,#+0
//  118     if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
        MOVS     R3,#+1
        LSLS     R3,R3,R2
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        TST      R4,R3
        BEQ.N    ??FTM2_IRQHandler_0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R1,??DataTable2_6
        LDR      R1,[R1, #+8]
        ADDS     R1,R1,R2, LSL #+3
        LDR      R1,[R1, #+12]
        LSLS     R1,R1,#+25
        BPL.N    ??FTM2_IRQHandler_0
//  119     {
//  120         tmpline++;
        LDR.N    R1,??DataTable2_7
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR.N    R2,??DataTable2_7
        STR      R1,[R2, #+0]
//  121         
//  122         if(0 == (tmpline % 2))
        LDR.N    R1,??DataTable2_7
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+31
        BMI.N    ??FTM2_IRQHandler_0
//  123         {
//  124             for(tmpcol = 0;tmpcol < COLUMN;tmpcol++)
        MOVS     R1,#+0
        B.N      ??FTM2_IRQHandler_1
//  125             {
//  126                Pic_Buffer[tmprow][tmpcol] = CCD_DATA;
??FTM2_IRQHandler_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable2_8
        LDR      R2,[R2, #+0]
        MOVS     R3,#+160
        LDR.N    R4,??DataTable2_9
        MLA      R2,R3,R2,R4
        LDR.N    R3,??DataTable2_3
        LDR      R3,[R3, #+12]
        LDRB     R3,[R3, #+16]
        STRB     R3,[R1, R2]
//  127                nops(); 
        nop              
        nop              
        nop              
        nop              
        nop              
        nop              
//  128             }
        ADDS     R1,R1,#+1
??FTM2_IRQHandler_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+160
        BCC.N    ??FTM2_IRQHandler_2
//  129             
//  130             tmprow++;
        LDR.N    R1,??DataTable2_8
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR.N    R2,??DataTable2_8
        STR      R1,[R2, #+0]
//  131             if(tmprow >= ROW)
        LDR.N    R1,??DataTable2_8
        LDR      R1,[R1, #+0]
        CMP      R1,#+120
        BCC.N    ??FTM2_IRQHandler_0
//  132             {
//  133               photeCompleteFlag = 1;
        LDR.N    R1,??DataTable2_10
        MOVS     R2,#+1
        STR      R2,[R1, #+0]
//  134             }
//  135         }
//  136         
//  137     }
//  138     
//  139     //场中断      PTA9
//  140     CHn=1;
??FTM2_IRQHandler_0:
        MOVS     R2,#+1
//  141     if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
        MOVS     R1,#+1
        LSLS     R1,R1,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        TST      R0,R1
        BEQ.N    ??FTM2_IRQHandler_3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R0,??DataTable2_6
        LDR      R0,[R0, #+8]
        ADDS     R0,R0,R2, LSL #+3
        LDR      R0,[R0, #+12]
        LSLS     R0,R0,#+25
        BPL.N    ??FTM2_IRQHandler_3
//  142     {
//  143        //uartSendChar(UART0,'v');
//  144        tmpnum++;
        LDR.N    R0,??DataTable2_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_11
        STR      R0,[R1, #+0]
//  145        picLineSum = tmpline;
        LDR.N    R0,??DataTable2_12
        LDR.N    R1,??DataTable2_7
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  146        tmpline = 0;
        LDR.N    R0,??DataTable2_7
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  147        tmprow = 0;
        LDR.N    R0,??DataTable2_8
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  148        En_HREF;     //打开行中断
        LDR.N    R0,??DataTable2_6
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable2_6
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+12]
//  149     }
//  150     EnableInterrupts; 
??FTM2_IRQHandler_3:
        CPSIE i         
//  151 }
        POP      {R4}
        BX       LR               ;; return
//  152 #endif   //#ifdef CCD_DMA
//  153 
//  154 /*************************************************************************
//  155 *  函数名称：USART1_IRQHandler
//  156 *  功能说明：串口1 中断 接收 服务函数
//  157 *  参数说明：无   
//  158 *  函数返回：无
//  159 *  修改时间：2012-2-14    已测试
//  160 *  备    注：
//  161 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  162 void UART0_IRQHandler(void)
//  163 {
UART0_IRQHandler:
        PUSH     {R4,LR}
//  164     uint8 ch;
//  165     
//  166     DisableInterrupts;		    //关总中断
        CPSID i         
//  167     
//  168     //接收一个字节数据并回发
//  169     ch=uartRecvChar (UART0);                //接收到一个数据
        MOVS     R0,#+0
        BL       uartRecvChar
        MOVS     R4,R0
//  170     uart0Printf("cmd = 0x%X\n",ch);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        LDR.N    R0,??DataTable2_13
        BL       uart0Printf
//  171     
//  172     if(ch == 's')
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+115
        BNE.N    ??UART0_IRQHandler_0
//  173     {
//  174     if((showChoice & 0x01))
        LDR.N    R0,??DataTable2_14
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??UART0_IRQHandler_1
//  175          showChoice &= 0xFE;
        LDR.N    R0,??DataTable2_14
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFE
        LDR.N    R1,??DataTable2_14
        STRB     R0,[R1, #+0]
        B.N      ??UART0_IRQHandler_0
//  176     else
//  177          showChoice |= 0x01;
??UART0_IRQHandler_1:
        LDR.N    R0,??DataTable2_14
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable2_14
        STRB     R0,[R1, #+0]
//  178     }
//  179     EnableInterrupts;		    //开总中断
??UART0_IRQHandler_0:
        CPSIE i         
//  180 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x4003710c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     trueSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x4004000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     GPIOx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     PITcounter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x400b8050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     FTMx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     tmpline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     tmprow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     Pic_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     photeCompleteFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     tmpnum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     picLineSum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     `?<Constant "cmd = 0x%X\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     showChoice

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "cmd = 0x%X\\n">`:
        DATA
        DC8 "cmd = 0x%X\012"

        END
// 
//  17 bytes in section .bss
//  12 bytes in section .rodata
// 408 bytes in section .text
// 
// 408 bytes of CODE  memory
//  12 bytes of CONST memory
//  17 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
