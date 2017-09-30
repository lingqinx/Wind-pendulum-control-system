/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[ccd.c] 
* 描  述 ：摄像头驱动函数
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：摄像头驱动函数
***********************************************************************
*/
#include "common.h"
#include "ccd.h"
#include "uart.h"
#include "global.h"
#include "fun.h"

#define  printp         uartPrintf
#define  myprintf       uartPrintf
#define  myprintfno     uartPrintf


/*************************************************************************
*  函数名称：LED_init
*  功能说明：初始化LED端口，设置IO口为输出方向
*  参数说明：无
*  函数返回：无
*  修改时间：2012-2-2   已测试
*  备    注：
*************************************************************************/
void    CCD_init(void)
{
    int i = 0;
    ASSERT_RST((CCD0 == 0 || CCD0 == 8 || CCD0 == 16 || CCD0 == 24),"CCD 管脚定义错误，CCD0为0 or 8or 16 or 24");
    ASSERT_RST((CCD0 == CCD ),"CCD 管脚定义错误，CCD0为必须与宏定义CCD一致");
   /*
    gpio_init(CCD_PORT,CCD0,GPI_DOWN,0);
    gpio_init(CCD_PORT,CCD1,GPI_DOWN,0);
    gpio_init(CCD_PORT,CCD2,GPI_DOWN,0);
    gpio_init(CCD_PORT,CCD3,GPI_DOWN,0);
    gpio_init(CCD_PORT,CCD4,GPI_DOWN,0);
    gpio_init(CCD_PORT,CCD5,GPI_DOWN,0);
    gpio_init(CCD_PORT,CCD6,GPI_DOWN,0);
    gpio_init(CCD_PORT,CCD7,GPI_DOWN,0);
  */  
    gpio_init(CCD_PORT,CCD0,GPI,0);
    gpio_init(CCD_PORT,CCD1,GPI,0);
    gpio_init(CCD_PORT,CCD2,GPI,0);
    gpio_init(CCD_PORT,CCD3,GPI,0);
    gpio_init(CCD_PORT,CCD4,GPI,0);
    gpio_init(CCD_PORT,CCD5,GPI,0);
    gpio_init(CCD_PORT,CCD6,GPI,0);
    gpio_init(CCD_PORT,CCD7,GPI,0);
    
    //行中断
    FTM_Input_init(CCD_FTM,CCD_HR_CH,Rising);              //初始化FTM输入捕捉模式，上升沿触发
    //场中断
    FTM_Input_init(CCD_FTM,CCD_VS_CH,Falling);             //初始化FTM输入捕捉模式，下降沿触发
    //关行场中断
    Dis_CCD;
    
#ifdef CCD_DMA
    DMA_PORTx2BUFF_Init (CCD_DMA_CH,(void *)&CCD_DATA,&Pic_Buffer[0][0],PLCK_CH,DMA_BYTE1,COLUMN,DMA_rising);//DMA_falling DMA_rising
    //DMA通道4初始化，PTA27上升沿触发DMA传输，源地址为PTD_BYTE0_IN，目的地址为：BUFF ，每次传输1Byte，传输3次后停止传输，恢复目的地址   
    /* 开启中断 */
    //DMA_EN(CCD_DMA_CH);                                    //使能通道CHn 硬件请求
    //DMA_IRQ_EN(CCD_DMA_CH);                                //允许DMA通道传输 
    DMA_IRQ_CLEAN(CCD_DMA_CH);
#endif
    
    for(i = 0;i<ROW;i++)
       Line_Center[i] = COLUMN/2;
    
    for(i = 0;i<ROW;i++)
       Line_Center_L[i] = COLUMN_START;
    
    for(i = 0;i<ROW;i++)
       Line_Center_R[i] = COLUMN_END;
    
}
/***************************************************
** 函数名称: WritePicBlack
** 功能描述: 以 * 表示黑色输出图像
** 入口：
** 出口：
** 说明: 调试用，看取到的图像   
****************************************************/ 
void WritePicBlack()
{
     unsigned int rows = 0, cols = 0;
     for(rows = 1;rows < ROW;rows++)
     {
         myprintf("%2d",rows);
         for(cols = 0;cols < COLUMN;cols++)
         {
            if(Pic_Buffer[rows][cols] < PhotoBlackMax)
                 myprintfno("*");
            else
                 myprintfno(" ");
         }
         myprintf("\n");
     }
     myprintf("\n");
     
}

