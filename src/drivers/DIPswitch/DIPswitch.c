
/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[DIPswitch.c] 
* ��  �� �����뿪��
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� �����뿪�� ��������
***********************************************************************
*/

#include  "DIPswitch.h"


/*************************************************************************
*  �������ƣ�DIPswitch_init
*  ����˵������ʼ�����뿪�ض˿ڣ�����IO��Ϊ���뷽��
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2012-2-2   �Ѳ���
*  ��    ע��
*************************************************************************/
void    DIPswitch_init(void)
{
    gpio_init(DIPswitch_PORT,DIP0,GPI,0);
    gpio_init(DIPswitch_PORT,DIP1,GPI,0);
    gpio_init(DIPswitch_PORT,DIP2,GPI,0);
    gpio_init(DIPswitch_PORT,DIP3,GPI,0);
}


/*************************************************************************
*  �������ƣ�DIPswitch_val
*  ����˵�����õ����뿪�ص�ֵ
*  ����˵������
*  �������أ����뿪�ص�ֵ
*  �޸�ʱ�䣺2012-2-2   �Ѳ���
*  ��    ע��
*************************************************************************/
u8 DIPswitch_val()
{
    u8 val = 0;
    val |= GPIO_Get(DIPswitch_PORT,DIP3) << 3;
    val |= GPIO_Get(DIPswitch_PORT,DIP2) << 2;
    val |= GPIO_Get(DIPswitch_PORT,DIP1) << 1;
    val |= GPIO_Get(DIPswitch_PORT,DIP0) << 0;                     
#if DIPVAL == 0                     
    return val;
#else
    return ((~val)&0x0F);  //ȡ��
#endif
}
/*************************************************************************
*  �������ƣ�DIPswitch_valbit
*  ����˵�����õ����뿪�ص�ֵĳһ��λ��ֵ
*  ����˵������
*  �������أ����뿪�ص�ֵ
*  �޸�ʱ�䣺2012-2-2   �Ѳ���
*  ��    ע��
*           �ò��뿪�ؿ������ò�ͬ����������������������ö����λ���ٶ�
*************************************************************************/
u8 DIPswitch_valbit(DIPn dipn)
{
#if DIPVAL == 0    
  return GPIO_Get(DIPswitch_PORT,dipn);
#else
  return (GPIO_Get(DIPswitch_PORT,dipn)^1);
#endif
}
                    
                    
/*************************************************************************
*  �������ƣ�DIPswitch_Ctrl
*  ����˵�������뿪�ؿ��Ƴ���
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2012-2-2   �Ѳ���
*  ��    ע��������뿪�غ���ϣ����ֵ�Ƿ��࣬���԰Ѻ궨�� DIPVAL ȡ��
*************************************************************************/
u8 DIPswitch_ctrl(void)
{
   DIPswitch_init();
   //�����������Ҫ����ѡ�����õı���
   switch(DIPswitch_val())
   {
   case 0x00:
     uart0Printf("yout choice is : 0\n");
     break;
   case 0x01:
     uart0Printf("yout choice is : 1\n");
     break;
   case 0x02:
     uart0Printf("yout choice is : 2\n");
     break;
   case 0x03:
     uart0Printf("yout choice is : 3\n");
     break;
     
   case 0x04:
     uart0Printf("yout choice is : 4\n");
     break;
   case 0x05:
     uart0Printf("yout choice is : 5\n");
     break;
   case 0x06:
     uart0Printf("yout choice is : 6\n");
     break;
   case 0x07:
     uart0Printf("yout choice is : 7\n");
     break;
     
   case 0x08:
     uart0Printf("yout choice is : 8\n");
     break;
   case 0x09:
     uart0Printf("yout choice is : 9\n");
     break;
   case 0x0A:
     uart0Printf("yout choice is : A\n");
     break;
   case 0x0B:
     uart0Printf("yout choice is : B\n");
     break;
     
   case 0x0C:
     uart0Printf("yout choice is : C\n");
     break;
   case 0x0D:
     uart0Printf("yout choice is : D\n");
     break;
   case 0x0E:
     uart0Printf("yout choice is : E\n");
     break;
   case 0x0F:
     uart0Printf("yout choice is : F\n");
     break;
   default:
     uart0Printf("yout choice is : Other\n");
     break;
   }
   
   uartPrintf("������뿪�غ���ϣ����ֵ�Ƿ��࣬���԰Ѻ궨�� DIPVAL ȡ��\n");
   return DIPswitch_val();
}