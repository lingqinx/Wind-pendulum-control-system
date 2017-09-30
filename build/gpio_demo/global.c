/*
************************************************************************
*                北京邮电大学 K60 学习例程
* 文件名 :[global.c]
* 描  述 ：全局变量
*设计改进：wuwenqi
*  Email ：841369840@qq.com
* 说  明 ：这里定义我们用到的全局变量
***********************************************************************
*/
#include "global.h"
#include "uart.h"
#include "gpio.h"

char xzm = 0x42;
char code_xzm[12];
int edge_xzm=0;//标志一个数据包的开始
int w_xzm=0;   //标志角速度包
int a_xzm=0;   //标志角度包
double wx_xzm=0;
double wy_xzm=0;
double wy_last_xzm=0;
double wx_last_xzm=0;

double wz_xzm=0;
double ax_xzm=0;
double ay_xzm=0;
double az_xzm=0;
int count_xzm=0;

int distance_xzm=30;//60/50距离
int angle_xzm=45;//设置角度
int number_xzm=1;//题号
int cc=0;
int ccc=0;
int cccc=0;

  u32 duty1 = 100;u32 duty2 = 9500;
  u32 duty3 = 100;u32 duty4 = 100;
  
int is_over_1_xzm=0;
int is_over_2_xzm=0;
int is_over_3_xzm=0;
int is_over_4_xzm=0;
  
  
  

u8 show_parameter_flag = 0;

//int  COLUMN=100;//     160



//图像采集部分
u8 Pic_Buffer[ROW][COLUMN] = {0};        //采集图像原始数据
u8 show_photo_flagg = 0;

byte Pic_Erosion[ROW][COLUMN]={0}; 
u8 photo_complete_flag = 0;   //图像采集完成标志
u8 show_photo_data_flag =0;   //显示图片原始数据标识
u8 show_photo_flag = 0;       //显示连续图片标识
int right[ROW]={0},left[ROW]={0},left_flag[ROW]={0},right_flag[ROW]={0},mid_flag[ROW]={0},mid[ROW]={0},flag[ROW]={0};
int mid_last=50;
u8 tmprow = 0;

u8 yuzhi=115;
u8 roberts_th=30;
s32 speed_duty=4500;
u8 useless=0;
int ruihua_yuzhi=8000;

int all_line=0,left_line_only=0,right_line_only=0;//no_line=0

//图像处理部分

u8 time=27;
u8 time_flag=0; 
int center_cankao=62;
u8 stop_flag=0;
int danxian_flag=0;

//临时测试

u8 PID_flag=1;
u8 steer_choice=0;
int Sigma = 0;
u8 count=0;
u8 beep_flag=0;
u8 no_line=0;
u8 yichang_flag=0;
int speed_L[1000]={0};
int speed_R[1000]={0};
float steer_luo[1000]={0};
int steer_duty_ceshi[100]={0};
int beep_ceshi[100]={0};
int useless_ceshi[100]={0};
int all_line_ceshi[100]={0};
int left_line_only_ceshi[100]={0};
int right_line_only_ceshi[100]={0};
int steer_pre_error_ceshi[100]={0};
u8 juesai=0;


//舵机控制参数
u8 line_first=70;
u8 line_second=74;

u8 line_third=70;
u8 quanzhi_1=8;
u8 quanzhi_2=2;
u8 line_fourth=70;
int steer_dp=48;
int steer_dd=58;
float steer_dl=3.1;
int k_1=5;
int k_2=10;
int k_3=0;
int k_4=0;
float k_useless=0;
float k_pinjun=1.0;
u8 km=5;
u8 kn=3;
float steer_last_error=0;
float steer_pre_error=0;
u8 center=65; 
float  steer_duty=0;

u8 jiduandiuxian_flag=0;
u8 imq_wuxiao_flag=0;

float erci_kp=0.0019;
float erci_kp_changshu=3.8;


