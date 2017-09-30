/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[global.h] 
* 描  述 ：全局变量
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：全局变量
***********************************************************************
*/

#ifndef __GLOBAL_H__
#define __GLOBAL_H__
#include "common.h"

extern u8 show_parameter_flag;






#define pi 3.1415926 ;

//图像采集部分
#define ROW        120
#define COLUMN     115
//#define ruihua_yuzhi 26000
//#define center 79                                   //定义图像中心
#define dis_left   13                             //左边界不采集的点数
#define dis_right 111                            //右边界不采集的点数
#define dis_up  1                                  //上边界不采集的点数
#define dis_down  1                                 //下边界不采集的点数                              
#define th 60                                        //黑白跳变阈值
#define add 10
#define buxian_k 0.65                                  //补线拟合函数一次系数
#define buxian_b -10                                    //补线拟合函数常数项


#define key_1 7
#define key_2 6
#define key_3 13
#define key_4 10
#define dengta 8
#define CAM_PORTX   PORTB
#define CAM_HR_CHn  1
#define CAM_VS_CHn  3

#define CAM_DATA_PORT      PORTD
#define CAM_DMA_CH      DMA_CH0      
#define PLCK_CH         PTB9

#define En_HREF     exti_irq_EN(CAM_PORTX,CAM_HR_CHn,rising_down)   //开启行中断
#define Dis_HREF    exti_irq_DIS(CAM_PORTX,CAM_HR_CHn)            //关闭行中断

#define En_VSYNC    exti_irq_EN(CAM_PORTX,CAM_VS_CHn,falling_down) //开启场中断
#define Dis_VSYNC   exti_irq_DIS(CAM_PORTX,CAM_VS_CHn)              //关闭场中断

#define En_CAM      En_HREF;En_VSYNC                      //同时打开行场中断
#define Dis_CAM     Dis_VSYNC;Dis_HREF                    //同时关闭行场中断
#define Clr_CAMF    PORTB_ISFR |= PORT_ISFR_ISF_MASK;

//extern int  COLUMN;//     160
//extern int dis_right;





extern void xianshi(int n);
extern void LED_INIT_xzm(void);

extern char xzm;  
extern int edge_xzm;
extern int w_xzm;
extern double wx_xzm;
extern double wy_xzm;
extern double wy_last_xzm;
extern double wx_last_xzm;
extern double wz_xzm;
extern int a_xzm;
extern double ax_xzm;
extern double ay_xzm;
extern double az_xzm;
extern int count_xzm;
extern char code_xzm[12];
extern  u32 duty1;
extern u32 duty2 ;
extern u32 duty3 ;
extern u32 duty4 ;
extern int cc;
extern int ccc;
extern int cccc;

extern int distance_xzm;
extern int angle_xzm;//设置角度
extern int number_xzm;
extern int is_over_1_xzm;
extern int is_over_2_xzm;
extern int is_over_3_xzm;
extern int is_over_4_xzm;


extern u8 Pic_Buffer[ROW][COLUMN];        //采集图像原始数据
extern byte Pic_Erosion[ROW][COLUMN];        //采集图像原始数据
extern u8 photo_complete_flag;            //图像采集完成标志
extern u8 show_photo_data_flag;           //显示图片原始数据标识
extern u8 show_photo_flag;                //显示连续图片标识
extern u8 show_photo_flagg;
extern int right[ROW],left[ROW],left_flag[ROW],right_flag[ROW],mid_flag[ROW],mid[ROW],flag[ROW];//用于存储左右边线值，中线值，采线情况标志
extern int mid_last;
extern u8 tmprow;
extern s32 speed_duty;
extern u8 yuzhi;
extern u8 roberts_th;             //roberts锐化算子阈值
extern u8 time;   
extern u8 time_flag; 
extern u8 useless;
extern int ruihua_yuzhi;
extern int all_line;
extern int left_line_only;
extern int right_line_only;
extern int center_cankao;
extern int danxian_flag;

