/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[fun.c] 
* 描  述 ：基本功能函数
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：基本功能函数
***********************************************************************
*/
#include  "fun.h"


/*************************************************************************
*  函数名称：delay
*  功能说明：延时函数
*  参数说明：无
*  函数返回：无
*  修改时间：2012-2-1    已测试
*  备    注：
*************************************************************************/
void  delay(void)
{
    delayms(500);
}

/*************************************************************************
*  函数名称：delayms
*  功能说明：延时函数毫秒  微秒
*  参数说明：无
*  函数返回：无
*  修改时间：2012-2-1    已测试
*  备    注：
*************************************************************************/
void  delayms(uint32  ms)
{

    uint32  i,j;
    for(i=0;i<ms;i++)
    {
        for(j=core_clk_khz/4;j>0;j--)
        {
        }
    }
}

void  delayus(uint32  us)
{
    uint32  i,j;
    for(i=0;i<us;i++)
    {
        for(j=core_clk_mhz/4;j>0;j--)
        {
        }
    }
}

signed int get_mid(signed int a,signed int b,signed int c)
{   
    unsigned int x=0;
    if(a>b){x=b;b=a;a=x;}
    if(b>c){x=c;c=b;b=x;}
    if(a>b){x=b;b=a;a=x;}
    return b ;
}
unsigned char get_mid8(unsigned char a,unsigned char b,unsigned char c)
{   
    unsigned char x=0;
    if(a>b){x=b;b=a;a=x;}
    if(b>c){x=c;c=b;b=x;}
    if(a>b){x=b;b=a;a=x;}
    return b ;
}