/***************************************************
** 函数名称: WritePicTest
** 功能描述: 遍历图像数据  用于测试时间
** 入口：
** 出口：
** 说明: 
****************************************************/ 
void WritePicTest()
{
     unsigned int rows = 0, cols = 0;
     for(rows = 0;rows < ROW;rows++)
     {
         for(cols = 0;cols < COLUMN;cols++)
         {
            Pic_Buffer[rows][cols]=0;
         }
     }
     
}

/*
***************************************************************** 
** 函数名称: ShowPhoto
** 功能描述: 画出一幅图画
** 输    入: 无 
** 输    出: 无 
** 说明：  
*****************************************************************
*/
void ShowPhoto()
{
    u16 i,j;
    for(i=0;i<ROW;i++) 
      { 
        for(j=0;j<COLUMN;j++)
        {
             uart0Printf("%d",Pic_Buffer[i][j]);
             if(j != COLUMN -1)
                 uart0Printf(",");
#if TEST != 8             
             if(!(showChoice & 0x01)) 
                 return;
#endif
        }         
        uart0Printf("\n");
    }
    uart0Printf("\n"); 
    uart0Printf("\n"); 
    uart0Printf("\n"); 
    uart0Printf("\n"); 
    uart0Printf("\n");
   
}


/*
**************************************************
** 函数名称：void GetPhoto()
** 功能描述：图像提取
**  参  数 ：无
** 返 回 值：无
**  说  明 ：提取一幅图像到全局数组变量 Pic_Buffer 中 
**************************************************
*/
void GetPhoto() 
{
    photeCompleteFlag = 0;
    Clr_CCDF;
    En_VSYNC;
    while(!photeCompleteFlag);
    Dis_CCD;
    photeCompleteFlag = 0;
}




/*
**************************************************
* 函数名称: OptimizeCenterLine
* 功能描述: 路线滤波(优化) 
* 入口：
* 出口：
* 说明: 前后取中值 
***************************************************
*/
void  OptimizeCenterLine()
{
      unsigned char i = 0; 
      Line_Center[ROW-1] = get_mid(Line_Center[ROW-2],Line_Center[ROW-3],Line_Center[ROW-4]);
      for(i = ROW -2 ;i > 1;i--)
      {
          Line_Center[i] = get_mid(Line_Center[i - 1],Line_Center[i],Line_Center[i + 1]);
      }
      //Line_Center[EndLine] = get_mid(Line_Center[EndLine],Line_Center[EndLine + 1],Line_Center[EndLine + 2]);
}

/*
********************************************************************
* 函数名称: void ImproveSingleRow
*           (unsigned char irows, unsigned char llimit, unsigned char rlimit, unsigned imp)
* 功能描述: 提高单行图像质量（除噪加提高对比度） 
* 入口：所在列irow  左右限llimit, rlimit(能取到) ,提高比imp (放大20倍)
* 出口：
* 说明: 对异常点取其左，右，上的平均 
********************************************************************
*/
void ImproveSingleRow(unsigned int irows, unsigned int llimit, unsigned int rlimit)
{
     unsigned int icol = 0;
     unsigned int j = 0,sum = 0;
     
     if(llimit < COLUMN_START)
        llimit = COLUMN_START;
     if(rlimit > COLUMN_END)
        rlimit = llimit < COLUMN_END;
     
     for(icol = llimit;icol < rlimit + 1;icol++)
     {
         //去除极黑极白点 
         if(Pic_Buffer[irows][icol] < 20 || Pic_Buffer[irows][icol] > 235)
         {
             j = 0,sum = 0;
             if(Pic_Buffer[irows][icol - 1] > 20 && Pic_Buffer[irows][icol - 1] < 235)
                 sum += Pic_Buffer[irows][icol - 1],j++;
             if(Pic_Buffer[irows][icol + 1] > 20 && Pic_Buffer[irows][icol + 1] < 235)
                 sum += Pic_Buffer[irows][icol + 1],j++;
             if(Pic_Buffer[irows - 1][icol] > 20 && Pic_Buffer[irows - 1][icol] < 235)
                 sum += Pic_Buffer[irows - 1][icol],j++;
                 
             if(j > 0)
                 Pic_Buffer[irows][icol] = sum/j;
         }
     }
}//end of void ImproveSingleRow(unsigned char irows, unsigned char llimit, unsigned char rlimit, unsigned imp)

