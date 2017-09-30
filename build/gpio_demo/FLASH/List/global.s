///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  19:53:03 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\global.c                                            /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\global.c -lCN C:\Users\Administrator\Desktop\MPU605 /
//                    08.12\build\gpio_demo\FLASH\List\ -lB                   /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\FLASH\List\ -o C:\Users\Administrator\Desktop\MPU60 /
//                    508.12\build\gpio_demo\FLASH\Obj\ --no_cse --no_unroll  /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\IAR     /
//                    Systems\Embedded Workbench                              /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\ -I C:\Users\Administrator\Desktop\MPU60508.12\b /
//                    uild\gpio_demo\..\..\src\common\ -I                     /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\cpu\ -I C:\Users\Administrator\Desktop\MP /
//                    U60508.12\build\gpio_demo\..\..\src\drivers\ -I         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\gpio\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\flash\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\olcd\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\diskio\ -I                        /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\iospi\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\wdog\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\mcg\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\flash\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\uart\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\lptmr\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\LED\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\fun\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\FTM\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\pit\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\DIPswitch\ -I                     /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\steer\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\motor\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\laser\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\i2c\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\ADdevice\ -I                      /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\adc\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\serial_digtal_scope\ -I           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\MMA845x\ -I                       /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\exti\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\dma\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\platforms\ -I                             /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\projects\ -I                              /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\projects\gpio_demo\ -I                    /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\MPU6050\ -I                       /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\steer\ -Ol                        /
//    List file    =  C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\FLASH\List\global.s                                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN gpio_init
        EXTERN gpio_set

        PUBLIC LED_INIT_xzm
        PUBLIC PID_flag
        PUBLIC Pic_Buffer
        PUBLIC Pic_Erosion
        PUBLIC Sigma
        PUBLIC a1
        PUBLIC a_xzm
        PUBLIC ab
        PUBLIC all_line
        PUBLIC all_line_ceshi
        PUBLIC angle_p
        PUBLIC angle_xzm
        PUBLIC ax_xzm
        PUBLIC ay_xzm
        PUBLIC az_xzm
        PUBLIC b1
        PUBLIC beep_ceshi
        PUBLIC beep_flag
        PUBLIC bili
        PUBLIC carry
        PUBLIC cc
        PUBLIC ccc
        PUBLIC cccc
        PUBLIC center
        PUBLIC center_cankao
        PUBLIC change_speed
        PUBLIC change_speed_error
        PUBLIC chasubi
        PUBLIC code_xzm
        PUBLIC count
        PUBLIC count_xzm
        PUBLIC danxian_flag
        PUBLIC danxian_xuanxian_moshi_flag
        PUBLIC dengta_begin_flag
        PUBLIC dengta_begin_time
        PUBLIC dengta_count
        PUBLIC dengta_flag
        PUBLIC dengta_stop_count
        PUBLIC dengta_stop_distance
        PUBLIC dengta_stop_flag
        PUBLIC dev
        PUBLIC deviation
        PUBLIC distance_xzm
        PUBLIC duty1
        PUBLIC duty2
        PUBLIC duty3
        PUBLIC duty4
        PUBLIC edge_xzm
        PUBLIC ek_1_L
        PUBLIC ek_1_R
        PUBLIC ek_2_L
        PUBLIC ek_2_R
        PUBLIC ek_L
        PUBLIC ek_R
        PUBLIC erci_kp
        PUBLIC erci_kp_changshu
        PUBLIC flag
        PUBLIC imq_wuxiao_flag
        PUBLIC integral_a
        PUBLIC integral_b
        PUBLIC is_over_1_xzm
        PUBLIC is_over_2_xzm
        PUBLIC is_over_3_xzm
        PUBLIC is_over_4_xzm
        PUBLIC jiduandiuxian_flag
        PUBLIC juesai
        PUBLIC k_1
        PUBLIC k_2
        PUBLIC k_3
        PUBLIC k_4
        PUBLIC k_chashu
        PUBLIC k_chashu_speed
        PUBLIC k_integral
        PUBLIC k_integral_L
        PUBLIC k_integral_R
        PUBLIC k_pinjun
        PUBLIC k_speed_control
        PUBLIC k_useless
        PUBLIC key_flag
        PUBLIC km
        PUBLIC kn
        PUBLIC left
        PUBLIC left_flag
        PUBLIC left_line_only
        PUBLIC left_line_only_ceshi
        PUBLIC line_first
        PUBLIC line_fourth
        PUBLIC line_second
        PUBLIC line_third
        PUBLIC mid
        PUBLIC mid_flag
        PUBLIC mid_last
        PUBLIC mortal_in
        PUBLIC mortal_out
        PUBLIC no_line
        PUBLIC number_xzm
        PUBLIC photo_complete_flag
        PUBLIC pk
        PUBLIC podao_distance_count
        PUBLIC podao_moshi_distance
        PUBLIC podao_moshi_flag
        PUBLIC portion
        PUBLIC portion_error
        PUBLIC quanzhi_1
        PUBLIC quanzhi_2
        PUBLIC right
        PUBLIC right_flag
        PUBLIC right_line_only
        PUBLIC right_line_only_ceshi
        PUBLIC roberts_th
        PUBLIC ruihua_yuzhi
        PUBLIC sep
        PUBLIC show_data_flag
        PUBLIC show_parameter_flag
        PUBLIC show_photo_data_flag
        PUBLIC show_photo_flag
        PUBLIC show_photo_flagg
        PUBLIC shuzu
        PUBLIC shuzuL
        PUBLIC shuzuR
        PUBLIC shuzuz
        PUBLIC speed_L
        PUBLIC speed_L_min
        PUBLIC speed_R
        PUBLIC speed_R_min
        PUBLIC speed_bong
        PUBLIC speed_count
        PUBLIC speed_dev_ek
        PUBLIC speed_dev_ek1
        PUBLIC speed_dev_ek2
        PUBLIC speed_dev_pwm
        PUBLIC speed_duty
        PUBLIC speed_kd
        PUBLIC speed_kd1
        PUBLIC speed_kd2
        PUBLIC speed_ki
        PUBLIC speed_ki1
        PUBLIC speed_ki2
        PUBLIC speed_kp
        PUBLIC speed_kp1
        PUBLIC speed_kp2
        PUBLIC speed_max
        PUBLIC speed_min
        PUBLIC speed_pwm
        PUBLIC speed_pwm_L
        PUBLIC speed_pwm_L_end
        PUBLIC speed_pwm_R
        PUBLIC speed_pwm_R_end
        PUBLIC steer_choice
        PUBLIC steer_dd
        PUBLIC steer_dl
        PUBLIC steer_dp
        PUBLIC steer_duty
        PUBLIC steer_duty_ceshi
        PUBLIC steer_last
        PUBLIC steer_last_error
        PUBLIC steer_luo
        PUBLIC steer_p
        PUBLIC steer_pre
        PUBLIC steer_pre_error
        PUBLIC steer_pre_error_ceshi
        PUBLIC stop_flag
        PUBLIC time
        PUBLIC time_flag
        PUBLIC tmprow
        PUBLIC true_speed
        PUBLIC true_speed_L
        PUBLIC true_speed_R
        PUBLIC true_speed_dev
        PUBLIC useless
        PUBLIC useless_ceshi
        PUBLIC useless_d
        PUBLIC useless_last
        PUBLIC useless_p
        PUBLIC vector_dev
        PUBLIC w_xzm
        PUBLIC wanted_speed
        PUBLIC wanted_speed_L
        PUBLIC wanted_speed_R
        PUBLIC whole_speed
        PUBLIC whole_speed_ek
        PUBLIC whole_speed_ek1
        PUBLIC whole_speed_ek2
        PUBLIC whole_speed_pwm
        PUBLIC wx_last_xzm
        PUBLIC wx_xzm
        PUBLIC wy_last_xzm
        PUBLIC wy_xzm
        PUBLIC wz_xzm
        PUBLIC xianshi
        PUBLIC xzm
        PUBLIC yichang_flag
        PUBLIC yuzhi
        PUBLIC zhidao_speed