//速度控制参数
float angle_p=0.004;
float speed_kp=100;
float speed_ki=5;
float speed_kd=10;
int wanted_speed_L=220,wanted_speed_R=220;
int wanted_speed=220;
int true_speed_L=0,true_speed_R=0,true_speed=0;
int ek_1_L=0,ek_1_R=0;
int ek_2_L=0,ek_2_R=0;
int speed_pwm_L=0;
int speed_pwm_R=0;
int speed_L_min=180;
int speed_R_min=160;
int dev=140;
int chasubi=0;
float k_chashu=0.267;
float k_chashu_speed=0.35;
float mortal_out=1.00;
float mortal_in=1.00;
int whole_speed=0;
int whole_speed_ek=0;  
int whole_speed_ek1=0;
int whole_speed_ek2=0;
int whole_speed_pwm=0;
int true_speed_dev=0;
int speed_dev_ek=0;
int speed_dev_ek1=0;
int speed_dev_ek2=0;
int speed_pwm_L_end=0;
int speed_pwm_R_end=0;
int speed_dev_pwm=0;
float speed_kp1=80;
float speed_ki1=10;
float speed_kd1=45;
float speed_kp2=100;
float speed_ki2=5;
float speed_kd2=10;
int steer_pre=0;
int steer_last=0;

int ab=0;
int portion=50; 

float k_speed_control=0.065;
//float k_speed_control=0;

int zhidao_speed=500;

int show_data_flag = 0;
int shuzu[1000]={0};
int shuzuL[1000]={0};
int shuzuR[1000]={0};
int shuzuz[1000]={0};

u8 podao_moshi_flag=0;
//液晶键盘

u8 key_flag=0;
//kongzhi
float k_integral=1;
float k_integral_L=1;
float k_integral_R=1;
int integral_a=30;
float  integral_b=0.60;
int carry=-1;
int vector_dev[106]={0};
int deviation=0;
int speed_pwm=0;
u8 danxian_xuanxian_moshi_flag=0;
int speed_bong=30;
int bili=30;
int ek_L=0;
int ek_R=0;
int steer_p=88;
int sep=88;
int b1=30;
float a1=20;
int speed_max=300;
int speed_min=210;
float change_speed=8.0;
float change_speed_error=8.0;
int portion_error=30;
u8 speed_count=0;
int useless_last=0;
float useless_p=38;
float useless_d=30;

/****************灯塔***************/



u8 dengta_count=0;
u8 dengta_begin_flag=1;
u8 dengta_stop_flag=0;
u8 dengta_flag=0;
int dengta_stop_count=0;
int dengta_stop_distance=600;
int podao_moshi_distance=11000;
int podao_distance_count=0;
int pk=0;
int dengta_begin_time=18;



void LED_INIT_xzm(void)  // 8 个 PORTC 管脚初始化
{
    gpio_init(PORTC,15,GPO,HIGH); //g
    gpio_init(PORTC,14,GPO,HIGH); //f
    gpio_init(PORTC,13,GPO,HIGH); //a
    gpio_init(PORTC,12,GPO,HIGH); //b
    gpio_init(PORTC,11,GPO,HIGH); //dp
    gpio_init(PORTC,10,GPO,HIGH); //c
    gpio_init(PORTC, 9,GPO,HIGH); //d
    gpio_init(PORTC, 8,GPO,HIGH); //e
}

