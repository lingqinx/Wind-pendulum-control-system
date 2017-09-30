/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[isr.c] 
* ��  �� ���жϴ�������
* ԭ��   ��Ұ��Ƕ��ʽ����������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� �����е��жϺ���д������
***********************************************************************
*/



#include "common.h"
#include "include.h"
#include "isr.h"
#include "global.h"

u8 PITcounter = 0;
/************************************************************************* 
*  �������ƣ�PIT0_IRQHandler
*  ����˵����PIT0 ��ʱ�жϷ�����
*  ����˵������   
*  �������أ���
*  �޸�ʱ�䣺2012-2-18    �Ѳ���
*  ��    ע����������д����ʱ�����ú궨�壬����д���Ĵ������ֵ��ǿ
*************************************************************************/
void PIT0_IRQHandler(void)
{
    PIT_Flag_Clear(PIT0);                 //���жϱ�־λ
   
    trueSpeed = LPTMR0_CNR;   //�����������������ֵ
    lptmr_counter_clean(); 
    //�ٶȿ����㷨
    motorCtrl();
      
    GPIO_TURN(PORTB,0);       //���ڲ���PITƵ��
    PITcounter = (PITcounter + 1) % 13;
}



u32 tmpline = 0;//�к�
u32 tmprow = 0; //�к�
u32 tmpnum = 0; //����
u32 picLineSum = 0;//������


#ifdef CCD_DMA

#warning  "this is DMA"
void FTM2_IRQHandler()
{
    u8 s=FTM2_STATUS;               //��ȡ��׽�ͱȽ�״̬  All CHnF bits can be checked using only one read of STATUS.
    u8 CHn;
   
    DisableInterrupts; 
    FTM2_STATUS=0x00;               //���жϱ�־λ
    
    //���ж� PTA8
    CHn=0;//�жϱ�־λ����λ�����ж�ʹ�� 
    if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
    {
        tmpline++; 
        

        if(0 == (tmpline % 2))
        {
            ASSERT_RST(DMA_CITER_ELINKNO(CCD_DMA_CH) == COLUMN,"DMAĩ�������");
            DMA_SETDAADDR(CCD_DMA_CH,&Pic_Buffer[tmprow][0]);
            DMA_EN(CCD_DMA_CH);                         //��ʼDMA���� 
            
            tmprow++;
            if(tmprow >= ROW)
            {
                photeCompleteFlag = 1;
            }
        }
        
    }
    
    //���ж�      PTA9
    CHn=1;
    if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
    {
       //uartSendChar(UART0,'v');
       //uartPrintf("���жϿ�\n");
       tmpnum++;
       picLineSum = tmpline;
       tmpline = 0;
       tmprow = 0;
       DMA_IRQ_CLEAN(CCD_DMA_CH);
       En_HREF;     //�����ж�
    }
    EnableInterrupts; 
}

#else //#ifdef CCD_DMA

#warning  "this interrupt"


/*
������һ96M ϵͳʱ�� 48M����ʱ���µ��Գɹ�����������ͷ��Ҫ�Լ�����
*/
#define nops()  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop")
void FTM2_IRQHandler()
{
    u8 s=FTM2_STATUS;               //��ȡ��׽�ͱȽ�״̬  All CHnF bits can be checked using only one read of STATUS.
    u8 CHn;
    u8 tmpcol = 0;
    DisableInterrupts; 
    FTM2_STATUS=0x00;               //���жϱ�־λ
    
    //���ж� PTA8
    CHn=0;//�жϱ�־λ����λ�����ж�ʹ�� 
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
    
    //���ж�      PTA9
    CHn=1;
    if( (s & (1<<CHn)) && (FTM_CnSC_REG(FTMx[FTM2],CHn) & FTM_CnSC_CHIE_MASK ) )
    {
       //uartSendChar(UART0,'v');
       tmpnum++;
       picLineSum = tmpline;
       tmpline = 0;
       tmprow = 0;
       En_HREF;     //�����ж�
    }
    EnableInterrupts; 
}
#endif   //#ifdef CCD_DMA

/*************************************************************************
*  �������ƣ�USART1_IRQHandler
*  ����˵��������1 �ж� ���� ������
*  ����˵������   
*  �������أ���
*  �޸�ʱ�䣺2012-2-14    �Ѳ���
*  ��    ע��
*************************************************************************/
void UART0_IRQHandler(void)
{
    uint8 ch;
    
    DisableInterrupts;		    //�����ж�
    
    //����һ���ֽ����ݲ��ط�
    ch=uartRecvChar (UART0);                //���յ�һ������
    uart0Printf("cmd = 0x%X\n",ch);
    
    if(ch == 's')
    {
    if((showChoice & 0x01))
         showChoice &= 0xFE;
    else
         showChoice |= 0x01;
    }
    EnableInterrupts;		    //�����ж�
}