//临时测试
extern int Sigma;
extern u8 count;
extern u8 beep_flag;
extern u8 yichang_flag;
extern u8 no_line;
extern u8 steer_choice;
extern u8 PID_flag;
extern u8 stop_flag;
extern u8 juesai;
extern int speed_L[1000];
extern int speed_R[1000];
extern float steer_luo[1000];
extern int steer_duty_ceshi[100];
extern int beep_ceshi[100];
extern int useless_ceshi[100];
extern int all_line_ceshi[100];
extern int left_line_only_ceshi[100];
extern int right_line_only_ceshi[100];
extern int steer_pre_error_ceshi[100];

//舵机控制参数
extern u8 line_first;
extern u8 line_second;
extern u8 line_third;
extern u8 quanzhi_1;
extern u8 quanzhi_2;
extern u8 line_fourth;
extern int steer_dp;
extern int steer_dd;
extern float steer_dl;
extern int k_1;
extern int k_2;
extern int k_3;
extern int k_4;
extern float k_useless;
extern float k_pinjun;

extern float steer_last_error;
extern float steer_pre_error;
extern float steer_duty;
extern u8 center;
extern u8 km,kn;
extern u8 jiduandiuxian_flag;

extern float erci_kp;
extern float erci_kp_changshu;



//速度控制参数
extern float mortal_out;
extern float mortal_in;
extern int chasubi;
extern int dev;
extern float speed_kp;
extern float speed_ki;
extern float speed_kd;
extern float speed_kp1;
extern float speed_ki1;
extern float speed_kd1;
extern float speed_kp2;
extern float speed_ki2;
extern float speed_kd2;
extern int wanted_speed_L,wanted_speed_R;
extern int wanted_speed;
extern int true_speed_L,true_speed_R,true_speed;
extern int ek_1_L,ek_1_R;
extern int ek_2_L,ek_2_R;
extern int speed_pwm_L;
extern int speed_pwm_R;
extern u8 imq_wuxiao_flag;
extern int whole_speed_pwm;
extern int whole_speed;
extern int whole_speed_ek;
extern int whole_speed_ek1;
extern int whole_speed_ek2;
extern int true_speed_dev;
extern int speed_dev_ek;
extern int speed_dev_ek1;
extern int speed_dev_ek2;
extern int speed_pwm_L_end;
extern int speed_pwm_R_end;
extern int speed_dev_pwm;
extern int portion;
extern float k_chashu;
extern float k_chashu_speed;
extern float k_speed_control;
extern int zhidao_speed;
extern int speed_L_min;
extern int speed_R_min;
extern int show_data_flag;
extern int shuzu[1000];
extern int shuzuL[1000];
extern int shuzuR[1000];
extern int shuzuz[1000];
extern int steer_pre;
extern int steer_last;
extern float angle_p;

extern u8 podao_moshi_flag;

//液晶键盘
extern int ab;

extern u8 key_flag;
//kongzhi
extern float k_integral;
extern float k_integral_L;
extern float k_integral_R;
extern int integral_a;
extern float integral_b;
extern int carry;
extern u8  danxian_xuanxian_moshi_flag;
extern int vector_dev[106];
extern int deviation;
extern int speed_pwm;
extern int speed_bong;
extern int bili;
extern int ek_L;
extern int ek_R;
extern int steer_p;
extern int sep;
extern int b1;
extern float a1;
extern int speed_max;
extern int speed_min;
extern float change_speed;
extern float change_speed_error;
extern int portion_error;
extern u8 speed_count;
extern int useless_last;
extern float useless_p;
extern float useless_d;

/************************/
//灯塔
extern u8 dengta_count;
extern u8 dengta_begin_flag;
extern u8 dengta_stop_flag;
extern u8 dengta_flag;
extern int dengta_stop_count;
extern int dengta_stop_distance;
extern int podao_moshi_distance;
extern int podao_distance_count;
extern int pk;
extern int dengta_begin_time;
#endif