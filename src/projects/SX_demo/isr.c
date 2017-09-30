/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[isr.c] 
* 描  述 ：中断处理例程
* 原创   ：野火嵌入式开发工作室
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：所有的中断函数写在这里
***********************************************************************
*/



#include "common.h"
#include "include.h"
#include "isr.h"
#include "global.h"

u8 PITcounter = 0;
/************************************************************************* 
*  函数名称：PIT0_IRQHandler
*  功能说明：PIT0 定时中断服务函数
*  参数说明：无   
*  函数返回：无
*  修改时间：2012-2-18    已测试
*  备    注：建议大家在写程序时尽量用宏定义，这样写出的代码可移值性强
*************************************************************************/
void PIT0_IRQHandler(void)
{
    PIT_Flag_Clear(PIT0);                 //清中断标志位
   
    trueSpeed = LPTMR0_CNR;   //保存脉冲计数器计算值
    lptmr_counter_clean(); 
    //速度控制算法
    motorCtrl();
      
    GPIO_TURN(PORTB,0);       //用于测试PIT频率
    PITcounter = (PITcounter + 1) % 13;
}



u32 tmpline = 0;//行号
u32 tmprow = 0; //列号
u32 tmpnum = 0; //场号
u32 picLineSum = 0;//总行数


#ifdef CCD_DMA

#warning  "this is DMA"
void FTM2_IRQHandler()
{
    u8 s=FTM2_STATUS;               //读取捕捉和比较状态  All CHnF bits can be checked using only one read of STATUS.
    u8 CHn;
   
    DisableInterrupts; 
    FTM2_STATUS=0x00;               //清中断标志位
    
    //行中断 PTA8
    CHn=0;//中断标志位被置位，且中断使能 
    if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
    {
        tmpline++; 
        

        if(0 == (tmpline % 2))
        {
            ASSERT_RST(DMA_CITER_ELINKNO(CCD_DMA_CH) == COLUMN,"DMA末传输结束");
            DMA_SETDAADDR(CCD_DMA_CH,&Pic_Buffer[tmprow][0]);
            DMA_EN(CCD_DMA_CH);                         //开始DMA传输 
            
            tmprow++;
            if(tmprow >= ROW)
            {
                photeCompleteFlag = 1;
            }
        }
        
    }
    
    //场中断      PTA9
    CHn=1;
    if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
    {
       //uartSendChar(UART0,'v');
       //uartPrintf("场中断开\n");
       tmpnum++;
       picLineSum = tmpline;
       tmpline = 0;
       tmprow = 0;
       DMA_IRQ_CLEAN(CCD_DMA_CH);
       En_HREF;     //打开行中断
    }
    EnableInterrupts; 
}

#else //#ifdef CCD_DMA

#warning  "this interrupt"


/*
以下是一96M 系统时钟 48M总线时钟下调试成功，其他摄像头需要自己调配
*/
#define nops()  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop")
void FTM2_IRQHandler()
{
    u8 s=FTM2_STATUS;               //读取捕捉和比较状态  All CHnF bits can be checked using only one read of STATUS.
    u8 CHn;
    u8 tmpcol = 0;
    DisableInterrupts; 
    FTM2_STATUS=0x00;               //清中断标志位
    
    //行中断 PTA8
    CHn=0;//中断标志位被置位，且中断使能 
    if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
    {
        tmpline++;
        
        if(0 == (tmpline % 2))
        {
            for(tmpcol = 0;tmpcol < COLUMN;tmpcol++)
            {
               Pic_Buffer[tmprow][tmpcol] = CCD_DATA;
               nops(); 
            }
            
            tmprow++;
            if(tmprow >= ROW)
            {
              photeCompleteFlag = 1;
            }
        }
        
    }
    
    //场中断      PTA9
    CHn=1;
    if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
    {
       //uartSendChar(UART0,'v');
       tmpnum++;
       picLineSum = tmpline;
       tmpline = 0;
       tmprow = 0;
       En_HREF;     //打开行中断
    }
    EnableInterrupts; 
}
#endif   //#ifdef CCD_DMA

/*************************************************************************
*  函数名称：USART1_IRQHandler
*  功能说明：串口1 中断 接收 服务函数
*  参数说明：无   
*  函数返回：无
*  修改时间：2012-2-14    已测试
*  备    注：
*************************************************************************/
void UART0_IRQHandler(void)
{
    uint8 ch;
    
    DisableInterrupts;		    //关总中断
    
    //接收一个字节数据并回发
    ch=uartRecvChar (UART0);                //接收到一个数据
    uart0Printf("cmd = 0x%X\n",ch);
    
    if(ch == 's')
    {
    if((showChoice & 0x01))
         showChoice &= 0xFE;
    else
         showChoice |= 0x01;
    }
    EnableInterrupts;		    //开总中断
}