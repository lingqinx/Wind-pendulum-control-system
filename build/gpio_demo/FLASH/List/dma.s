///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  12:46:22 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    dma\dma.c                                               /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    dma\dma.c -lCN C:\Users\Administrator\Desktop\MPU60508. /
//                    12\build\gpio_demo\FLASH\List\ -lB                      /
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
//                    emo\FLASH\List\dma.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN GPIOx
        EXTERN PORTX
        EXTERN assert_failed
        EXTERN enable_irq
        EXTERN pit_init

        PUBLIC DMA_PORTx2BUFF_Init
        PUBLIC DMA_PORTx2BUFF_PeriInit
        PUBLIC DMA_setDAddress

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\dma\dma.c
//    1 
//    2 #include "dma.h"
//    3 #include "pit.h"
//    4 
//    5 
//    6 
//    7 /*************************************************************************
//    8 *  函数名称：DMA_PORTx2BUFF_Init
//    9 *  功能说明：DMA初始化，读取端口数据到内存
//   10 *  参数说明：DMA_CHn              通道号（DMA_CH0 ~ DMA_CH15）
//   11 *            SADDR                源地址( (void * )&PTx_BYTEn_IN 或 (void * )&PTx_WORDn_IN   )
//   12 *            DADDR                目的地址
//   13 *            PTxn                 触发端口
//   14 *            DMA_BYTEn            每次DMA传输字节数
//   15 *            count                一个主循环传输字节数
//   16 *            DMA_PORTx2BUFF_cfg   DMA传输配置
//   17 *  函数返回：无
//   18 *  修改时间：2012-1-20
//   19 *  备    注：
//   20 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void DMA_PORTx2BUFF_Init(DMA_CHn CHn,void * SADDR,void * DADDR, PTxn ptxn,DMA_BYTEn byten,u32 count,DMA_PORTx2BUFF_cfg cfg)
//   22 {
DMA_PORTx2BUFF_Init:
        PUSH     {R3-R9,LR}
        MOVS     R7,R0
        MOVS     R5,R1
        MOV      R9,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
//   23     u8 n,i,tmp;
//   24 
//   25     ASSERT(                                             //用断言检测 源地址和每次传输字节数是否正确
//   26             (   (byten == DMA_BYTE1)                    //传输一个字节
//   27              && ( (SADDR >= &PTA_BYTE0_IN) && (SADDR <= ( &PTE_BYTE3_IN )))
//   28              )
//   29  
//   30           ||(   (byten == DMA_BYTE2)                    //传输两个字节(注意，不能跨端口)
//   31              && ( (SADDR >= &PTA_BYTE0_IN)
//   32              && (SADDR <= ( &PTE_WORD1_IN ))
//   33              && (((u32)SADDR&0x03)!=0x03) )             //保证不跨端口
//   34              )
//   35  
//   36           ||(   (byten == DMA_BYTE4)                    //传输四个字节
//   37              && ((SADDR >= &PTA_BYTE0_IN) && (SADDR <= ( &PTE_BYTE0_IN )))
//   38              && (((u32)SADDR&0x03)==0x00)               //保证不跨端口
//   39              )
//   40            );
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??DMA_PORTx2BUFF_Init_0
        LDR.W    R0,??DataTable1  ;; 0x400ff010
        CMP      R5,R0
        BCC.N    ??DMA_PORTx2BUFF_Init_0
        LDR.W    R0,??DataTable1_1  ;; 0x400ff113
        CMP      R0,R5
        BCS.N    ??DMA_PORTx2BUFF_Init_1
??DMA_PORTx2BUFF_Init_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??DMA_PORTx2BUFF_Init_2
        LDR.W    R0,??DataTable1  ;; 0x400ff010
        CMP      R5,R0
        BCC.N    ??DMA_PORTx2BUFF_Init_2
        LDR.W    R0,??DataTable1_2  ;; 0x400ff112
        CMP      R0,R5
        BCC.N    ??DMA_PORTx2BUFF_Init_2
        ANDS     R0,R5,#0x3
        CMP      R0,#+3
        BNE.N    ??DMA_PORTx2BUFF_Init_1
??DMA_PORTx2BUFF_Init_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??DMA_PORTx2BUFF_Init_3
        LDR.W    R0,??DataTable1  ;; 0x400ff010
        CMP      R5,R0
        BCC.N    ??DMA_PORTx2BUFF_Init_3
        LDR.W    R0,??DataTable1_3  ;; 0x400ff110
        CMP      R0,R5
        BCC.N    ??DMA_PORTx2BUFF_Init_3
        ANDS     R0,R5,#0x3
        CMP      R0,#+0
        BEQ.N    ??DMA_PORTx2BUFF_Init_1