/*
**************************************************
* 函数名称: void GetBlackLine() 
* 功能描述: 取得黑线 
* 入口：
* 出口：
* 说明: 
***************************************************
*/

void GetBlackLine() 
{
      unsigned int gcol = 0,grow = 0;
      unsigned int left = 0,right = 0;
      unsigned int LlLimit = 0,LrLimit = 0,RlLimit = 0,RrLimit = 0;
      unsigned int lFindFlag = 0,rFindFlag = 0;
      unsigned int lLost = 0,rLost = 0;
#if G_PRINT
      int temp0 = 0,temp1 = 0;
#endif
      grow = ROW-1;
      left = COLUMN_START;
      right = COLUMN_END;
      
      LrLimit = COLUMN/2;
      LlLimit = COLUMN_START;
      
      RlLimit = COLUMN/2;
      RrLimit = COLUMN_END;
      
      Line_Center_L[grow] = left;
      Line_Center_R[grow] = right;
      while(grow > 0)
      {
#if G_PRINT
           printp("--------------------------------------------------------------------------row = %d\n",grow);
#endif
          lFindFlag = 0;
          rFindFlag = 0;
#if G_PRINT
          printp("LEFT: %d-%d \n",LlLimit,LrLimit);
#endif  
          ImproveSingleRow(grow, LlLimit, LrLimit+5);
          for(gcol = LrLimit;gcol>= LlLimit;gcol--)
          {
#if G_PRINT
              temp0 = (Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3);
              temp1 = (Pic_Buffer[grow][gcol+3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3);
              printp("%3d********************************(%3d - %3d = %4d)\n",gcol+1,temp0,temp1,temp0-temp1);
#endif              
              if((Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3 + THRESHOLD) < (Pic_Buffer[grow][gcol + 3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3))
              {
#if G_PRINT
                   printp("left:\n%4d%4d%4d%4d%4d%4d\n",Pic_Buffer[grow][gcol],Pic_Buffer[grow][gcol+1],Pic_Buffer[grow][gcol+2],Pic_Buffer[grow][gcol+3],Pic_Buffer[grow][gcol+4],Pic_Buffer[grow][gcol+5]);
                   printp("%d - %d = -%d\n",(Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3),(Pic_Buffer[grow][gcol + 3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3),(Pic_Buffer[grow][gcol + 3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3)-(Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3));
#endif
                   left = gcol + 1;
                   Line_Center_L[grow] = left;
                   
                   if(left + SEARCHWITHDEN < COLUMN_END)
                       LrLimit = left + SEARCHWITHDEN;
                   else
                       LrLimit = COLUMN_END; 
                       
                   if(COLUMN_START + SEARCHWITHDDIS < left)
                       LlLimit = left - SEARCHWITHDDIS;
                   else
                       LlLimit = COLUMN_START;
                       
                       
                   lFindFlag = 1;
                   lLost = 0;
#if G_PRINT
                   printp("left = %d\n",left);
#endif 
                   break;
              }
          }
#if G_PRINT
          printp("RIGHT: %d-%d \n",RlLimit,RrLimit);
#endif           
          ImproveSingleRow(grow, RlLimit - 5, RrLimit);
          for(gcol = RlLimit-5;gcol<= RrLimit-5;gcol++)
          {
#if G_PRINT
              temp0 = (Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3);
              temp1 = (Pic_Buffer[grow][gcol+3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3);
              printp("%3d********************************(%3d - %3d = %4d)\n",gcol+1,temp0,temp1,temp0-temp1);
#endif 
              if((Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3) > (Pic_Buffer[grow][gcol + 3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3  + THRESHOLD))
              {
#if G_PRINT
                   printp("right:\n%4d%4d%4d%4d%4d%4d\n",Pic_Buffer[grow][gcol],Pic_Buffer[grow][gcol+1],Pic_Buffer[grow][gcol+2],Pic_Buffer[grow][gcol+3],Pic_Buffer[grow][gcol+4],Pic_Buffer[grow][gcol+5]);
                   printp("%d - %d = %d\n",(Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3),(Pic_Buffer[grow][gcol + 3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3),(Pic_Buffer[grow][gcol]/3 + Pic_Buffer[grow][gcol + 1]/3 + Pic_Buffer[grow][gcol + 2]/3)-(Pic_Buffer[grow][gcol + 3]/3 + Pic_Buffer[grow][gcol + 4]/3 + Pic_Buffer[grow][gcol + 5]/3));
#endif
                   right = gcol + 4;
                   Line_Center_R[grow] = right;
                   
                   if(COLUMN_START + SEARCHWITHDEN < right)
                       RlLimit = right - SEARCHWITHDEN;
                   else
                       RlLimit = COLUMN_END; 
                       
                   if(right + SEARCHWITHDDIS < COLUMN_END)
                       RrLimit = right + SEARCHWITHDDIS;
                   else
                       RrLimit = COLUMN_END;
                       
                   rFindFlag = 1; 
                   rLost = 0;
#if G_PRINT
                   printp("*RIGHT: %d-%d \n",RlLimit,RrLimit);
                   printp("right = %d\n",right);
#endif
                   
                   break;
              }
          }
#if G_PRINT
           printp("lFindFlag = %d   ",lFindFlag);
           printp("rFindFlag = %d \n",rFindFlag);
           printp("lLost = %d   ",lLost);
           printp("rLost = %d \n",rLost);
#endif          
          if(lFindFlag == 0 && grow < ROW - 1)
          {
              left = Line_Center_L[grow + 1];
              Line_Center_L[grow] = left;
              lLost++;
              if(lLost > 5)
              {
#if G_PRINT
              printp("left迷失超过5次扩展搜索范围\n");
#endif
                   if(left + SEARCHWITHDEXT < COLUMN_END)
                       LrLimit = left + SEARCHWITHDEXT;
                   else
                       LrLimit = COLUMN_END; 
                       
                   if(COLUMN_START + SEARCHWITHDEXT/2 < left)
                       LlLimit = left - SEARCHWITHDEXT/2;
                   else
                       LlLimit = COLUMN_START; 
                   //if(Line_Center_L[grow] < COLUMN_END && lLost % 2 == 0)
                   //    Line_Center_L[grow]++;
              }
                
#if G_PRINT
              printp("left未找到，取前一个点\n");
#endif        
          }
          
          if(rFindFlag == 0 && grow < ROW - 1)
          {
              right = Line_Center_R[grow + 1];
              Line_Center_R[grow] = right;
              rLost++;
              if(rLost > 5)
              {
#if G_PRINT
                   printp("right迷失超过5次扩展搜索范围\n");
#endif
                   if(right + SEARCHWITHDEXT/2 < COLUMN_END)
                       RrLimit = right + SEARCHWITHDEXT/2;
                   else
                       RrLimit = COLUMN_END; 
                       
                   if(COLUMN_START + SEARCHWITHDEXT < right)
                       RlLimit = right - SEARCHWITHDEXT;
                   else
                       RlLimit = COLUMN_START;
                      
                   //if(Line_Center_R[grow] > COLUMN_START && rLost % 2 == 0)    
                   //    Line_Center_R[grow]--;
              }
#if G_PRINT
              printp("right未找到，取前一个点\n");
#endif        
          }
#if G_PRINT
              printp("**************************************************(%3d--%3d)\n",Line_Center_L[grow],Line_Center_R[grow]);
#endif          
          Line_Center[grow] = (Line_Center_L[grow] + Line_Center_R[grow])/2;
          grow--;
          
      }//end of while(grow > 5)
      
      OptimizeCenterLine();
}  //end GetBlackLine()


/*
***************************************************
** 函数名称: void SendCenterLine(unsigned int * templine)
** 功能描述: 输出中心线 
** 入口：中心线数组 
** 出口：
** 说明: 以左中右三线输出
***************************************************
*/
void SendCenterLine3(int * templineL, int * templine, int * templineR)
{
    unsigned int i,j;
    unsigned int temp=0;

    uartPrintf("Center Line :\n");

  
    
    for(i = 0 ;i< ROW;i++)
    {
        uartPrintf("%3d",i); 
        uartPrintf("-%3d-%3d-%3d",templineL[i],templine[i],templineR[i]);  
        
        temp=templineL[i];
        for(j=0;j<temp;j++)
        {
            uartPrintf(" ") ;
        }
        
        if(templine[i] > templineL[i])
        {
            uartPrintf("。");
            j++;
        }
        
        temp=templine[i];
        for(;j<temp;j++)
        {
            uartPrintf(" ") ;
        }
        printp("*");
        
        if(templineR[i] > templine[i])
        {
            j++;
            temp=templineR[i];
            for(;j<temp;j++)
            {
                uartPrintf(" ") ;
            }
            uartPrintf("。\n");
        }
        else
            uartPrintf("\n");
    }
    
    uartPrintf("\n");
    
}