// C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_demo\global.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程
//    4 * 文件名 :[global.c]
//    5 * 描  述 ：全局变量
//    6 *设计改进：wuwenqi
//    7 *  Email ：841369840@qq.com
//    8 * 说  明 ：这里定义我们用到的全局变量
//    9 ***********************************************************************
//   10 */
//   11 #include "global.h"
//   12 #include "uart.h"
//   13 #include "gpio.h"
//   14 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   15 char xzm = 0x42;
xzm:
        DATA
        DC8 66

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 char code_xzm[12];
code_xzm:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 int edge_xzm=0;//标志一个数据包的开始
edge_xzm:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 int w_xzm=0;   //标志角速度包
w_xzm:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 int a_xzm=0;   //标志角度包
a_xzm:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
//   20 double wx_xzm=0;
wx_xzm:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
//   21 double wy_xzm=0;
wy_xzm:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
//   22 double wy_last_xzm=0;
wy_last_xzm:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
//   23 double wx_last_xzm=0;
wx_last_xzm:
        DS8 8
//   24 

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
//   25 double wz_xzm=0;
wz_xzm:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
//   26 double ax_xzm=0;
ax_xzm:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
//   27 double ay_xzm=0;
ay_xzm:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
//   28 double az_xzm=0;
az_xzm:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   29 int count_xzm=0;
count_xzm:
        DS8 4
