/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[fun.c] 
* ��  �� ���������ܺ���
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� ���������ܺ���
***********************************************************************
*/
#include  "fun.h"


/*************************************************************************
*  �������ƣ�delay
*  ����˵������ʱ����
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2012-2-1    �Ѳ���
*  ��    ע��
*************************************************************************/
void  delay(void)
{
    delayms(500);
}

/*************************************************************************
*  �������ƣ�delayms
*  ����˵������ʱ��������  ΢��
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2012-2-1    �Ѳ���
*  ��    ע��
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