void xianshi(int n)    //根据对应的输入数字 n（0~9），数码管进行相应的显示
{    
  switch(n)
  {
  case 0:
    gpio_set(PORTC,15,HIGH);//g
    gpio_set(PORTC,14,LOW);//f
    gpio_set(PORTC,13,LOW);//a
    gpio_set(PORTC,12,LOW);//b
    gpio_set(PORTC,11,LOW);//dp
    gpio_set(PORTC,10,LOW);//c
    gpio_set(PORTC, 9,LOW);//d
    gpio_set(PORTC, 8,LOW);//e
    break;
  case 1:
    gpio_set(PORTC,15,HIGH);//g
    gpio_set(PORTC,14,HIGH);//f
    gpio_set(PORTC,13,HIGH);//a
    gpio_set(PORTC,12,LOW);//b
    gpio_set(PORTC,11,LOW);//dp
    gpio_set(PORTC,10,LOW);//c
    gpio_set(PORTC, 9,HIGH);//d
    gpio_set(PORTC, 8,HIGH);//e
    break;
  case 2:
    gpio_set(PORTC,15,LOW);//g
    gpio_set(PORTC,14,HIGH);//f
    gpio_set(PORTC,13,LOW);//a
    gpio_set(PORTC,12,LOW);//b
    gpio_set(PORTC,11,LOW);//dp
    gpio_set(PORTC,10,HIGH);//c
    gpio_set(PORTC, 9,LOW);//d
    gpio_set(PORTC, 8,LOW);//e
    break;
  case 3:
    gpio_set(PORTC,15,LOW);//g
    gpio_set(PORTC,14,HIGH);//f
    gpio_set(PORTC,13,LOW);//a
    gpio_set(PORTC,12,LOW);//b
    gpio_set(PORTC,11,LOW);//dp
    gpio_set(PORTC,10,LOW);//c
    gpio_set(PORTC, 9,LOW);//d
    gpio_set(PORTC, 8,HIGH);//e
    break;
  case 4:
    gpio_set(PORTC,15,LOW);//g
    gpio_set(PORTC,14,LOW);//f
    gpio_set(PORTC,13,HIGH);//a
    gpio_set(PORTC,12,LOW);//b
    gpio_set(PORTC,11,LOW);//dp
    gpio_set(PORTC,10,LOW);//c
    gpio_set(PORTC, 9,HIGH);//d
    gpio_set(PORTC, 8,HIGH);//e
    break;
  case 5:
    gpio_set(PORTC,15,LOW);//g
    gpio_set(PORTC,14,LOW);//f
    gpio_set(PORTC,13,LOW);//a
    gpio_set(PORTC,12,HIGH);//b
    gpio_set(PORTC,11,LOW);//dp
    gpio_set(PORTC,10,LOW);//c
    gpio_set(PORTC, 9,LOW);//d
    gpio_set(PORTC, 8,HIGH);//e
    break;
  case 6:
    gpio_set(PORTC,15,LOW);//g
    gpio_set(PORTC,14,LOW);//f
    gpio_set(PORTC,13,LOW);//a
    gpio_set(PORTC,12,HIGH);//b
    gpio_set(PORTC,11,LOW);//dp
    gpio_set(PORTC,10,LOW);//c
    gpio_set(PORTC, 9,LOW);//d
    gpio_set(PORTC, 8,LOW);//e
    break;
  case 7:
    gpio_set(PORTC,15,HIGH);//g
    gpio_set(PORTC,14,HIGH);//f
    gpio_set(PORTC,13,LOW);//a
    gpio_set(PORTC,12,LOW);//b
    gpio_set(PORTC,11,LOW);//dp
    gpio_set(PORTC,10,LOW);//c
    gpio_set(PORTC, 9,HIGH);//d
    gpio_set(PORTC, 8,HIGH);//e
    break;
  case 8:
    gpio_set(PORTC,15,LOW);//g
    gpio_set(PORTC,14,LOW);//f
    gpio_set(PORTC,13,LOW);//a
    gpio_set(PORTC,12,LOW);//b
    gpio_set(PORTC,11,LOW);//dp
    gpio_set(PORTC,10,LOW);//c
    gpio_set(PORTC, 9,LOW);//d
    gpio_set(PORTC, 8,LOW);//e
    break;
  case 9:
    gpio_set(PORTC,15,LOW);//g
    gpio_set(PORTC,14,LOW);//f
    gpio_set(PORTC,13,LOW);//a
    gpio_set(PORTC,12,LOW);//b
    gpio_set(PORTC,11,LOW);//dp
    gpio_set(PORTC,10,LOW);//c
    gpio_set(PORTC, 9,LOW);//d
    gpio_set(PORTC, 8,HIGH);//e
    break;
  default:
    gpio_set(PORTC,15,LOW);//g
    gpio_set(PORTC,14,HIGH);//f
    gpio_set(PORTC,13,HIGH);//a
    gpio_set(PORTC,12,HIGH);//b
    gpio_set(PORTC,11,LOW);//dp
    gpio_set(PORTC,10,HIGH);//c
    gpio_set(PORTC, 9,HIGH);//d
    gpio_set(PORTC, 8,HIGH);//e
    break;
  }
}