//   30 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   31 int distance_xzm=30;//60/50距离
distance_xzm:
        DATA
        DC32 30

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   32 int angle_xzm=45;//设置角度
angle_xzm:
        DATA
        DC32 45

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   33 int number_xzm=1;//题号
number_xzm:
        DATA
        DC32 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   34 int cc=0;
cc:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   35 int ccc=0;
ccc:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   36 int cccc=0;
cccc:
        DS8 4
//   37 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   38   u32 duty1 = 100;u32 duty2 = 9500;
duty1:
        DATA
        DC32 100

        SECTION `.data`:DATA:REORDER:NOROOT(2)
duty2:
        DATA
        DC32 9500

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   39   u32 duty3 = 100;u32 duty4 = 100;
duty3:
        DATA
        DC32 100

        SECTION `.data`:DATA:REORDER:NOROOT(2)
duty4:
        DATA
        DC32 100
//   40   

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   41 int is_over_1_xzm=0;
is_over_1_xzm:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   42 int is_over_2_xzm=0;
is_over_2_xzm:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   43 int is_over_3_xzm=0;
is_over_3_xzm:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   44 int is_over_4_xzm=0;
is_over_4_xzm:
        DS8 4
//   45   
//   46   
//   47   
//   48 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   49 u8 show_parameter_flag = 0;
show_parameter_flag:
        DS8 1
//   50 
//   51 //int  COLUMN=100;//     160
//   52 
//   53 
//   54 
//   55 //图像采集部分

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   56 u8 Pic_Buffer[ROW][COLUMN] = {0};        //采集图像原始数据
Pic_Buffer:
        DS8 13800

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   57 u8 show_photo_flagg = 0;
show_photo_flagg:
        DS8 1
//   58 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   59 byte Pic_Erosion[ROW][COLUMN]={0}; 
Pic_Erosion:
        DS8 13800

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   60 u8 photo_complete_flag = 0;   //图像采集完成标志
photo_complete_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   61 u8 show_photo_data_flag =0;   //显示图片原始数据标识
show_photo_data_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   62 u8 show_photo_flag = 0;       //显示连续图片标识
show_photo_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   63 int right[ROW]={0},left[ROW]={0},left_flag[ROW]={0},right_flag[ROW]={0},mid_flag[ROW]={0},mid[ROW]={0},flag[ROW]={0};
right:
        DS8 480

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
left:
        DS8 480

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
left_flag:
        DS8 480

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
right_flag:
        DS8 480

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
mid_flag:
        DS8 480

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
mid:
        DS8 480

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
flag:
        DS8 480

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   64 int mid_last=50;
mid_last:
        DATA
        DC32 50

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   65 u8 tmprow = 0;
tmprow:
        DS8 1
//   66 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   67 u8 yuzhi=115;
yuzhi:
        DATA
        DC8 115

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   68 u8 roberts_th=30;
roberts_th:
        DATA
        DC8 30

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   69 s32 speed_duty=4500;
speed_duty:
        DATA
        DC32 4500

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   70 u8 useless=0;
useless:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   71 int ruihua_yuzhi=8000;
ruihua_yuzhi:
        DATA
        DC32 8000
//   72 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   73 int all_line=0,left_line_only=0,right_line_only=0;//no_line=0
all_line:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
left_line_only:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
right_line_only:
        DS8 4
//   74 
//   75 //图像处理部分
//   76 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   77 u8 time=27;
time:
        DATA
        DC8 27

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   78 u8 time_flag=0; 
time_flag:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   79 int center_cankao=62;
center_cankao:
        DATA
        DC32 62

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   80 u8 stop_flag=0;
stop_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   81 int danxian_flag=0;
danxian_flag:
        DS8 4
//   82 
//   83 //临时测试
//   84 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   85 u8 PID_flag=1;
PID_flag:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   86 u8 steer_choice=0;
steer_choice:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   87 int Sigma = 0;
Sigma:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   88 u8 count=0;
count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   89 u8 beep_flag=0;
beep_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   90 u8 no_line=0;
no_line:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   91 u8 yichang_flag=0;
yichang_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   92 int speed_L[1000]={0};
speed_L:
        DS8 4000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   93 int speed_R[1000]={0};
