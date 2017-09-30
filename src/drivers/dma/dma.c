
#include "dma.h"
#include "pit.h"



/*************************************************************************
*  函数名称：DMA_PORTx2BUFF_Init
*  功能说明：DMA初始化，读取端口数据到内存
*  参数说明：DMA_CHn              通道号（DMA_CH0 ~ DMA_CH15）
*            SADDR                源地址( (void * )&PTx_BYTEn_IN 或 (void * )&PTx_WORDn_IN   )
*            DADDR                目的地址
*            PTxn                 触发端口
*            DMA_BYTEn            每次DMA传输字节数
*            count                一个主循环传输字节数
*            DMA_PORTx2BUFF_cfg   DMA传输配置
*  函数返回：无
*  修改时间：2012-1-20
*  备    注：
*************************************************************************/
void DMA_PORTx2BUFF_Init(DMA_CHn CHn,void * SADDR,void * DADDR, PTxn ptxn,DMA_BYTEn byten,u32 count,DMA_PORTx2BUFF_cfg cfg)
{
    u8 n,i,tmp;

    ASSERT(                                             //用断言检测 源地址和每次传输字节数是否正确
            (   (byten == DMA_BYTE1)                    //传输一个字节
             && ( (SADDR >= &PTA_BYTE0_IN) && (SADDR <= ( &PTE_BYTE3_IN )))
             )

          ||(   (byten == DMA_BYTE2)                    //传输两个字节(注意，不能跨端口)
             && ( (SADDR >= &PTA_BYTE0_IN)
             && (SADDR <= ( &PTE_WORD1_IN ))
             && (((u32)SADDR&0x03)!=0x03) )             //保证不跨端口
             )

          ||(   (byten == DMA_BYTE4)                    //传输四个字节
             && ((SADDR >= &PTA_BYTE0_IN) && (SADDR <= ( &PTE_BYTE0_IN )))
             && (((u32)SADDR&0x03)==0x00)               //保证不跨端口
             )
           );

    u8 BYTEs=(byten==DMA_BYTE1 ? 1:(byten==DMA_BYTE2 ? 2:(byten==DMA_BYTE4 ? 4:16 ) ) );    //计算传输字节数

    /* 开启时钟 */
    SIM_SCGC7|=SIM_SCGC7_DMA_MASK;                          //打开DMA模块时钟
    SIM_SCGC6|=SIM_SCGC6_DMAMUX_MASK;                       //打开DMA多路复用器时钟
	
    /* 配置 DMA 通道 的 传输控制块 TCD ( Transfer Control Descriptor ) */
    DMA_SADDR(CHn) =    (u32)SADDR;                         // 设置  源地址
    DMA_DADDR(CHn) =    (u32)DADDR;                         // 设置目的地址
    DMA_SOFF(CHn)  =    0x00u;                              // 设置源地址偏移 = 0x0, 即不变
    DMA_DOFF(CHn)  =    BYTEs;                              // 每次传输后，目的地址加 BYTEs

    DMA_ATTR(CHn)  =    (0
                        | DMA_ATTR_SMOD(0x0)                // 源地址模数禁止  Source address modulo feature is disabled
                        | DMA_ATTR_SSIZE(byten)             // 源数据位宽 ：DMA_BYTEn  。    SSIZE = 0 -> 8-bit ，SSIZE = 1 -> 16-bit ，SSIZE = 2 -> 32-bit ，SSIZE = 4 -> 16-byte
                        | DMA_ATTR_DMOD(0x0)                // 目标地址模数禁止
                        | DMA_ATTR_DSIZE(byten)             // 目标数据位宽 ：DMA_BYTEn  。  设置参考  SSIZE
                        );

    DMA_CITER_ELINKNO(CHn)  = DMA_CITER_ELINKNO_CITER(count); //当前主循环次数
    DMA_BITER_ELINKNO(CHn)  = DMA_BITER_ELINKYES_BITER(count);//起始主循环次数


    DMA_CR &=~DMA_CR_EMLM_MASK;                             // CR[EMLM] = 0

    //当CR[EMLM] = 0 时:
    DMA_NBYTES_MLNO(CHn)=   DMA_NBYTES_MLNO_NBYTES(BYTEs);  // 通道每次传输字节数，这里设置为BYTEs个字节。注：值为0表示传输4GB */


    /* 配置 DMA 传输结束后的操作 */
    DMA_SLAST(CHn)      =   0;                              //调整  源地址的附加值,主循环结束后恢复  源地址
    DMA_DLAST_SGA(CHn)  =   (u32)( (cfg&0x20) == 0 ? (-count)  :0 ); //调整目的地址的附加值,主循环结束后恢复目的地址或者保持地址
    DMA_CSR(CHn)        =   (0
                             | DMA_CSR_DREQ_MASK            //主循环结束后停止硬件请求
                             | DMA_CSR_INTMAJOR_MASK        //主循环结束后产生中断
                             );
                             
    /* 配置 DMA 触发源 */
    DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,CHn) = (0
                                            | DMAMUX_CHCFG_ENBL_MASK                        /* Enable routing of DMA request */
                                            //| DMAMUX_CHCFG_TRIG_MASK                        /* Trigger Mode: Periodic   PIT周期触发传输模式   通道1对应PIT1，必须使能PIT1，且配置相应的PIT定时触发 */
                                            | DMAMUX_CHCFG_SOURCE((ptxn>>5)+DMA_Port_A)     /* 通道触发传输源:     */
                                            );

    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK<<(ptxn>>5));                                                                 //开启PORTx端口
    GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1<<(ptxn&0x1f));                                                           //设置端口方向为输入
    PORT_PCR_REG(PORTX[(ptxn>>5)],(ptxn&0x1F))= ( 0
                                                | PORT_PCR_MUX(1)               // 复用GPIO
                                                | PORT_PCR_IRQC(cfg & 0x03 )    // 确定触发模式
                                                | ((cfg & 0xc0 )>>6)            // 开启上拉或下拉电阻，或者没有
                                                | 0x10
                                                  );
    GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &=~(1<<(ptxn&&0x1F));                                                            //输入模式

    /*  配置输入源   */
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK<<((((u32)SADDR)&0x1ff)>>6));                 //开启PORTx端口
    switch(byten)
    {
     case DMA_BYTE1:
        *((u8 *)((u32)SADDR+4))=0;       //设置为输入方向。为什么加4？PDIR地址加4后，就变成对应的PDDR地址
        break;
     case DMA_BYTE2:
        *((u16 *)((u32)SADDR+4))=0;
        break;
     case DMA_BYTE4:
        *((u32 *)((u32)SADDR+4))=0;
        break;
     default:
        assert_failed(__FILE__, __LINE__);
        break;
    }

    /*  输入源管脚选择功能脚  */
    n=(u8)(((u32)SADDR - ((u32)(&PTA_BYTE0_IN)))&0x3f);             //最小的引脚号
    tmp=(n<<3) + (BYTEs<<3);                                             //最大的引脚号
    for(i=n;i<tmp;i++)
    {
      //#define PTA_BASE_PTR                             ((GPIO_MemMapPtr)0x400FF000u)
      //地址经过以下运算后得到  01234对应ABCDE
      PORT_PCR_REG(PORTX[   ((((u32)SADDR)&0x1ff)>>6)    ],i)=(0
                                                                 |PORT_PCR_MUX(1)
                                                                 | GPI_DOWN             //输入源应该下拉，默认读取到的是0
                                                                 );
    }
}


