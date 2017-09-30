/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[global.h] 
* ��  �� ��ȫ�ֱ���
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� ��ȫ�ֱ���
***********************************************************************
*/

#ifndef __GLOBAL_H__
#define __GLOBAL_H__
#include "common.h"


#define CCD_DMA    //����һ���궨��ע�ͺ�����жϷ��ɼ�



//���п��Ը�����Ҫ�Լ�����
#define ROW        120
#define COLUMN     160
#define CENTER     80
#define COLUMN_START 1
#define COLUMN_END 155

//�ڰ׵�������ֵ 
#define THRESHOLD 45 
//��Ч������ȣ���Ч����       
#define SEARCHWITHDEN 12 
//��Ч�������򣨺����� 
#define SEARCHWITHDDIS 6
//��չ������ 
#define SEARCHWITHDEXT 30

//ʵ���ٶ�
extern u32 trueSpeed;
//���ѡ��
extern u8 showChoice;
//ͼ������
extern unsigned char Pic_Buffer[ROW][COLUMN];
//�ɼ���ɱ�־λ
extern volatile unsigned int photeCompleteFlag;
//ѡȡ���к�
extern u8 selectLine[ROW];
//��ֵ����ֵ
extern unsigned int PhotoBlackMax;

extern signed int  Line_Center[ROW];  
extern signed int  Line_Center_L[ROW];  
extern signed int  Line_Center_R[ROW]; 
#endif