speed_R:
        DS8 4000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   94 float steer_luo[1000]={0};
steer_luo:
        DS8 4000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   95 int steer_duty_ceshi[100]={0};
steer_duty_ceshi:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   96 int beep_ceshi[100]={0};
beep_ceshi:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   97 int useless_ceshi[100]={0};
useless_ceshi:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   98 int all_line_ceshi[100]={0};
all_line_ceshi:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   99 int left_line_only_ceshi[100]={0};
left_line_only_ceshi:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  100 int right_line_only_ceshi[100]={0};
right_line_only_ceshi:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  101 int steer_pre_error_ceshi[100]={0};
steer_pre_error_ceshi:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  102 u8 juesai=0;
juesai:
        DS8 1
//  103 
//  104 
//  105 //舵机控制参数

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  106 u8 line_first=70;
line_first:
        DATA
        DC8 70

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  107 u8 line_second=74;
line_second:
        DATA
        DC8 74
//  108 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  109 u8 line_third=70;
line_third:
        DATA
        DC8 70

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  110 u8 quanzhi_1=8;
quanzhi_1:
        DATA
        DC8 8

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  111 u8 quanzhi_2=2;
quanzhi_2:
        DATA
        DC8 2

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  112 u8 line_fourth=70;
line_fourth:
        DATA
        DC8 70

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  113 int steer_dp=48;
steer_dp:
        DATA
        DC32 48

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  114 int steer_dd=58;
steer_dd:
        DATA
        DC32 58

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  115 float steer_dl=3.1;
steer_dl:
        DATA
        DC32 40466666H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  116 int k_1=5;
k_1:
        DATA
        DC32 5

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  117 int k_2=10;
k_2:
        DATA
        DC32 10

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  118 int k_3=0;
k_3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  119 int k_4=0;
k_4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  120 float k_useless=0;
k_useless:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  121 float k_pinjun=1.0;
k_pinjun:
        DATA
        DC32 3F800000H

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  122 u8 km=5;
km:
        DATA
        DC8 5

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  123 u8 kn=3;
kn:
        DATA
        DC8 3

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  124 float steer_last_error=0;
steer_last_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  125 float steer_pre_error=0;
steer_pre_error:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  126 u8 center=65; 
center:
        DATA
        DC8 65

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  127 float  steer_duty=0;
steer_duty:
        DS8 4
//  128 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  129 u8 jiduandiuxian_flag=0;
jiduandiuxian_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  130 u8 imq_wuxiao_flag=0;
imq_wuxiao_flag:
        DS8 1
//  131 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  132 float erci_kp=0.0019;
erci_kp:
        DATA
        DC32 3AF9096CH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  133 float erci_kp_changshu=3.8;
erci_kp_changshu:
        DATA
        DC32 40733333H
//  134 
//  135 
//  136 //速度控制参数

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  137 float angle_p=0.004;
angle_p:
        DATA
        DC32 3B83126FH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  138 float speed_kp=100;
speed_kp:
        DATA
        DC32 42C80000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  139 float speed_ki=5;
speed_ki:
        DATA
        DC32 40A00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  140 float speed_kd=10;
speed_kd:
        DATA
        DC32 41200000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  141 int wanted_speed_L=220,wanted_speed_R=220;
wanted_speed_L:
        DATA
        DC32 220

        SECTION `.data`:DATA:REORDER:NOROOT(2)
wanted_speed_R:
        DATA
        DC32 220

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  142 int wanted_speed=220;
wanted_speed:
        DATA
        DC32 220

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  143 int true_speed_L=0,true_speed_R=0,true_speed=0;
true_speed_L:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
true_speed_R:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
true_speed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  144 int ek_1_L=0,ek_1_R=0;
ek_1_L:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ek_1_R:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  145 int ek_2_L=0,ek_2_R=0;
ek_2_L:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ek_2_R:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  146 int speed_pwm_L=0;
speed_pwm_L:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  147 int speed_pwm_R=0;
speed_pwm_R:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  148 int speed_L_min=180;
speed_L_min:
        DATA
        DC32 180

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  149 int speed_R_min=160;
speed_R_min:
        DATA
        DC32 160

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  150 int dev=140;
dev:
        DATA
        DC32 140

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  151 int chasubi=0;
chasubi:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  152 float k_chashu=0.267;
k_chashu:
        DATA
        DC32 3E88B439H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  153 float k_chashu_speed=0.35;
k_chashu_speed:
        DATA
        DC32 3EB33333H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  154 float mortal_out=1.00;