void DMA_PORTx2BUFF_PeriInit(DMA_CHn CHn,void * SADDR,void * DADDR, PTxn ptxn,DMA_BYTEn byten,u32 count,DMA_PORTx2BUFF_cfg cfg)
{
    u8 n,i,tmp;

    ASSERT(                                             //用断言检测 源地址和每次传输字节数是否正确
            (   (byten == DMA_BYTE1)                    //传输一个字节
             && ( (SADDR >= &PTA_BYTE0_IN) && (SADDR <= ( &PTE_BYTE3_IN )))
             )

          ||(   (byten == DMA_BYTE2)                    //传输两个字节(注意，不能跨端口)
             && ( (SADDR >= &PTA_BYTE0_IN)
             && (SADDR <= ( &PTE_WORD1_IN ))
             && (((u32)SADDR&0x03)!=0x03) )             //保证不跨端口
             )

          ||(   (byten == DMA_BYTE4)                    //传输四个字节
             && ((SADDR >= &PTA_BYTE0_IN) && (SADDR <= ( &PTE_BYTE0_IN )))
             && (((u32)SADDR&0x03)==0x00)               //保证不跨端口
             )
           );

    u8 BYTEs=(byten==DMA_BYTE1 ? 1:(byten==DMA_BYTE2 ? 2:(byten==DMA_BYTE4 ? 4:16 ) ) );    //计算传输字节数

    /* 开启时钟 */
    SIM_SCGC7|=SIM_SCGC7_DMA_MASK;                          //打开DMA模块时钟
    SIM_SCGC6|=SIM_SCGC6_DMAMUX_MASK;                       //打开DMA多路复用器时钟
	
    /* 配置 DMA 通道 的 传输控制块 TCD ( Transfer Control Descriptor ) */
    DMA_SADDR(CHn) =    (u32)SADDR;                         // 设置  源地址
    DMA_DADDR(CHn) =    (u32)DADDR;                         // 设置目的地址
    DMA_SOFF(CHn)  =    0x00u;                              // 设置源地址偏移 = 0x0, 即不变
    DMA_DOFF(CHn)  =    BYTEs;                              // 每次传输后，目的地址加 BYTEs

    DMA_ATTR(CHn)  =    (0
                        | DMA_ATTR_SMOD(0x0)                // 源地址模数禁止  Source address modulo feature is disabled
                        | DMA_ATTR_SSIZE(byten)             // 源数据位宽 ：DMA_BYTEn  。    SSIZE = 0 -> 8-bit ，SSIZE = 1 -> 16-bit ，SSIZE = 2 -> 32-bit ，SSIZE = 4 -> 16-byte
                        | DMA_ATTR_DMOD(0x0)                // 目标地址模数禁止
                        | DMA_ATTR_DSIZE(byten)             // 目标数据位宽 ：DMA_BYTEn  。  设置参考  SSIZE
                        );

    DMA_CITER_ELINKNO(CHn)  = DMA_CITER_ELINKNO_CITER(count); //当前主循环次数
    DMA_BITER_ELINKNO(CHn)  = DMA_BITER_ELINKYES_BITER(count);//起始主循环次数


    DMA_CR &=~DMA_CR_EMLM_MASK;                             // CR[EMLM] = 0

    //当CR[EMLM] = 0 时:
    DMA_NBYTES_MLNO(CHn)=   DMA_NBYTES_MLNO_NBYTES(BYTEs);  // 通道每次传输字节数，这里设置为BYTEs个字节。注：值为0表示传输4GB */


    /* 配置 DMA 传输结束后的操作 */
    DMA_SLAST(CHn)      =   0;                              //调整  源地址的附加值,主循环结束后恢复  源地址
    DMA_DLAST_SGA(CHn)  =   (u32)( (cfg&0x20) == 0 ? (-count)  :0 ); //调整目的地址的附加值,主循环结束后恢复目的地址或者保持地址
    DMA_CSR(CHn)        =   (0
                             | DMA_CSR_DREQ_MASK            //主循环结束后停止硬件请求
                             | DMA_CSR_INTMAJOR_MASK        //主循环结束后产生中断
                             | DMA_CSR_START_MASK
                             | DMA_CSR_ACTIVE_MASK   
                             );
      
    DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,CHn) = 0x00;
    //DMA_ERQ |= (DMA_ERQ_ERQ0_MASK<<(CHn)) ;        //使能通道硬件DMA请求
    pit_init(PIT0,1000);
    pit_init(PIT1,1000);
    pit_init(PIT2,1000);
    pit_init(PIT3,1000);
    PIT_IRQ_EN(PIT2);
    /* 配置 DMA 触发源 */
    DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,CHn) = 0xDF;
    //DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,CHn) = (0
    //                                        | DMAMUX_CHCFG_ENBL_MASK                        /* Enable routing of DMA request */
    //                                        | DMAMUX_CHCFG_TRIG_MASK                        /* Trigger Mode: Periodic   PIT周期触发传输模式   通道1对应PIT1，必须使能PIT1，且配置相应的PIT定时触发 */
    //                                        //| DMAMUX_CHCFG_SOURCE((ptxn>>5)+DMA_Port_A)     /* 通道触发传输源:     */
    //                                       );
    
    //DMA_CSR(CHn) |= 