??DMA_PORTx2BUFF_Init_3:
        MOVS     R1,#+40
        LDR.W    R0,??DataTable1_4
        BL       assert_failed
//   41 
//   42     u8 BYTEs=(byten==DMA_BYTE1 ? 1:(byten==DMA_BYTE2 ? 2:(byten==DMA_BYTE4 ? 4:16 ) ) );    //计算传输字节数
??DMA_PORTx2BUFF_Init_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??DMA_PORTx2BUFF_Init_4
        MOVS     R6,#+1
        B.N      ??DMA_PORTx2BUFF_Init_5
??DMA_PORTx2BUFF_Init_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??DMA_PORTx2BUFF_Init_6
        MOVS     R6,#+2
        B.N      ??DMA_PORTx2BUFF_Init_7
??DMA_PORTx2BUFF_Init_6:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??DMA_PORTx2BUFF_Init_8
        MOVS     R6,#+4
        B.N      ??DMA_PORTx2BUFF_Init_9
??DMA_PORTx2BUFF_Init_8:
        MOVS     R6,#+16
//   43 
//   44     /* 开启时钟 */
//   45     SIM_SCGC7|=SIM_SCGC7_DMA_MASK;                          //打开DMA模块时钟
??DMA_PORTx2BUFF_Init_9:
??DMA_PORTx2BUFF_Init_7:
??DMA_PORTx2BUFF_Init_5:
        LDR.W    R0,??DataTable1_5  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable1_5  ;; 0x40048040
        STR      R0,[R1, #+0]
//   46     SIM_SCGC6|=SIM_SCGC6_DMAMUX_MASK;                       //打开DMA多路复用器时钟
        LDR.W    R0,??DataTable1_6  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable1_6  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   47 	
//   48     /* 配置 DMA 通道 的 传输控制块 TCD ( Transfer Control Descriptor ) */
//   49     DMA_SADDR(CHn) =    (u32)SADDR;                         // 设置  源地址
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+5
        LDR.W    R1,??DataTable1_7  ;; 0x40009000
        STR      R5,[R0, R1]
//   50     DMA_DADDR(CHn) =    (u32)DADDR;                         // 设置目的地址
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        STR      R9,[R0, #+16]
//   51     DMA_SOFF(CHn)  =    0x00u;                              // 设置源地址偏移 = 0x0, 即不变
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//   52     DMA_DOFF(CHn)  =    BYTEs;                              // 每次传输后，目的地址加 BYTEs
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRH     R6,[R0, #+20]
//   53 
//   54     DMA_ATTR(CHn)  =    (0
//   55                         | DMA_ATTR_SMOD(0x0)                // 源地址模数禁止  Source address modulo feature is disabled
//   56                         | DMA_ATTR_SSIZE(byten)             // 源数据位宽 ：DMA_BYTEn  。    SSIZE = 0 -> 8-bit ，SSIZE = 1 -> 16-bit ，SSIZE = 2 -> 32-bit ，SSIZE = 4 -> 16-byte
//   57                         | DMA_ATTR_DMOD(0x0)                // 目标地址模数禁止
//   58                         | DMA_ATTR_DSIZE(byten)             // 目标数据位宽 ：DMA_BYTEn  。  设置参考  SSIZE
//   59                         );
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+8
        ANDS     R0,R0,#0x700
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R1,R4,#0x7
        ORRS     R0,R1,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R1,R7,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STRH     R0,[R1, #+6]
        LDR      R1,[SP, #+36]
//   60 
//   61     DMA_CITER_ELINKNO(CHn)  = DMA_CITER_ELINKNO_CITER(count); //当前主循环次数
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        MOVS     R2,R1
        LSLS     R2,R2,#+17       ;; ZeroExtS R2,R2,#+17,#+17
        LSRS     R2,R2,#+17
        STRH     R2,[R0, #+22]
//   62     DMA_BITER_ELINKNO(CHn)  = DMA_BITER_ELINKYES_BITER(count);//起始主循环次数
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        MOVS     R2,R1
        LSLS     R2,R2,#+23       ;; ZeroExtS R2,R2,#+23,#+23
        LSRS     R2,R2,#+23
        STRH     R2,[R0, #+30]
//   63 
//   64 
//   65     DMA_CR &=~DMA_CR_EMLM_MASK;                             // CR[EMLM] = 0
        LDR.W    R0,??DataTable1_8  ;; 0x40008000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.W    R2,??DataTable1_8  ;; 0x40008000
        STR      R0,[R2, #+0]
//   66 
//   67     //当CR[EMLM] = 0 时:
//   68     DMA_NBYTES_MLNO(CHn)=   DMA_NBYTES_MLNO_NBYTES(BYTEs);  // 通道每次传输字节数，这里设置为BYTEs个字节。注：值为0表示传输4GB */
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R6,[R0, #+8]
//   69 
//   70 
//   71     /* 配置 DMA 传输结束后的操作 */
//   72     DMA_SLAST(CHn)      =   0;                              //调整  源地址的附加值,主循环结束后恢复  源地址
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        MOVS     R2,#+0
        STR      R2,[R0, #+12]
        LDR      R0,[SP, #+40]
//   73     DMA_DLAST_SGA(CHn)  =   (u32)( (cfg&0x20) == 0 ? (-count)  :0 ); //调整目的地址的附加值,主循环结束后恢复目的地址或者保持地址
        LSLS     R2,R0,#+26
        BMI.N    ??DMA_PORTx2BUFF_Init_10
        RSBS     R1,R1,#+0
        B.N      ??DMA_PORTx2BUFF_Init_11
??DMA_PORTx2BUFF_Init_10:
        MOVS     R1,#+0
??DMA_PORTx2BUFF_Init_11:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R2,R7,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STR      R1,[R2, #+24]
//   74     DMA_CSR(CHn)        =   (0
//   75                              | DMA_CSR_DREQ_MASK            //主循环结束后停止硬件请求
//   76                              | DMA_CSR_INTMAJOR_MASK        //主循环结束后产生中断
//   77                              );
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R1,R7,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        MOVS     R2,#+10
        STRH     R2,[R1, #+28]
//   78                              
//   79     /* 配置 DMA 触发源 */
//   80     DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,CHn) = (0
//   81                                             | DMAMUX_CHCFG_ENBL_MASK                        /* Enable routing of DMA request */
//   82                                             //| DMAMUX_CHCFG_TRIG_MASK                        /* Trigger Mode: Periodic   PIT周期触发传输模式   通道1对应PIT1，必须使能PIT1，且配置相应的PIT定时触发 */
//   83                                             | DMAMUX_CHCFG_SOURCE((ptxn>>5)+DMA_Port_A)     /* 通道触发传输源:     */
//   84                                             );
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSRS     R1,R8,#+5
        ADDS     R1,R1,#+49
        ORRS     R1,R1,#0x80
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R2,??DataTable1_9  ;; 0x40021000
        STRB     R1,[R7, R2]
//   85 
//   86     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK<<(ptxn>>5));                                                                 //开启PORTx端口
        LDR.W    R1,??DataTable1_10  ;; 0x40048038
        LDR      R1,[R1, #+0]
        MOV      R2,#+512
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSRS     R3,R8,#+5
        LSLS     R2,R2,R3
        ORRS     R1,R2,R1
        LDR.W    R2,??DataTable1_10  ;; 0x40048038
        STR      R1,[R2, #+0]
//   87     GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1<<(ptxn&0x1f));                                                           //设置端口方向为输入
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ASRS     R1,R8,#+5
        LDR.W    R2,??DataTable1_11
        LDR      R1,[R2, R1, LSL #+2]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ASRS     R2,R8,#+5
        LDR.W    R3,??DataTable1_11
        LDR      R2,[R3, R2, LSL #+2]
        LDR      R2,[R2, #+20]
        MOVS     R3,#+1
        ANDS     R7,R8,#0x1F
        LSLS     R3,R3,R7
        BICS     R2,R2,R3
        STR      R2,[R1, #+20]
//   88     PORT_PCR_REG(PORTX[(ptxn>>5)],(ptxn&0x1F))= ( 0
//   89                                                 | PORT_PCR_MUX(1)               // 复用GPIO
//   90                                                 | PORT_PCR_IRQC(cfg & 0x03 )    // 确定触发模式
//   91                                                 | ((cfg & 0xc0 )>>6)            // 开启上拉或下拉电阻，或者没有
//   92                                                 | 0x10
//   93                                                   );
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ANDS     R1,R8,#0x1F
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ASRS     R2,R8,#+5
        LDR.W    R3,??DataTable1_12
        LDR      R2,[R3, R2, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R3,R0,#0x3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R3, LSL #+16
        ORRS     R0,R0,#0x110
        STR      R0,[R2, R1, LSL #+2]
//   94     GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &=~(1<<(ptxn&&0x1F));                                                            //输入模式
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??DMA_PORTx2BUFF_Init_12
        MOVS     R0,#+1
        B.N      ??DMA_PORTx2BUFF_Init_13
??DMA_PORTx2BUFF_Init_12:
        MOVS     R0,#+0
??DMA_PORTx2BUFF_Init_13:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ASRS     R1,R8,#+5
        LDR.W    R2,??DataTable1_11
        LDR      R1,[R2, R1, LSL #+2]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ASRS     R2,R8,#+5
        LDR.W    R3,??DataTable1_11
        LDR      R2,[R3, R2, LSL #+2]
        LDR      R2,[R2, #+20]
        MOVS     R3,#+1
        LSLS     R0,R3,R0
        BICS     R0,R2,R0
        STR      R0,[R1, #+20]
//   95 
//   96     /*  配置输入源   */
//   97     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK<<((((u32)SADDR)&0x1ff)>>6));                 //开启PORTx端口
        LDR.W    R0,??DataTable1_10  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        LSRS     R2,R5,#+6
        ANDS     R2,R2,#0x7
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable1_10  ;; 0x40048038
        STR      R0,[R1, #+0]
//   98     switch(byten)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??DMA_PORTx2BUFF_Init_14
        CMP      R4,#+2
        BEQ.N    ??DMA_PORTx2BUFF_Init_15
        BCC.N    ??DMA_PORTx2BUFF_Init_16
        B.N      ??DMA_PORTx2BUFF_Init_17
//   99     {
//  100      case DMA_BYTE1:
//  101         *((u8 *)((u32)SADDR+4))=0;       //设置为输入方向。为什么加4？PDIR地址加4后，就变成对应的PDDR地址
??DMA_PORTx2BUFF_Init_14:
        MOVS     R0,#+0
        STRB     R0,[R5, #+4]
//  102         break;
        B.N      ??DMA_PORTx2BUFF_Init_18
//  103      case DMA_BYTE2:
//  104         *((u16 *)((u32)SADDR+4))=0;
??DMA_PORTx2BUFF_Init_16:
        MOVS     R0,#+0
        STRH     R0,[R5, #+4]
//  105         break;
        B.N      ??DMA_PORTx2BUFF_Init_18
//  106      case DMA_BYTE4:
//  107         *((u32 *)((u32)SADDR+4))=0;
??DMA_PORTx2BUFF_Init_15:
        MOVS     R0,#+0
        STR      R0,[R5, #+4]
//  108         break;
        B.N      ??DMA_PORTx2BUFF_Init_18
//  109      default:
//  110         assert_failed(__FILE__, __LINE__);
??DMA_PORTx2BUFF_Init_17:
        MOVS     R1,#+110
        LDR.N    R0,??DataTable1_4
        BL       assert_failed
//  111         break;
//  112     }
//  113 
//  114     /*  输入源管脚选择功能脚  */
//  115     n=(u8)(((u32)SADDR - ((u32)(&PTA_BYTE0_IN)))&0x3f);             //最小的引脚号
??DMA_PORTx2BUFF_Init_18:
        MOVS     R0,R5
        SUBS     R0,R0,#+16
        ANDS     R0,R0,#0x3F
//  116     tmp=(n<<3) + (BYTEs<<3);                                             //最大的引脚号
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R1,R6,#+3
        ADDS     R1,R1,R0, LSL #+3
//  117     for(i=n;i<tmp;i++)
        B.N      ??DMA_PORTx2BUFF_Init_19
//  118     {
//  119       //#define PTA_BASE_PTR                             ((GPIO_MemMapPtr)0x400FF000u)
//  120       //地址经过以下运算后得到  01234对应ABCDE
//  121       PORT_PCR_REG(PORTX[   ((((u32)SADDR)&0x1ff)>>6)    ],i)=(0
//  122                                                                  |PORT_PCR_MUX(1)
//  123                                                                  | GPI_DOWN             //输入源应该下拉，默认读取到的是0
//  124                                                                  );
??DMA_PORTx2BUFF_Init_20:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R2,R5,#+6
        ANDS     R2,R2,#0x7
        LDR.N    R3,??DataTable1_12
        LDR      R2,[R3, R2, LSL #+2]
        MOV      R3,#+258
        STR      R3,[R2, R0, LSL #+2]
//  125     }
        ADDS     R0,R0,#+1
??DMA_PORTx2BUFF_Init_19:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCC.N    ??DMA_PORTx2BUFF_Init_20
//  126 }
        POP      {R0,R4-R9,PC}    ;; return
//  127 
//  128 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  129 void DMA_PORTx2BUFF_PeriInit(DMA_CHn CHn,void * SADDR,void * DADDR, PTxn ptxn,DMA_BYTEn byten,u32 count,DMA_PORTx2BUFF_cfg cfg)
//  130 {
DMA_PORTx2BUFF_PeriInit:
        PUSH     {R3-R9,LR}
        MOV      R8,R0
        MOVS     R6,R1
        MOVS     R5,R2
        MOV      R9,R3
        LDR      R4,[SP, #+32]
//  131     u8 n,i,tmp;
//  132 
//  133     ASSERT(                                             //用断言检测 源地址和每次传输字节数是否正确
//  134             (   (byten == DMA_BYTE1)                    //传输一个字节
//  135              && ( (SADDR >= &PTA_BYTE0_IN) && (SADDR <= ( &PTE_BYTE3_IN )))
//  136              )
//  137  
//  138           ||(   (byten == DMA_BYTE2)                    //传输两个字节(注意，不能跨端口)
//  139              && ( (SADDR >= &PTA_BYTE0_IN)
//  140              && (SADDR <= ( &PTE_WORD1_IN ))
//  141              && (((u32)SADDR&0x03)!=0x03) )             //保证不跨端口
//  142              )
//  143  
//  144           ||(   (byten == DMA_BYTE4)                    //传输四个字节
//  145              && ((SADDR >= &PTA_BYTE0_IN) && (SADDR <= ( &PTE_BYTE0_IN )))
//  146              && (((u32)SADDR&0x03)==0x00)               //保证不跨端口
//  147              )
//  148            );
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??DMA_PORTx2BUFF_PeriInit_0
        LDR.N    R0,??DataTable1  ;; 0x400ff010
        CMP      R6,R0
        BCC.N    ??DMA_PORTx2BUFF_PeriInit_0
        LDR.N    R0,??DataTable1_1  ;; 0x400ff113
        CMP      R0,R6
        BCS.N    ??DMA_PORTx2BUFF_PeriInit_1
??DMA_PORTx2BUFF_PeriInit_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??DMA_PORTx2BUFF_PeriInit_2
        LDR.N    R0,??DataTable1  ;; 0x400ff010
        CMP      R6,R0
        BCC.N    ??DMA_PORTx2BUFF_PeriInit_2
        LDR.N    R0,??DataTable1_2  ;; 0x400ff112
        CMP      R0,R6
        BCC.N    ??DMA_PORTx2BUFF_PeriInit_2
        ANDS     R0,R6,#0x3
        CMP      R0,#+3
        BNE.N    ??DMA_PORTx2BUFF_PeriInit_1
??DMA_PORTx2BUFF_PeriInit_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??DMA_PORTx2BUFF_PeriInit_3
        LDR.N    R0,??DataTable1  ;; 0x400ff010
        CMP      R6,R0
        BCC.N    ??DMA_PORTx2BUFF_PeriInit_3
        LDR.N    R0,??DataTable1_3  ;; 0x400ff110
        CMP      R0,R6
        BCC.N    ??DMA_PORTx2BUFF_PeriInit_3
        ANDS     R0,R6,#0x3
        CMP      R0,#+0
        BEQ.N    ??DMA_PORTx2BUFF_PeriInit_1
??DMA_PORTx2BUFF_PeriInit_3:
        MOVS     R1,#+148
        LDR.N    R0,??DataTable1_4
        BL       assert_failed
//  149 
//  150     u8 BYTEs=(byten==DMA_BYTE1 ? 1:(byten==DMA_BYTE2 ? 2:(byten==DMA_BYTE4 ? 4:16 ) ) );    //计算传输字节数
??DMA_PORTx2BUFF_PeriInit_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??DMA_PORTx2BUFF_PeriInit_4
        MOVS     R7,#+1
        B.N      ??DMA_PORTx2BUFF_PeriInit_5
??DMA_PORTx2BUFF_PeriInit_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??DMA_PORTx2BUFF_PeriInit_6
        MOVS     R7,#+2
        B.N      ??DMA_PORTx2BUFF_PeriInit_7
??DMA_PORTx2BUFF_PeriInit_6:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??DMA_PORTx2BUFF_PeriInit_8
        MOVS     R7,#+4
        B.N      ??DMA_PORTx2BUFF_PeriInit_9
??DMA_PORTx2BUFF_PeriInit_8:
        MOVS     R7,#+16
//  151 
//  152     /* 开启时钟 */
//  153     SIM_SCGC7|=SIM_SCGC7_DMA_MASK;                          //打开DMA模块时钟
??DMA_PORTx2BUFF_PeriInit_9:
??DMA_PORTx2BUFF_PeriInit_7:
??DMA_PORTx2BUFF_PeriInit_5:
        LDR.N    R0,??DataTable1_5  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable1_5  ;; 0x40048040
        STR      R0,[R1, #+0]
//  154     SIM_SCGC6|=SIM_SCGC6_DMAMUX_MASK;                       //打开DMA多路复用器时钟
        LDR.N    R0,??DataTable1_6  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable1_6  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  155 	
//  156     /* 配置 DMA 通道 的 传输控制块 TCD ( Transfer Control Descriptor ) */
//  157     DMA_SADDR(CHn) =    (u32)SADDR;                         // 设置  源地址
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R0,R8,#+5
        LDR.N    R1,??DataTable1_7  ;; 0x40009000
        STR      R6,[R0, R1]
//  158     DMA_DADDR(CHn) =    (u32)DADDR;                         // 设置目的地址
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R0,R8,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        STR      R5,[R0, #+16]
//  159     DMA_SOFF(CHn)  =    0x00u;                              // 设置源地址偏移 = 0x0, 即不变
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R0,R8,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//  160     DMA_DOFF(CHn)  =    BYTEs;                              // 每次传输后，目的地址加 BYTEs
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R0,R8,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STRH     R7,[R0, #+20]
//  161 
//  162     DMA_ATTR(CHn)  =    (0
//  163                         | DMA_ATTR_SMOD(0x0)                // 源地址模数禁止  Source address modulo feature is disabled
//  164                         | DMA_ATTR_SSIZE(byten)             // 源数据位宽 ：DMA_BYTEn  。    SSIZE = 0 -> 8-bit ，SSIZE = 1 -> 16-bit ，SSIZE = 2 -> 32-bit ，SSIZE = 4 -> 16-byte
//  165                         | DMA_ATTR_DMOD(0x0)                // 目标地址模数禁止
//  166                         | DMA_ATTR_DSIZE(byten)             // 目标数据位宽 ：DMA_BYTEn  。  设置参考  SSIZE
//  167                         );
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+8
        ANDS     R0,R0,#0x700
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R1,R4,#0x7
        ORRS     R0,R1,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R1,R8,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STRH     R0,[R1, #+6]
        LDR      R0,[SP, #+36]
//  168 
//  169     DMA_CITER_ELINKNO(CHn)  = DMA_CITER_ELINKNO_CITER(count); //当前主循环次数
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R1,R8,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        MOVS     R2,R0
        LSLS     R2,R2,#+17       ;; ZeroExtS R2,R2,#+17,#+17
        LSRS     R2,R2,#+17
        STRH     R2,[R1, #+22]
//  170     DMA_BITER_ELINKNO(CHn)  = DMA_BITER_ELINKYES_BITER(count);//起始主循环次数
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R1,R8,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        MOVS     R2,R0
        LSLS     R2,R2,#+23       ;; ZeroExtS R2,R2,#+23,#+23
        LSRS     R2,R2,#+23
        STRH     R2,[R1, #+30]
//  171 
//  172 
//  173     DMA_CR &=~DMA_CR_EMLM_MASK;                             // CR[EMLM] = 0
        LDR.N    R1,??DataTable1_8  ;; 0x40008000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x80
        LDR.N    R2,??DataTable1_8  ;; 0x40008000
        STR      R1,[R2, #+0]
//  174 
//  175     //当CR[EMLM] = 0 时:
//  176     DMA_NBYTES_MLNO(CHn)=   DMA_NBYTES_MLNO_NBYTES(BYTEs);  // 通道每次传输字节数，这里设置为BYTEs个字节。注：值为0表示传输4GB */
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R1,R8,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STR      R7,[R1, #+8]
//  177 
//  178 
//  179     /* 配置 DMA 传输结束后的操作 */
//  180     DMA_SLAST(CHn)      =   0;                              //调整  源地址的附加值,主循环结束后恢复  源地址
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R1,R8,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        MOVS     R2,#+0
        STR      R2,[R1, #+12]
        LDR      R5,[SP, #+40]
//  181     DMA_DLAST_SGA(CHn)  =   (u32)( (cfg&0x20) == 0 ? (-count)  :0 ); //调整目的地址的附加值,主循环结束后恢复目的地址或者保持地址
        LSLS     R1,R5,#+26
        BMI.N    ??DMA_PORTx2BUFF_PeriInit_10
        RSBS     R0,R0,#+0
        B.N      ??DMA_PORTx2BUFF_PeriInit_11
??DMA_PORTx2BUFF_PeriInit_10:
        MOVS     R0,#+0
??DMA_PORTx2BUFF_PeriInit_11:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R1,R8,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STR      R0,[R1, #+24]
//  182     DMA_CSR(CHn)        =   (0
//  183                              | DMA_CSR_DREQ_MASK            //主循环结束后停止硬件请求
//  184                              | DMA_CSR_INTMAJOR_MASK        //主循环结束后产生中断
//  185                              | DMA_CSR_START_MASK
//  186                              | DMA_CSR_ACTIVE_MASK   
//  187                              );
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R0,R8,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        MOVS     R1,#+75
        STRH     R1,[R0, #+28]
//  188       
//  189     DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,CHn) = 0x00;
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDR.N    R0,??DataTable1_9  ;; 0x40021000
        MOVS     R1,#+0
        STRB     R1,[R8, R0]
//  190     //DMA_ERQ |= (DMA_ERQ_ERQ0_MASK<<(CHn)) ;        //使能通道硬件DMA请求
//  191     pit_init(PIT0,1000);
        MOV      R1,#+1000
        MOVS     R0,#+0
        BL       pit_init
//  192     pit_init(PIT1,1000);
        MOV      R1,#+1000
        MOVS     R0,#+1
        BL       pit_init
//  193     pit_init(PIT2,1000);
        MOV      R1,#+1000
        MOVS     R0,#+2
        BL       pit_init
//  194     pit_init(PIT3,1000);
        MOV      R1,#+1000
        MOVS     R0,#+3
        BL       pit_init
//  195     PIT_IRQ_EN(PIT2);
        LDR.N    R0,??DataTable1_13  ;; 0x40037128
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable1_13  ;; 0x40037128
        STR      R0,[R1, #+0]
        MOVS     R0,#+70
        BL       enable_irq
//  196     /* 配置 DMA 触发源 */
//  197     DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,CHn) = 0xDF;
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDR.N    R0,??DataTable1_9  ;; 0x40021000
        MOVS     R1,#+223
        STRB     R1,[R8, R0]
//  198     //DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,CHn) = (0
//  199     //                                        | DMAMUX_CHCFG_ENBL_MASK                        /* Enable routing of DMA request */
//  200     //                                        | DMAMUX_CHCFG_TRIG_MASK                        /* Trigger Mode: Periodic   PIT周期触发传输模式   通道1对应PIT1，必须使能PIT1，且配置相应的PIT定时触发 */
//  201     //                                        //| DMAMUX_CHCFG_SOURCE((ptxn>>5)+DMA_Port_A)     /* 通道触发传输源:     */
//  202     //                                       );
//  203     
//  204     //DMA_CSR(CHn) |= 
//  205 ///*
//  206     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK<<(ptxn>>5));                                                                 //开启PORTx端口
        LDR.N    R0,??DataTable1_10  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LSRS     R2,R9,#+5
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable1_10  ;; 0x40048038
        STR      R0,[R1, #+0]
//  207     GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1<<(ptxn&0x1f));                                                           //设置端口方向为输入
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ASRS     R0,R9,#+5
        LDR.N    R1,??DataTable1_11
        LDR      R0,[R1, R0, LSL #+2]
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ASRS     R1,R9,#+5
        LDR.N    R2,??DataTable1_11
        LDR      R1,[R2, R1, LSL #+2]
        LDR      R1,[R1, #+20]
        MOVS     R2,#+1
        ANDS     R3,R9,#0x1F
        LSLS     R2,R2,R3
        BICS     R1,R1,R2
        STR      R1,[R0, #+20]
//  208     PORT_PCR_REG(PORTX[(ptxn>>5)],(ptxn&0x1F))= ( 0
//  209                                                 | PORT_PCR_MUX(1)               // 复用GPIO
//  210                                                 | PORT_PCR_IRQC(cfg & 0x03 )    // 确定触发模式
//  211                                                 | ((cfg & 0xc0 )>>6)            // 开启上拉或下拉电阻，或者没有
//  212                                                 );
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ANDS     R0,R9,#0x1F
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ASRS     R1,R9,#+5
        LDR.N    R2,??DataTable1_12
        LDR      R1,[R2, R1, LSL #+2]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ANDS     R2,R5,#0x3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSRS     R3,R5,#+6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ORRS     R2,R3,R2, LSL #+16
        ORRS     R2,R2,#0x100
        STR      R2,[R1, R0, LSL #+2]
//  213     GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &=~(1<<(ptxn&&0x1F));                                                            //输入模式
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.N    ??DMA_PORTx2BUFF_PeriInit_12
        MOVS     R0,#+1
        B.N      ??DMA_PORTx2BUFF_PeriInit_13
??DMA_PORTx2BUFF_PeriInit_12:
        MOVS     R0,#+0
??DMA_PORTx2BUFF_PeriInit_13:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ASRS     R1,R9,#+5
        LDR.N    R2,??DataTable1_11
        LDR      R1,[R2, R1, LSL #+2]
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ASRS     R2,R9,#+5
        LDR.N    R3,??DataTable1_11
        LDR      R2,[R3, R2, LSL #+2]
        LDR      R2,[R2, #+20]
        MOVS     R3,#+1
        LSLS     R0,R3,R0
        BICS     R0,R2,R0
        STR      R0,[R1, #+20]
//  214 //*/
//  215     /*  配置输入源   */
//  216     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK<<((((u32)SADDR)&0x1ff)>>6));                 //开启PORTx端口
        LDR.N    R0,??DataTable1_10  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        LSRS     R2,R6,#+6
        ANDS     R2,R2,#0x7
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable1_10  ;; 0x40048038
        STR      R0,[R1, #+0]
//  217     switch(byten)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??DMA_PORTx2BUFF_PeriInit_14
        CMP      R4,#+2
        BEQ.N    ??DMA_PORTx2BUFF_PeriInit_15
        BCC.N    ??DMA_PORTx2BUFF_PeriInit_16
        B.N      ??DMA_PORTx2BUFF_PeriInit_17
//  218     {
//  219      case DMA_BYTE1:
//  220         *((u8 *)((u32)SADDR+4))=0;       //设置为输入方向。为什么加4？PDIR地址加4后，就变成对应的PDDR地址
??DMA_PORTx2BUFF_PeriInit_14:
        MOVS     R0,#+0
        STRB     R0,[R6, #+4]
//  221         break;
        B.N      ??DMA_PORTx2BUFF_PeriInit_18
//  222      case DMA_BYTE2:
//  223         *((u16 *)((u32)SADDR+4))=0;
??DMA_PORTx2BUFF_PeriInit_16:
        MOVS     R0,#+0
        STRH     R0,[R6, #+4]
//  224         break;
        B.N      ??DMA_PORTx2BUFF_PeriInit_18
//  225      case DMA_BYTE4:
//  226         *((u32 *)((u32)SADDR+4))=0;
??DMA_PORTx2BUFF_PeriInit_15:
        MOVS     R0,#+0
        STR      R0,[R6, #+4]
//  227         break;
        B.N      ??DMA_PORTx2BUFF_PeriInit_18
//  228      default:
//  229         assert_failed(__FILE__, __LINE__);
??DMA_PORTx2BUFF_PeriInit_17:
        MOVS     R1,#+229
        LDR.N    R0,??DataTable1_4
        BL       assert_failed
//  230         break;
//  231     }
//  232 
//  233     /*  输入源管脚选择功能脚  */
//  234     n=(u8)(((u32)SADDR - ((u32)(&PTA_BYTE0_IN)))&0x3f);             //最小的引脚号
??DMA_PORTx2BUFF_PeriInit_18:
        MOVS     R0,R6
        SUBS     R0,R0,#+16
        ANDS     R0,R0,#0x3F
//  235     tmp=(n<<3) + (BYTEs<<3);                                             //最大的引脚号
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R1,R7,#+3
        ADDS     R1,R1,R0, LSL #+3
//  236     for(i=n;i<tmp;i++)
        B.N      ??DMA_PORTx2BUFF_PeriInit_19
//  237     {
//  238       //#define PTA_BASE_PTR                             ((GPIO_MemMapPtr)0x400FF000u)
//  239       //地址经过以下运算后得到  01234对应ABCDE
//  240       PORT_PCR_REG(PORTX[   ((((u32)SADDR)&0x1ff)>>6)    ],i)=(0
//  241                                                                  |PORT_PCR_MUX(1)
//  242                                                                  | GPI_DOWN             //输入源应该下拉，默认读取到的是0
//  243                                                                  );
??DMA_PORTx2BUFF_PeriInit_20:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R2,R6,#+6
        ANDS     R2,R2,#0x7
        LDR.N    R3,??DataTable1_12
        LDR      R2,[R3, R2, LSL #+2]
        MOV      R3,#+258
        STR      R3,[R2, R0, LSL #+2]
//  244     }
        ADDS     R0,R0,#+1
??DMA_PORTx2BUFF_PeriInit_19:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCC.N    ??DMA_PORTx2BUFF_PeriInit_20
//  245 }
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x400ff010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x400ff113

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x400ff112

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x400ff110

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     `?<Constant "C:\\\\Users\\\\Administrato...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x40008000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     GPIOx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     PORTX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     0x40037128
//  246 
//  247 
//  248 
//  249 /*************************************************************************
//  250 *  函数名称：DMA_setDAddress
//  251 *  功能说明：配置DMA目标地址
//  252 *  参数说明：DMA_CHn              通道号（DMA_CH0 ~ DMA_CH15）       
//  253 *            DADDR                目的地址
//  254 *  函数返回：无
//  255 *  修改时间：2012-1-20
//  256 *  备    注：
//  257 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  258 void DMA_setDAddress(DMA_CHn CHn,void * DADDR)
//  259 {
//  260     DMA_DADDR(CHn) =    (u32)DADDR;                         // 设置目的地址
DMA_setDAddress:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        STR      R1,[R0, #+16]
//  261 }
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
        DC8 65H, 73H, 6BH, 74H, 6FH, 70H, 5CH, 4DH
        DC8 50H, 55H, 36H, 30H, 35H, 30H, 38H, 2EH
        DC8 31H, 32H, 5CH, 73H, 72H, 63H, 5CH, 64H
        DC8 72H, 69H, 76H, 65H, 72H, 73H, 5CH, 64H
        DC8 6DH, 61H, 5CH, 64H, 6DH, 61H, 2EH, 63H
        DC8 0
        DC8 0, 0, 0

        END
//  262 
//  263 
// 
//    68 bytes in section .rodata
// 1 564 bytes in section .text
// 
// 1 564 bytes of CODE  memory
//    68 bytes of CONST memory
//
//Errors: none
//Warnings: none