mortal_out:
        DATA
        DC32 3F800000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  155 float mortal_in=1.00;
mortal_in:
        DATA
        DC32 3F800000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  156 int whole_speed=0;
whole_speed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  157 int whole_speed_ek=0;  
whole_speed_ek:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  158 int whole_speed_ek1=0;
whole_speed_ek1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  159 int whole_speed_ek2=0;
whole_speed_ek2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  160 int whole_speed_pwm=0;
whole_speed_pwm:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  161 int true_speed_dev=0;
true_speed_dev:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  162 int speed_dev_ek=0;
speed_dev_ek:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  163 int speed_dev_ek1=0;
speed_dev_ek1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  164 int speed_dev_ek2=0;
speed_dev_ek2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  165 int speed_pwm_L_end=0;
speed_pwm_L_end:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  166 int speed_pwm_R_end=0;
speed_pwm_R_end:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  167 int speed_dev_pwm=0;
speed_dev_pwm:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  168 float speed_kp1=80;
speed_kp1:
        DATA
        DC32 42A00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  169 float speed_ki1=10;
speed_ki1:
        DATA
        DC32 41200000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  170 float speed_kd1=45;
speed_kd1:
        DATA
        DC32 42340000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  171 float speed_kp2=100;
speed_kp2:
        DATA
        DC32 42C80000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  172 float speed_ki2=5;
speed_ki2:
        DATA
        DC32 40A00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  173 float speed_kd2=10;
speed_kd2:
        DATA
        DC32 41200000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  174 int steer_pre=0;
steer_pre:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  175 int steer_last=0;
steer_last:
        DS8 4
//  176 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  177 int ab=0;
ab:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  178 int portion=50; 
portion:
        DATA
        DC32 50
//  179 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  180 float k_speed_control=0.065;
k_speed_control:
        DATA
        DC32 3D851EB8H
//  181 //float k_speed_control=0;
//  182 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  183 int zhidao_speed=500;
zhidao_speed:
        DATA
        DC32 500
//  184 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  185 int show_data_flag = 0;
show_data_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  186 int shuzu[1000]={0};
shuzu:
        DS8 4000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  187 int shuzuL[1000]={0};
shuzuL:
        DS8 4000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  188 int shuzuR[1000]={0};
shuzuR:
        DS8 4000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  189 int shuzuz[1000]={0};
shuzuz:
        DS8 4000
//  190 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  191 u8 podao_moshi_flag=0;
podao_moshi_flag:
        DS8 1
//  192 //液晶键盘
//  193 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  194 u8 key_flag=0;
key_flag:
        DS8 1
//  195 //kongzhi

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  196 float k_integral=1;
k_integral:
        DATA
        DC32 3F800000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  197 float k_integral_L=1;
k_integral_L:
        DATA
        DC32 3F800000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  198 float k_integral_R=1;
k_integral_R:
        DATA
        DC32 3F800000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  199 int integral_a=30;
integral_a:
        DATA
        DC32 30

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  200 float  integral_b=0.60;
integral_b:
        DATA
        DC32 3F19999AH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  201 int carry=-1;
carry:
        DATA
        DC32 -1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  202 int vector_dev[106]={0};
vector_dev:
        DS8 424

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  203 int deviation=0;
deviation:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  204 int speed_pwm=0;
speed_pwm:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  205 u8 danxian_xuanxian_moshi_flag=0;
danxian_xuanxian_moshi_flag:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  206 int speed_bong=30;
speed_bong:
        DATA
        DC32 30

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  207 int bili=30;
bili:
        DATA
        DC32 30

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  208 int ek_L=0;
ek_L:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  209 int ek_R=0;
ek_R:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  210 int steer_p=88;
steer_p:
        DATA
        DC32 88

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  211 int sep=88;
sep:
        DATA
        DC32 88

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  212 int b1=30;
b1:
        DATA
        DC32 30

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  213 float a1=20;
a1:
        DATA
        DC32 41A00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  214 int speed_max=300;
speed_max:
        DATA
        DC32 300

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  215 int speed_min=210;
speed_min:
        DATA
        DC32 210

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  216 float change_speed=8.0;
change_speed:
        DATA
        DC32 41000000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  217 float change_speed_error=8.0;
change_speed_error:
        DATA
        DC32 41000000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  218 int portion_error=30;
portion_error:
        DATA
        DC32 30

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  219 u8 speed_count=0;
speed_count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  220 int useless_last=0;
useless_last:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  221 float useless_p=38;
useless_p:
        DATA
        DC32 42180000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  222 float useless_d=30;
useless_d:
        DATA
        DC32 41F00000H
