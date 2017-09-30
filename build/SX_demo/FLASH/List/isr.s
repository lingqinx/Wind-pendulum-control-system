///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:47:25 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\projects\SX_demo\isr.c                       /
//    Command line =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\projects\SX_demo\isr.c -lCN                  /
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
//                    IO操作\build\SX_demo\FLASH\List\isr.s                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME isr

        #define SHT_PROGBITS 0x1

        EXTERN FTMx
        EXTERN GPIOx
        EXTERN Pic_Buffer
        EXTERN assert_failed_rst
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

// C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本IO操作\src\projects\SX_demo\isr.c
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

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   53 void FTM2_IRQHandler()
//   54 {
FTM2_IRQHandler:
        PUSH     {R4,LR}
//   55     u8 s=FTM2_STATUS;               //读取捕捉和比较状态  All CHnF bits can be checked using only one read of STATUS.
        LDR.N    R0,??DataTable2_5  ;; 0x400b8050
        LDR      R4,[R0, #+0]
//   56     u8 CHn;
//   57    
//   58     DisableInterrupts; 
        CPSID i         
//   59     FTM2_STATUS=0x00;               //清中断标志位
        LDR.N    R0,??DataTable2_5  ;; 0x400b8050
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   60     
//   61     //行中断 PTA8
//   62     CHn=0;//中断标志位被置位，且中断使能 
        MOVS     R0,#+0
//   63     if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
        MOVS     R1,#+1
        LSLS     R1,R1,R0
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        TST      R2,R1
        BEQ.N    ??FTM2_IRQHandler_0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2_6
        LDR      R1,[R1, #+8]
        ADDS     R0,R1,R0, LSL #+3
        LDR      R0,[R0, #+12]
        LSLS     R0,R0,#+25
        BPL.N    ??FTM2_IRQHandler_0
//   64     {
//   65         tmpline++; 
        LDR.N    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_7
        STR      R0,[R1, #+0]
//   66         
//   67 
//   68         if(0 == (tmpline % 2))
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??FTM2_IRQHandler_0
//   69         {
//   70             ASSERT_RST(DMA_CITER_ELINKNO(CCD_DMA_CH) == COLUMN,"DMA末传输结束");
        LDR.N    R0,??DataTable2_8  ;; 0x40009096
        LDRH     R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+160
        BEQ.N    ??FTM2_IRQHandler_1
        LDR.N    R2,??DataTable2_9
        MOVS     R1,#+70
        LDR.N    R0,??DataTable2_10
        BL       assert_failed_rst
//   71             DMA_SETDAADDR(CCD_DMA_CH,&Pic_Buffer[tmprow][0]);
??FTM2_IRQHandler_1:
        LDR.N    R0,??DataTable2_11
        LDR      R0,[R0, #+0]
        MOVS     R1,#+160
        LDR.N    R2,??DataTable2_12
        MLA      R0,R1,R0,R2
        LDR.N    R1,??DataTable2_13  ;; 0x40009090
        STR      R0,[R1, #+0]
//   72             DMA_EN(CCD_DMA_CH);                         //开始DMA传输 
        LDR.N    R0,??DataTable2_14  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable2_14  ;; 0x4000800c
        STR      R0,[R1, #+0]
//   73             
//   74             tmprow++;
        LDR.N    R0,??DataTable2_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_11
        STR      R0,[R1, #+0]
//   75             if(tmprow >= ROW)
        LDR.N    R0,??DataTable2_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+120
        BCC.N    ??FTM2_IRQHandler_0
//   76             {
//   77                 photeCompleteFlag = 1;
        LDR.N    R0,??DataTable2_15
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//   78             }
//   79         }
//   80         
//   81     }
//   82     
//   83     //场中断      PTA9
//   84     CHn=1;
??FTM2_IRQHandler_0:
        MOVS     R0,#+1
//   85     if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
        MOVS     R1,#+1
        LSLS     R1,R1,R0
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        TST      R2,R1
        BEQ.N    ??FTM2_IRQHandler_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable2_6
        LDR      R1,[R1, #+8]
        ADDS     R0,R1,R0, LSL #+3
        LDR      R0,[R0, #+12]
        LSLS     R0,R0,#+25
        BPL.N    ??FTM2_IRQHandler_2
//   86     {
//   87        //uartSendChar(UART0,'v');
//   88        //uartPrintf("场中断开\n");
//   89        tmpnum++;
        LDR.N    R0,??DataTable2_16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_16
        STR      R0,[R1, #+0]
//   90        picLineSum = tmpline;
        LDR.N    R0,??DataTable2_17
        LDR.N    R1,??DataTable2_7
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//   91        tmpline = 0;
        LDR.N    R0,??DataTable2_7
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   92        tmprow = 0;
        LDR.N    R0,??DataTable2_11
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   93        DMA_IRQ_CLEAN(CCD_DMA_CH);
        LDR.N    R0,??DataTable2_18  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable2_18  ;; 0x40008024
        STR      R0,[R1, #+0]
//   94        En_HREF;     //打开行中断
        LDR.N    R0,??DataTable2_6
        LDR      R0,[R0, #+8]
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable2_6
        LDR      R1,[R1, #+8]
        STR      R0,[R1, #+12]
//   95     }
//   96     EnableInterrupts; 
??FTM2_IRQHandler_2:
        CPSIE i         
//   97 }
        POP      {R4,PC}          ;; return
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
//  108 void FTM2_IRQHandler()
//  109 {
//  110     u8 s=FTM2_STATUS;               //读取捕捉和比较状态  All CHnF bits can be checked using only one read of STATUS.
//  111     u8 CHn;
//  112     u8 tmpcol = 0;
//  113     DisableInterrupts; 
//  114     FTM2_STATUS=0x00;               //清中断标志位
//  115     
//  116     //行中断 PTA8
//  117     CHn=0;//中断标志位被置位，且中断使能 
//  118     if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
//  119     {
//  120         tmpline++;
//  121         
//  122         if(0 == (tmpline % 2))
//  123         {
//  124             for(tmpcol = 0;tmpcol < COLUMN;tmpcol++)
//  125             {
//  126                Pic_Buffer[tmprow][tmpcol] = CCD_DATA;
//  127                nops(); 
//  128             }
//  129             
//  130             tmprow++;
//  131             if(tmprow >= ROW)
//  132             {
//  133               photeCompleteFlag = 1;
//  134             }
//  135         }
//  136         
//  137     }
//  138     
//  139     //场中断      PTA9
//  140     CHn=1;
//  141     if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
//  142     {
//  143        //uartSendChar(UART0,'v');
//  144        tmpnum++;
//  145        picLineSum = tmpline;
//  146        tmpline = 0;
//  147        tmprow = 0;
//  148        En_HREF;     //打开行中断
//  149     }
//  150     EnableInterrupts; 
//  151 }
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
        LDR.N    R0,??DataTable2_19
        BL       uart0Printf
//  171     
//  172     if(ch == 's')
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+115
        BNE.N    ??UART0_IRQHandler_0
//  173     {
//  174     if((showChoice & 0x01))
        LDR.N    R0,??DataTable2_20
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??UART0_IRQHandler_1
//  175          showChoice &= 0xFE;
        LDR.N    R0,??DataTable2_20
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFE
        LDR.N    R1,??DataTable2_20
        STRB     R0,[R1, #+0]
        B.N      ??UART0_IRQHandler_0
//  176     else
//  177          showChoice |= 0x01;
??UART0_IRQHandler_1:
        LDR.N    R0,??DataTable2_20
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable2_20
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
        DC32     0x40009096

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     `?<Constant "DMA\\304\\251\\264\\253\\312\\344\\275\\34`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     `?<Constant "C:\\\\Users\\\\Administrato...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     tmprow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     Pic_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0x40009090

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     photeCompleteFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     tmpnum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     picLineSum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     0x40008024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     `?<Constant "cmd = 0x%X\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
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
        DC8 63H, 5CH, 70H, 72H, 6FH, 6AH, 65H, 63H
        DC8 74H, 73H, 5CH, 53H, 58H, 5FH, 64H, 65H
        DC8 6DH, 6FH, 5CH, 69H, 73H, 72H, 2EH, 63H
        DC8 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "DMA\\304\\251\\264\\253\\312\\344\\275\\34`:
        DATA
        DC8 "DMA\304\251\264\253\312\344\275\341\312\370"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "cmd = 0x%X\\n">`:
        DATA
        DC8 "cmd = 0x%X\012"

        END
// 
//  17 bytes in section .bss
// 120 bytes in section .rodata
// 444 bytes in section .text
// 
// 444 bytes of CODE  memory
// 120 bytes of CONST memory
//  17 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
