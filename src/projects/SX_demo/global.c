/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[global.c] 
* ��  �� ��ȫ�ֱ���
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� �����ﶨ�������õ���ȫ�ֱ���
***********************************************************************
*/
#include "global.h"

//ʵ���ٶ�
u32 trueSpeed = {0};
//���ѡ��
u8 showChoice = 0;
//ͼ������
unsigned char Pic_Buffer[ROW][COLUMN] = {0};
//�ɼ���ɱ�־λ
volatile unsigned int photeCompleteFlag = 0;
//ѡȡ���к�
u8 selectLine[ROW];
//��ֵ����ֵ
unsigned int PhotoBlackMax = 125;
//������

signed int  Line_Center[ROW]={0};  
signed int  Line_Center_L[ROW]={0};  
signed int  Line_Center_R[ROW]={0};  