//  223 
//  224 /****************灯塔***************/
//  225 
//  226 
//  227 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  228 u8 dengta_count=0;
dengta_count:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  229 u8 dengta_begin_flag=1;
dengta_begin_flag:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  230 u8 dengta_stop_flag=0;
dengta_stop_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  231 u8 dengta_flag=0;
dengta_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  232 int dengta_stop_count=0;
dengta_stop_count:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  233 int dengta_stop_distance=600;
dengta_stop_distance:
        DATA
        DC32 600

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  234 int podao_moshi_distance=11000;
podao_moshi_distance:
        DATA
        DC32 11000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  235 int podao_distance_count=0;
podao_distance_count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  236 int pk=0;
pk:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  237 int dengta_begin_time=18;
dengta_begin_time:
        DATA
        DC32 18
//  238 
//  239 
//  240 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  241 void LED_INIT_xzm(void)  // 8 个 PORTC 管脚初始化
//  242 {
LED_INIT_xzm:
        PUSH     {R7,LR}
//  243     gpio_init(PORTC,15,GPO,HIGH); //g
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_init
//  244     gpio_init(PORTC,14,GPO,HIGH); //f
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_init
//  245     gpio_init(PORTC,13,GPO,HIGH); //a
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_init
//  246     gpio_init(PORTC,12,GPO,HIGH); //b
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_init
//  247     gpio_init(PORTC,11,GPO,HIGH); //dp
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+11
        MOVS     R0,#+2
        BL       gpio_init
//  248     gpio_init(PORTC,10,GPO,HIGH); //c
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_init
//  249     gpio_init(PORTC, 9,GPO,HIGH); //d
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_init
//  250     gpio_init(PORTC, 8,GPO,HIGH); //e
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_init
//  251 }
        POP      {R0,PC}          ;; return
//  252 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  253 void xianshi(int n)    //根据对应的输入数字 n（0~9），数码管进行相应的显示
//  254 {    
xianshi:
        PUSH     {R7,LR}
//  255   switch(n)
        CMP      R0,#+0
        BEQ.N    ??xianshi_0
        CMP      R0,#+2
        BEQ.N    ??xianshi_1
        BCC.N    ??xianshi_2
        CMP      R0,#+4
        BEQ.W    ??xianshi_3
        BCC.W    ??xianshi_4
        CMP      R0,#+6
        BEQ.W    ??xianshi_5
        BCC.W    ??xianshi_6
        CMP      R0,#+8
        BEQ.W    ??xianshi_7
        BCC.W    ??xianshi_8
        CMP      R0,#+9
        BEQ.W    ??xianshi_9
        B.N      ??xianshi_10
//  256   {
//  257   case 0:
//  258     gpio_set(PORTC,15,HIGH);//g
??xianshi_0:
        MOVS     R2,#+1
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_set
//  259     gpio_set(PORTC,14,LOW);//f
        MOVS     R2,#+0
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_set
//  260     gpio_set(PORTC,13,LOW);//a
        MOVS     R2,#+0
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_set
//  261     gpio_set(PORTC,12,LOW);//b
        MOVS     R2,#+0
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_set
//  262     gpio_set(PORTC,11,LOW);//dp
        MOVS     R2,#+0
        MOVS     R1,#+11
        MOVS     R0,#+2
        BL       gpio_set
//  263     gpio_set(PORTC,10,LOW);//c
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_set
//  264     gpio_set(PORTC, 9,LOW);//d
        MOVS     R2,#+0
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_set
//  265     gpio_set(PORTC, 8,LOW);//e
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_set
//  266     break;
        B.N      ??xianshi_11
//  267   case 1:
//  268     gpio_set(PORTC,15,HIGH);//g
??xianshi_2:
        MOVS     R2,#+1
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_set
//  269     gpio_set(PORTC,14,HIGH);//f
        MOVS     R2,#+1
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_set
//  270     gpio_set(PORTC,13,HIGH);//a
        MOVS     R2,#+1
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_set
//  271     gpio_set(PORTC,12,LOW);//b
        MOVS     R2,#+0
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_set
//  272     gpio_set(PORTC,11,LOW);//dp
        MOVS     R2,#+0
        MOVS     R1,#+11
        MOVS     R0,#+2
        BL       gpio_set
//  273     gpio_set(PORTC,10,LOW);//c
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_set
//  274     gpio_set(PORTC, 9,HIGH);//d
        MOVS     R2,#+1
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_set
//  275     gpio_set(PORTC, 8,HIGH);//e
        MOVS     R2,#+1
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_set
//  276     break;
        B.N      ??xianshi_11