///*
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK<<(ptxn>>5));                                                                 //开启PORTx端口
    GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1<<(ptxn&0x1f));                                                           //设置端口方向为输入
    PORT_PCR_REG(PORTX[(ptxn>>5)],(ptxn&0x1F))= ( 0
                                                | PORT_PCR_MUX(1)               // 复用GPIO
                                                | PORT_PCR_IRQC(cfg & 0x03 )    // 确定触发模式
                                                | ((cfg & 0xc0 )>>6)            // 开启上拉或下拉电阻，或者没有
                                                );
    GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &=~(1<<(ptxn&&0x1F));                                                            //输入模式
//*/
    /*  配置输入源   */
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK<<((((u32)SADDR)&0x1ff)>>6));                 //开启PORTx端口
    switch(byten)
    {
     case DMA_BYTE1:
        *((u8 *)((u32)SADDR+4))=0;       //设置为输入方向。为什么加4？PDIR地址加4后，就变成对应的PDDR地址
        break;
     case DMA_BYTE2:
        *((u16 *)((u32)SADDR+4))=0;
        break;
     case DMA_BYTE4:
        *((u32 *)((u32)SADDR+4))=0;
        break;
     default:
        assert_failed(__FILE__, __LINE__);
        break;
    }

    /*  输入源管脚选择功能脚  */
    n=(u8)(((u32)SADDR - ((u32)(&PTA_BYTE0_IN)))&0x3f);             //最小的引脚号
    tmp=(n<<3) + (BYTEs<<3);                                             //最大的引脚号
    for(i=n;i<tmp;i++)
    {
      //#define PTA_BASE_PTR                             ((GPIO_MemMapPtr)0x400FF000u)
      //地址经过以下运算后得到  01234对应ABCDE
      PORT_PCR_REG(PORTX[   ((((u32)SADDR)&0x1ff)>>6)    ],i)=(0
                                                                 |PORT_PCR_MUX(1)
                                                                 | GPI_DOWN             //输入源应该下拉，默认读取到的是0
                                                                 );
    }
}



/*************************************************************************
*  函数名称：DMA_setDAddress
*  功能说明：配置DMA目标地址
*  参数说明：DMA_CHn              通道号（DMA_CH0 ~ DMA_CH15）       
*            DADDR                目的地址
*  函数返回：无
*  修改时间：2012-1-20
*  备    注：
*************************************************************************/
void DMA_setDAddress(DMA_CHn CHn,void * DADDR)
{
    DMA_DADDR(CHn) =    (u32)DADDR;                         // 设置目的地址
}