//  277   case 2:
//  278     gpio_set(PORTC,15,LOW);//g
??xianshi_1:
        MOVS     R2,#+0
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_set
//  279     gpio_set(PORTC,14,HIGH);//f
        MOVS     R2,#+1
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_set
//  280     gpio_set(PORTC,13,LOW);//a
        MOVS     R2,#+0
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_set
//  281     gpio_set(PORTC,12,LOW);//b
        MOVS     R2,#+0
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_set
//  282     gpio_set(PORTC,11,LOW);//dp
        MOVS     R2,#+0
        MOVS     R1,#+11
        MOVS     R0,#+2
        BL       gpio_set
//  283     gpio_set(PORTC,10,HIGH);//c
        MOVS     R2,#+1
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_set
//  284     gpio_set(PORTC, 9,LOW);//d
        MOVS     R2,#+0
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_set
//  285     gpio_set(PORTC, 8,LOW);//e
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_set
//  286     break;
        B.N      ??xianshi_11
//  287   case 3:
//  288     gpio_set(PORTC,15,LOW);//g
??xianshi_4:
        MOVS     R2,#+0
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_set
//  289     gpio_set(PORTC,14,HIGH);//f
        MOVS     R2,#+1
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_set
//  290     gpio_set(PORTC,13,LOW);//a
        MOVS     R2,#+0
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_set
//  291     gpio_set(PORTC,12,LOW);//b
        MOVS     R2,#+0
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_set
//  292     gpio_set(PORTC,11,LOW);//dp
        MOVS     R2,#+0
        MOVS     R1,#+11
        MOVS     R0,#+2
        BL       gpio_set
//  293     gpio_set(PORTC,10,LOW);//c
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_set
//  294     gpio_set(PORTC, 9,LOW);//d
        MOVS     R2,#+0
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_set
//  295     gpio_set(PORTC, 8,HIGH);//e
        MOVS     R2,#+1
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_set
//  296     break;
        B.N      ??xianshi_11
//  297   case 4:
//  298     gpio_set(PORTC,15,LOW);//g
??xianshi_3:
        MOVS     R2,#+0
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_set
//  299     gpio_set(PORTC,14,LOW);//f
        MOVS     R2,#+0
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_set
//  300     gpio_set(PORTC,13,HIGH);//a
        MOVS     R2,#+1
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_set
//  301     gpio_set(PORTC,12,LOW);//b
        MOVS     R2,#+0
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_set
//  302     gpio_set(PORTC,11,LOW);//dp
        MOVS     R2,#+0
        MOVS     R1,#+11
        MOVS     R0,#+2
        BL       gpio_set
//  303     gpio_set(PORTC,10,LOW);//c
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_set
//  304     gpio_set(PORTC, 9,HIGH);//d
        MOVS     R2,#+1
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_set
//  305     gpio_set(PORTC, 8,HIGH);//e
        MOVS     R2,#+1
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_set
//  306     break;
        B.N      ??xianshi_11
//  307   case 5:
//  308     gpio_set(PORTC,15,LOW);//g
??xianshi_6:
        MOVS     R2,#+0
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_set
//  309     gpio_set(PORTC,14,LOW);//f
        MOVS     R2,#+0
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_set
//  310     gpio_set(PORTC,13,LOW);//a
        MOVS     R2,#+0
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_set
//  311     gpio_set(PORTC,12,HIGH);//b
        MOVS     R2,#+1
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_set
//  312     gpio_set(PORTC,11,LOW);//dp
        MOVS     R2,#+0
        MOVS     R1,#+11
        MOVS     R0,#+2
        BL       gpio_set
//  313     gpio_set(PORTC,10,LOW);//c
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_set
//  314     gpio_set(PORTC, 9,LOW);//d
        MOVS     R2,#+0
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_set
//  315     gpio_set(PORTC, 8,HIGH);//e
        MOVS     R2,#+1
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_set
//  316     break;
        B.N      ??xianshi_11
//  317   case 6:
//  318     gpio_set(PORTC,15,LOW);//g
??xianshi_5:
        MOVS     R2,#+0
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_set
//  319     gpio_set(PORTC,14,LOW);//f
        MOVS     R2,#+0
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_set
//  320     gpio_set(PORTC,13,LOW);//a
        MOVS     R2,#+0
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_set
//  321     gpio_set(PORTC,12,HIGH);//b
        MOVS     R2,#+1
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_set
//  322     gpio_set(PORTC,11,LOW);//dp
        MOVS     R2,#+0
        MOVS     R1,#+11
        MOVS     R0,#+2
        BL       gpio_set
//  323     gpio_set(PORTC,10,LOW);//c
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_set
//  324     gpio_set(PORTC, 9,LOW);//d
        MOVS     R2,#+0
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_set
//  325     gpio_set(PORTC, 8,LOW);//e
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_set
//  326     break;
        B.N      ??xianshi_11
//  327   case 7:
//  328     gpio_set(PORTC,15,HIGH);//g
??xianshi_8:
        MOVS     R2,#+1
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_set
//  329     gpio_set(PORTC,14,HIGH);//f
        MOVS     R2,#+1
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_set
//  330     gpio_set(PORTC,13,LOW);//a
        MOVS     R2,#+0
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_set
//  331     gpio_set(PORTC,12,LOW);//b
        MOVS     R2,#+0
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_set
//  332     gpio_set(PORTC,11,LOW);//dp
        MOVS     R2,#+0
        MOVS     R1,#+11
        MOVS     R0,#+2
        BL       gpio_set
//  333     gpio_set(PORTC,10,LOW);//c
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_set
//  334     gpio_set(PORTC, 9,HIGH);//d
        MOVS     R2,#+1
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_set
//  335     gpio_set(PORTC, 8,HIGH);//e
        MOVS     R2,#+1
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_set
//  336     break;
        B.N      ??xianshi_11
//  337   case 8:
//  338     gpio_set(PORTC,15,LOW);//g
??xianshi_7:
        MOVS     R2,#+0
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_set
//  339     gpio_set(PORTC,14,LOW);//f
        MOVS     R2,#+0
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_set
//  340     gpio_set(PORTC,13,LOW);//a
        MOVS     R2,#+0
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_set
//  341     gpio_set(PORTC,12,LOW);//b
        MOVS     R2,#+0
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_set
//  342     gpio_set(PORTC,11,LOW);//dp
        MOVS     R2,#+0
        MOVS     R1,#+11
        MOVS     R0,#+2
        BL       gpio_set
//  343     gpio_set(PORTC,10,LOW);//c
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_set
//  344     gpio_set(PORTC, 9,LOW);//d
        MOVS     R2,#+0
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_set
//  345     gpio_set(PORTC, 8,LOW);//e
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_set
//  346     break;
        B.N      ??xianshi_11
//  347   case 9:
//  348     gpio_set(PORTC,15,LOW);//g
??xianshi_9:
        MOVS     R2,#+0
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_set
//  349     gpio_set(PORTC,14,LOW);//f
        MOVS     R2,#+0
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_set
//  350     gpio_set(PORTC,13,LOW);//a
        MOVS     R2,#+0
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_set
//  351     gpio_set(PORTC,12,LOW);//b
        MOVS     R2,#+0
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_set
//  352     gpio_set(PORTC,11,LOW);//dp
        MOVS     R2,#+0
        MOVS     R1,#+11
        MOVS     R0,#+2
        BL       gpio_set
//  353     gpio_set(PORTC,10,LOW);//c
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_set
//  354     gpio_set(PORTC, 9,LOW);//d
        MOVS     R2,#+0
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_set
//  355     gpio_set(PORTC, 8,HIGH);//e
        MOVS     R2,#+1
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_set
//  356     break;
        B.N      ??xianshi_11
//  357   default:
//  358     gpio_set(PORTC,15,LOW);//g
??xianshi_10:
        MOVS     R2,#+0
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_set
//  359     gpio_set(PORTC,14,HIGH);//f
        MOVS     R2,#+1
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_set
//  360     gpio_set(PORTC,13,HIGH);//a
        MOVS     R2,#+1
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_set
//  361     gpio_set(PORTC,12,HIGH);//b
        MOVS     R2,#+1
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_set
//  362     gpio_set(PORTC,11,LOW);//dp
        MOVS     R2,#+0
        MOVS     R1,#+11
        MOVS     R0,#+2
        BL       gpio_set
//  363     gpio_set(PORTC,10,HIGH);//c
        MOVS     R2,#+1
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_set
//  364     gpio_set(PORTC, 9,HIGH);//d
        MOVS     R2,#+1
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_set
//  365     gpio_set(PORTC, 8,HIGH);//e
        MOVS     R2,#+1
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_set
//  366     break;
//  367   }
//  368 }
??xianshi_11:
        POP      {R0,PC}          ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 62 508 bytes in section .bss
//    271 bytes in section .data
//  1 052 bytes in section .text
// 
//  1 052 bytes of CODE memory
// 62 779 bytes of DATA memory
//
//Errors: none
//Warnings: none
