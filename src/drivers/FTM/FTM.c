/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[FTM.c] 
* 描  述 ：FTM定时器
* 原创   ：野火嵌入式开发工作室
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
*最后更新：2012-04-03
* 说  明 ：本模块包含：FTM计时，PWM波，输出比较，输入捕捉，正交解码，
            测速等功能
***********************************************************************
*/
#include "common.h"
#include  "FTM.h"


/*********** FTMn_CHn PWM输出初始化函数 ***********/
/*
引脚配置见 driver_cfg.h
*/
volatile struct FTM_MemMap *FTMx[3]={FTM0_BASE_PTR,FTM1_BASE_PTR,FTM2_BASE_PTR}; 
//定义三个指针数组保存 FTMn 的地址


/*************************************************************************
*  函数名称：FTM_init
*  功能说明：设置FTM的时钟中断频率
*  参数说明：FTMn        模块号（FTM0、  FTM1、  FTM2）
*            freq        中断频率（单位为Hz）
*  函数返回：无
*  修改时间：2012-2-14
*  备    注：同一个FTM，频率是一样的，共3个FTM，即可以输出3个不同频率
             在48Mbus下 最低6Hz ps = 128分频  mod = 65535 
                        最高24M 这时mod = 1;            
*************************************************************************/
void FTM_init(FTMn ftmn,u32 freq)                   //设置FTM的频率
{
    u32 clk_hz = (bus_clk_khz*1000);                //bus频率
    u32 mod;
    u8 sc_ps;

    ASSERT( ftmn==FTM0 ||ftmn==FTM1 || ftmn==FTM2 ); 
    //用断言检测 频率 是否正常 ,频率必须小于时钟二分之一  >>7>>16 最大为总线/65535/128
    ASSERT_RST( (freq <= (clk_hz/2) && freq >(clk_hz>>23)),"FTM频率配置错误" );

    /*       计算频率设置        */
    mod= (clk_hz>>16 )/freq ;
    for(sc_ps=0;(mod>>sc_ps)>=1;sc_ps++);           //求sc_ps的最小值
    mod=(clk_hz>>sc_ps)/freq - 1;
    
    ASSERT( sc_ps < 8);                             //用断言检测，保证ps最大为7        

    switch(ftmn)
    {
    case FTM0:
        SIM_SCGC6|=SIM_SCGC6_FTM0_MASK;             //使能FTM0时钟
        break;
    case FTM1:
        SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;            //使能FTM1时钟
        break;
    case FTM2:
        SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;            //使能FTM2时钟
        break;
    default:
        break;
    }
        
    FTM_CNT_REG(FTMx[ftmn])   =0;  
    FTM_MOD_REG(FTMx[ftmn])   = FTM_MOD_MOD(mod);  //Modulo value模数, EPWM的周期为 ：MOD - CNTIN + 0x0001
    FTM_CNTIN_REG(FTMx[ftmn]) =0;                  //Counter Initial Value 计数器初始化值
    
    /******************** 配置时钟和分频 ********************/
    //SC  bit7:TOF Timer Overflow Flag
    FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_TOF_MASK;
    //bit5:CPWMS  0 FTM counter operates in up counting mode.
                //1 FTM counter operates in up-down counting mode.
    FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_CPWMS_MASK;
    FTM_SC_REG(FTMx[ftmn])   |= (FTM_SC_PS(sc_ps) | FTM_SC_CLKS(1));  //没有使能溢出中断
    //FTM_CnV_REG(FTMx[ftmn],ch)= 0;                // Channel (n) Value  。设置脉冲宽度：(CnV - CNTIN).
}

/*************************************************************************
*  函数名称：FTM_PWM_init
*  功能说明：初始化FTM的PWM功能并设置频率、占空比。设置通道输出占空比。
*  参数说明：FTMn        模块号（FTM0、  FTM1、  FTM2）
*            CHn         通道号（CH0~CH7）
*            freq        频率（单位为Hz）
*            duty        占空比
*  函数返回：无
*  修改时间：2012-2-14
*  备    注：同一个FTM，各通道的PWM频率是一样的，共3个FTM，即可以输出3个不同频率PWM
*             通道占空比,占空比为 （duty * 精度） % ，
*             如果 FTM_PRECISON 定义为 1000 ，duty = 100 ，
*             则占空比 100*0.1%=10%
*************************************************************************/
void FTM_PWM_init(FTMn ftmn,CHn ch,u32 freq,u32 duty)
{      	
    u32 clk_hz = (bus_clk_khz*1000);              //bus频率
    u32 mod;
    u8 sc_ps;
    u32 cv;

    ASSERT( (ftmn==FTM0) || ( (ftmn==FTM1 || ftmn==FTM2 ) &&(ch<=CH1)) );   //检查传递进来的通道是否正确
    
    //用断言检测 频率 是否正常 ,频率必须小于时钟二分之一  >>7>>16 最大为总线/65535/128
    ASSERT_RST( (freq <= (clk_hz/2) && freq >(clk_hz>>23)),"FTM频率配置错误" );
    
    /*       计算频率设置        */
    mod= (clk_hz>>16 )/freq;
    for(sc_ps=0;(mod>>sc_ps)>=1;sc_ps++);         //求sc_ps的最小值
    mod=(clk_hz>>sc_ps)/freq - 1;                 //求出分频后mod小于65535

    cv = (duty*(mod-0+1))/FTM_PRECISON;           //EPWM的周期 ：MOD - CNTIN + 0x0001   (CNTIN 设为0)
                                                  //脉冲宽度：CnV - CNTIN
                                                  //FTM_PRECISON 是精度

    /******************* 开启时钟 和 复用IO口*******************/
    //注，这里代码虽然长，但编译时会删掉很多没用的部分，不影响速度
    switch(ftmn)
    {
    case FTM0:
        SIM_SCGC6|=SIM_SCGC6_FTM0_MASK;                             //使能FTM0时钟
        switch(ch)
        {
        case CH0:
            if(FTM0_CH0==PTC1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 1) = PORT_PCR_MUX(4);  // PTC1
            }
            /*不建议使用PTA3
            else if(FTM0_CH0==PTA3)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 3) = PORT_PCR_MUX(3);  // PTA3
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            */
            break;

        case CH1:
            if(FTM0_CH1==PTC2)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 2) = PORT_PCR_MUX(4);  // PTC2
            }
            else if(FTM0_CH1==PTA4)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 4) = PORT_PCR_MUX(3);  // PTA4
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH2:
            if(FTM0_CH2==PTC3)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 3) = PORT_PCR_MUX(4);  // PTC3
            }
            else if(FTM0_CH2==PTA5)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 5) = PORT_PCR_MUX(3);  // PTA5
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH3:
            if(FTM0_CH3==PTC4)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 4) = PORT_PCR_MUX(4);  // PTC4
            }
#if K60PIN == 144u
            else if(FTM0_CH3==PTA6)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 6) = PORT_PCR_MUX(3);  // PTA6
            }
#endif
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH4:
            if(FTM0_CH4==PTD4)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 4) = PORT_PCR_MUX(4);  // PTD4
            }
#if K60PIN == 144u
            else if(FTM0_CH4==PTA7)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 7) = PORT_PCR_MUX(3);  // PTA7
            }
#endif
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH5:
            if(FTM0_CH5==PTD5)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 5) = PORT_PCR_MUX(4);  // PTD5
            }
            /*不建议使用PTA0
            else if(FTM0_CH5==PTA0)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTA0
            }
            */
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH6:
            if(FTM0_CH6==PTD6)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 6) = PORT_PCR_MUX(4);  // PTD6
            }
            /*不建议使用PTA1
            else if(FTM0_CH6==PTA1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTA1
            }
            */
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH7:
            if(FTM0_CH7==PTD7)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 7) = PORT_PCR_MUX(4);  // PTD7
            }
            /*不建议使用PTA2
            else if(FTM0_CH7==PTA2)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 2) = PORT_PCR_MUX(3);  // PTA2
            }
            */
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;
        default:
            return;
        }
        break;

  case FTM1:
        SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                             //使能FTM1时钟
        switch(ch)
        {
        case CH0:
#if K60PIN == 144u
            if(FTM1_CH0==PTA8)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 8) = PORT_PCR_MUX(3);  // PTA8
            }
            else 
#endif            
            if(FTM1_CH0==PTA12)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 12) = PORT_PCR_MUX(3);  // PTA12
            }
            else if(FTM1_CH0==PTB0)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTB_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTB0
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;


        case CH1:
#if K60PIN == 144u
            if(FTM1_CH1==PTA9)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 9) = PORT_PCR_MUX(3);  // PTA9
            }
            else 
#endif  
            if(FTM1_CH1==PTA13)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 13) = PORT_PCR_MUX(3);  // PTA13
            }
            else if(FTM1_CH1==PTB1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTB_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTB1
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        default:
            return;
        }
        break;
  case FTM2:
        SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //使能FTM2时钟
        switch(ch)
        {
        case CH0:
#if K60PIN == 144u
            if(FTM2_CH0==PTA10)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 10) = PORT_PCR_MUX(3);  // PTA10
            }
            else 
#endif            
            if(FTM2_CH0==PTB18)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTB_BASE_PTR, 18) = PORT_PCR_MUX(3);  // PTB18
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH1:
#if K60PIN == 144u
            if(FTM2_CH1==PTA11)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 11) = PORT_PCR_MUX(3);  // PTA11
            }
            else 
#endif             
            if(FTM2_CH1==PTB19)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTB_BASE_PTR, 19) = PORT_PCR_MUX(3);  // PTB19
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        default:
            return;
        }
        break;
  default:
        break;
    }
    /******************** 选择输出模式为 边沿对齐PWM *******************/
    //通道状态控制，根据模式来选择 边沿或电平
    FTM_CnSC_REG(FTMx[ftmn],ch) &= ~FTM_CnSC_ELSA_MASK;
    FTM_CnSC_REG(FTMx[ftmn],ch) = FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;
    //MSnB:MSnA = 1x
    // ELSnB:ELSnA = 10   High-true pulses  (clear Output on match)
    // ELSnB:ELSnA = 11   Low-true pulses   (set Output on match)
    // Edge-aligned PWM  边沿对齐PWM波   《k16 reference manual.pdf》  P944  或者  《K60P144M100SF2RM.pdf》P1001

    FTM_CNT_REG(FTMx[ftmn])   = 0;     
    FTM_MOD_REG(FTMx[ftmn])   = FTM_MOD_MOD(mod);                                                     //Modulo value模数, EPWM的周期为 ：MOD - CNTIN + 0x0001
    FTM_CNTIN_REG(FTMx[ftmn]) = 0;                                                       //Counter Initial Value 计数器初始化值
    FTM_CnV_REG(FTMx[ftmn],ch)= FTM_CnV_VAL(cv);                                                      // Channel (n) Value  。设置脉冲宽度：(CnV - CNTIN).
 
    /******************** 配置时钟和分频 ********************/
    FTM_SC_REG(FTMx[ftmn])   |= (FTM_SC_PS(sc_ps) | FTM_SC_CLKS(1));  //没有使能溢出中断
    FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_CPWMS_MASK;                                                  
                                                       //计数器。只有低16位可用
    /*
    FTM_SC_CPWMS_MASK：Center-aligned PWM Select 中心对齐PWM选择
      0    FTM counter operates in up counting mode.      向上计数
      1    FTM counter operates in up-down counting mode. 上下计数

    FTM_SC_PS：Prescale Factor Selection 预分频因子选择
                           | 
      000    Divide by 1   |      
      001    Divide by 2   |    
      010    Divide by 4   |    
      011    Divide by 8   |    
      100    Divide by 16  |    
      101    Divide by 32  |   
      110    Divide by 64  |
      111    Divide by 128 |

    FTM_SC_CLKS：Clock Source Selection 时钟源选择
      00    No clock selected (This in effect disables the FTM counter.)
      01    System clock
      10    Fixed frequency clock
      11    External clock
  */
}
/*************************************************************************
*  函数名称：FTM_PWM_Duty
*  功能说明：设置通道占空比
*  参数说明：FTMn        模块号（FTM0、  FTM1、  FTM2）
*            CHn         通道号（CH0~CH7）
*            duty        占空比
*  函数返回：无
*  修改时间：2012-2-14
*  备    注：设置通道占空比,占空比为 （duty * 精度） % ，
*             如果 FTM_PRECISON 定义为 1000 ，duty = 100 ，
*             则占空比 100*0.1%=10%
*************************************************************************/
void FTM_PWM_Duty(FTMn ftmn,CHn ch, u32 duty)
{
    u32 cv;
    u32 mod;

    ASSERT( (ftmn==FTM0) || ( (ftmn==FTM1 || ftmn==FTM2 ) &&(ch<=CH1)) );   //检查传递进来的通道是否正确
    ASSERT_RST(duty <= FTM_PRECISON,"所配占空比超过100%");                  //用断言检测 占空比是否合理

    //占空比 = (CnV-CNTIN)/(MOD-CNTIN+1)
    mod = FTM_MOD_REG(FTMx[ftmn]);                                          //读取 MOD 的值

    cv = (duty*(mod-0+1))/FTM_PRECISON;

    // 配置FTM通道值
    FTM_CnV_REG(FTMx[ftmn],ch) = cv;
}


/*************************************************************************
*  函数名称：FTM_PWM_freq
*  功能说明：设置FTM的频率
*  参数说明：FTMn        模块号（FTM0、  FTM1、  FTM2）
*            freq        频率（单位为Hz）
*  函数返回：无
*  修改时间：2012-2-14
*  备    注：同一个FTM，各通道的PWM频率是一样的，共3个FTM，即可以输出3个不同频率PWM
*************************************************************************/
void FTM_PWM_freq(FTMn ftmn,u32 freq)               //设置FTM的频率
{
    u32 clk_hz = (bus_clk_khz*1000);                //bus频率 
    u32 mod;
    u8 sc_ps;


    //用断言检测 频率 是否正常 ,频率必须小于时钟二分之一  >>7>>16 最大为总线/65535/128
    ASSERT_RST( (freq <= (clk_hz/2) && freq >(clk_hz>>23)),"FTM频率配置错误" );
    
    
    /*       计算频率设置        */
    mod= (clk_hz>>16 )/freq ;
    for(sc_ps=0;(mod>>sc_ps)>=1;sc_ps++);           //求sc_ps的最小值
    mod=(clk_hz>>sc_ps)/freq - 1;
    
    ASSERT( sc_ps < 8);                             //用断言检测，保证ps最大为7        

    switch(ftmn)
    {
    case FTM0:
        SIM_SCGC6|=SIM_SCGC6_FTM0_MASK;                               //使能FTM0时钟
    case FTM1:
        SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                               //使能FTM1时钟
    case FTM2:
        SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                             //使能FTM2时钟
    default:
        break;
    }
    
    FTM_CNT_REG(FTMx[ftmn])   =0;                                                       //计数器。只有低16位可用
    //FTM_CnV_REG(FTMx[ftmn],ch)= 0;                                                    // Channel (n) Value  。设置脉冲宽度：(CnV - CNTIN).
    FTM_MOD_REG(FTMx[ftmn])   = FTM_MOD_MOD(mod);                                                    //Modulo value模数, EPWM的周期为 ：MOD - CNTIN + 0x0001
    FTM_CNTIN_REG(FTMx[ftmn]) =0;
    
    while(!(mod == FTM_MOD_REG(FTMx[ftmn])));                         //等待更新成功 
   
    /******************** 配置时钟和分频 ********************/
    FTM_SC_REG(FTMx[ftmn])   |= (FTM_SC_PS(sc_ps) | FTM_SC_CLKS(1));  //没有使能溢出中断
    FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_CPWMS_MASK; 
}


/*************************************************************************
*  函数名称：FTM_Input_init
*  功能说明：输入捕捉初始化函数
*  参数说明：FTMn        模块号（FTM0、  FTM1、  FTM2）
*            CHn         通道号（CH0~CH7）
*            Input_cfg   输入捕捉配置（Rising、Falling、Rising_or_Falling）上升沿捕捉、下降沿捕捉、跳变沿捕捉
*  函数返回：无
*  修改时间：2012-1-26
*  备    注：CH0~CH3可以使用过滤器，未添加这功能
*************************************************************************/
void FTM_Input_init(FTMn ftmn,CHn ch,Input_cfg cfg)
{
    ASSERT_RST( ((ftmn==FTM0) || ( (ftmn==FTM1 || ftmn==FTM2 ) &&(ch<=CH1)) ),"FTM通道设置错误");   //检查传递进来的通道是否正确	

    /******************* 开启时钟 和 复用IO口*******************/
    //注，这里代码虽然长，但编译时会删掉很多没用的部分，不影响速度
    switch(ftmn)
    {
    case FTM0:
        SIM_SCGC6|=SIM_SCGC6_FTM0_MASK;                             //使能FTM0时钟
        switch(ch)
        {
        case CH0:
            if(FTM0_CH0==PTC1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 1) = PORT_PCR_MUX(4);  // PTC1
            }
            /*不建议使用PTA3
            else if(FTM0_CH0==PTA3)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 3) = PORT_PCR_MUX(3);  // PTA3
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            */
            break;

        case CH1:
            if(FTM0_CH1==PTC2)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 2) = PORT_PCR_MUX(4);  // PTC2
            }
            else if(FTM0_CH1==PTA4)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 4) = PORT_PCR_MUX(3);  // PTA4
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH2:
            if(FTM0_CH2==PTC3)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 3) = PORT_PCR_MUX(4);  // PTC3
            }
            else if(FTM0_CH2==PTA5)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 5) = PORT_PCR_MUX(3);  // PTA5
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH3:
            if(FTM0_CH3==PTC4)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 4) = PORT_PCR_MUX(4);  // PTC4
            }
#if K60PIN == 144u
            else if(FTM0_CH3==PTA6)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 6) = PORT_PCR_MUX(3);  // PTA6
            }
#endif
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH4:
            if(FTM0_CH4==PTD4)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 4) = PORT_PCR_MUX(4);  // PTD4
            }
#if K60PIN == 144u
            else if(FTM0_CH4==PTA7)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 7) = PORT_PCR_MUX(3);  // PTA7
            }
#endif
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH5:
            if(FTM0_CH5==PTD5)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 5) = PORT_PCR_MUX(4);  // PTD5
            }
            /*不建议使用PTA0
            else if(FTM0_CH5==PTA0)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTA0
            }
            */
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH6:
            if(FTM0_CH6==PTD6)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 6) = PORT_PCR_MUX(4);  // PTD6
            }
            /*不建议使用PTA1
            else if(FTM0_CH6==PTA1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTA1
            }
            */
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH7:
            if(FTM0_CH7==PTD7)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 7) = PORT_PCR_MUX(4);  // PTD7
            }
            /*不建议使用PTA2
            else if(FTM0_CH7==PTA2)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 2) = PORT_PCR_MUX(3);  // PTA2
            }
            */
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;
        default:
            return;
        }
        break;

  case FTM1:
        SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                             //使能FTM1时钟
        switch(ch)
        {
        case CH0:
#if K60PIN == 144u
            if(FTM1_CH0==PTA8)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 8) = PORT_PCR_MUX(3);  // PTA8
            }
            else 
#endif            
            if(FTM1_CH0==PTA12)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 12) = PORT_PCR_MUX(3);  // PTA12
            }
            else if(FTM1_CH0==PTB0)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTB_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTB0
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;


        case CH1:
#if K60PIN == 144u
            if(FTM1_CH1==PTA9)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 9) = PORT_PCR_MUX(3);  // PTA9
            }
            else 
#endif  
            if(FTM1_CH1==PTA13)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 13) = PORT_PCR_MUX(3);  // PTA13
            }
            else if(FTM1_CH1==PTB1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTB_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTB1
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        default:
            return;
        }
        break;
  case FTM2:
        SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //使能FTM2时钟
        switch(ch)
        {
        case CH0:
#if K60PIN == 144u
            if(FTM2_CH0==PTA10)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 10) = PORT_PCR_MUX(3);  // PTA10
            }
            else 
#endif            
            if(FTM2_CH0==PTB18)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTB_BASE_PTR, 18) = PORT_PCR_MUX(3);  // PTB18
                //PORT_PCR_REG(PORTB_BASE_PTR, 18) = (0|PORT_PCR_MUX(3)|0x10);  //带无源滤波器
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        case CH1:
#if K60PIN == 144u
            if(FTM2_CH1==PTA11)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTB_BASE_PTR, 11) = PORT_PCR_MUX(3);  // PTA11
            }
            else 
#endif             
            if(FTM2_CH1==PTB19)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTB_BASE_PTR, 19) = (0|PORT_PCR_MUX(3)|0x10);  //带无源滤波器
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            }
            break;

        default:
            return;
        }
        break;
  default:
        break;
    }


    /******************* 设置为输入捕捉功能 *******************/
    switch(cfg)
    {
    case Rising:    //上升沿触发
        FTM_CnSC_REG(FTMx[ftmn],ch) |=  ( FTM_CnSC_ELSA_MASK  | FTM_CnSC_CHIE_MASK );                    //置1
        FTM_CnSC_REG(FTMx[ftmn],ch) &= ~( FTM_CnSC_ELSB_MASK  | FTM_CnSC_MSB_MASK | FTM_CnSC_MSA_MASK);  //清0
        break;

    case Falling:   //下降沿触发
        FTM_CnSC_REG(FTMx[ftmn],ch) |= (FTM_CnSC_ELSB_MASK  | FTM_CnSC_CHIE_MASK );                     //置1
        FTM_CnSC_REG(FTMx[ftmn],ch) &= ~( FTM_CnSC_ELSA_MASK | FTM_CnSC_MSB_MASK | FTM_CnSC_MSA_MASK);  //清0
        break;

    case Rising_or_Falling: //上升沿、下降沿都触发
        FTM_CnSC_REG(FTMx[ftmn],ch) |=  ( FTM_CnSC_ELSB_MASK | FTM_CnSC_ELSA_MASK  | FTM_CnSC_CHIE_MASK ); //置1
        FTM_CnSC_REG(FTMx[ftmn],ch) &= ~( FTM_CnSC_MSB_MASK  | FTM_CnSC_MSA_MASK);  //清0
        break;
    }

    FTM_SC_REG(FTMx[ftmn]) = FTM_SC_CLKS(0x1);        //System clock

    FTM_MODE_REG(FTMx[ftmn]) |= FTM_MODE_WPDIS_MASK;
    FTM_COMBINE_REG(FTMx[ftmn])=0;
    FTM_MODE_REG(FTMx[ftmn]) &= ~FTM_MODE_FTMEN_MASK;
    FTM_CNTIN_REG(FTMx[ftmn])=0;

    FTM_STATUS_REG(FTMx[ftmn])=0x00;                  //清中断标志位

    //开启输入捕捉中断
    enable_irq(62+ftmn);
}
/*************************************************************************
*  函数名称：FTM2_QUAD_DIR_init
*  功能说明：正交解码 方向计数模式初始化函数
*  参数说明：FTMn        模块号（FTM1、  FTM2）
*  函数返回：无
*  修改时间：2012-1-26
*  备    注：
             该例程使用 A10 和A11 引脚输入作为旋转编码器的 A相和B 相输入。 
              B路控制计数器方向  高电平时计数器正向计数
              A路计数脉冲
              对B路默认上拉
*************************************************************************/
void FTM_QUAD_DIR_init(FTMn ftmn)
{
    ASSERT_RST( (ftmn==FTM1 || ftmn==FTM2 ),"FTM正交方向计数通道设置错误");   //检查传递进来的通道是否正确	
    
    switch(ftmn)
    {
      case FTM1:
        SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                             //使能FTM1时钟
#if K60PIN == 144u        
        if(FTM1_CH0==PTA8 && FTM1_CH1==PTA9)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
            PORT_PCR_REG(PORTA_BASE_PTR, 8) = (0|PORT_PCR_MUX(6)|0x10);//滤波    这种写法是加一个IO滤波器
            PORT_PCR_REG(PORTA_BASE_PTR, 9) = (0|PORT_PCR_MUX(6)|0x13);//滤波    检测5v信号时有必要使用
        }
        else 
#endif          
        if(FTM1_CH0==PTA12 && FTM1_CH1==PTA13)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
            PORT_PCR_REG(PORTA_BASE_PTR, 12) = (0|PORT_PCR_MUX(7)|0x10);  // PTA12 //依米使用
            PORT_PCR_REG(PORTA_BASE_PTR, 13) = (0|PORT_PCR_MUX(7)|0x13);  // PTA13 //依米使用
        }
        else if(FTM1_CH0==PTB0 && FTM1_CH1==PTB1)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
            PORT_PCR_REG(PORTB_BASE_PTR, 0) = (0|PORT_PCR_MUX(6)|0x10);  // PTB0
            PORT_PCR_REG(PORTB_BASE_PTR, 1) = (0|PORT_PCR_MUX(6)|0x13);  // PTB1
        }
        else
        {
            assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
        }
        break;
        
    case FTM2:
        SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //使能FTM2时钟
#if K60PIN == 144u         
        if(FTM2_CH0==PTA10 && FTM2_CH1==PTA11)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
            PORT_PCR_REG(PORTA_BASE_PTR, 10) = (0|PORT_PCR_MUX(6)|0x10);//滤波  // PTA10
            PORT_PCR_REG(PORTA_BASE_PTR, 11) = (0|PORT_PCR_MUX(6)|0x13);//滤波  // PTA11
        }
        else 
#endif        
        if(FTM2_CH0==PTB18 && FTM2_CH1==PTB19)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
            PORT_PCR_REG(PORTB_BASE_PTR, 18) = (0|PORT_PCR_MUX(6)|0x10);  // PTB18 //依米使用
            PORT_PCR_REG(PORTB_BASE_PTR, 19) = (0|PORT_PCR_MUX(6)|0x13);  // PTB19 //依米使用
        }
        else
        {   
            assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
        }
        break;
  default:
        break;
    }
    FTM_MODE_REG(FTMx[ftmn])    |= FTM_MODE_WPDIS_MASK;           //写保护禁止
    FTM_QDCTRL_REG(FTMx[ftmn])  |= FTM_QDCTRL_QUADMODE_MASK;       //AB相同时确定方向和计数值
    FTM_CNTIN_REG(FTMx[ftmn])    = 0;                             //FTM计数器初始值为0
    FTM_MOD_REG(FTMx[ftmn])      = 0xFFFF;                        //FTM计数器结束值为0xFFFF
    
    //FTM_FILTER_REG(FTMx[ftmn])  |= FTM_FILTER_CH0FVAL(0x1F);    CH0~CH3可以使用过滤器
    //FTM_FILTER_REG(FTMx[ftmn])  |= FTM_FILTER_CH1FVAL(0x1F);
    //不启用滤波器延时三个时钟响应  用滤波响应时间为 4+4*FILTER
    
     
    FTM_QDCTRL_REG(FTMx[ftmn])  |=FTM_QDCTRL_QUADEN_MASK;         //使能FTMx正交解码模式
    FTM_MODE_REG(FTMx[ftmn])    |= FTM_MODE_FTMEN_MASK;           //FTMxEN=1	
    FTM_CNT_REG(FTMx[ftmn])    = 0; 	
}

/*************************************************************************
*  函数名称：FTM2_init
*  功能说明：正交解码 A相和B相编码模式初始化函数
*  参数说明：FTMn        模块号（FTM1、  FTM2）
*            *  函数返回：无
*  修改时间：2012-1-26
*  备    注：CH0~CH3可以使用过滤器，未添加这功能
             该例程使用 A10 和A11 引脚输入作为旋转编码器的 A相和B 相输入。 
*************************************************************************/
void FTM_QUAD_init(FTMn ftmn)
{
    ASSERT_RST( (ftmn==FTM1 || ftmn==FTM2 ),"FTM正交方向计数通道设置错误");   //检查传递进来的通道是否正确	
    
    switch(ftmn)
    {
      case FTM1:
        SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                             //使能FTM1时钟
#if K60PIN == 144u          
        if(FTM1_CH0==PTA8 && FTM1_CH1==PTA9)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
            PORT_PCR_REG(PORTA_BASE_PTR, 8) = PORT_PCR_MUX(6);   // PTA8
            PORT_PCR_REG(PORTA_BASE_PTR, 9) = (0|PORT_PCR_MUX(6));
        }
        else 
#endif          
        if(FTM1_CH0==PTA12 && FTM1_CH1==PTA13)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
            PORT_PCR_REG(PORTA_BASE_PTR, 12) = PORT_PCR_MUX(7);  // PTA12
            PORT_PCR_REG(PORTA_BASE_PTR, 13) = PORT_PCR_MUX(7);  // PTA13
        }
        else if(FTM1_CH0==PTB0 && FTM1_CH1==PTB1)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
            PORT_PCR_REG(PORTB_BASE_PTR, 0) = PORT_PCR_MUX(6);  // PTB0
            PORT_PCR_REG(PORTB_BASE_PTR, 1) = PORT_PCR_MUX(6);  // PTB1
        }
        else
        {
            assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
        }
        break;
        
    case FTM2:
        SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //使能FTM2时钟
#if K60PIN == 144u          
        if(FTM2_CH0==PTA10 && FTM2_CH1==PTA11)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
            PORT_PCR_REG(PORTA_BASE_PTR, 10) = PORT_PCR_MUX(6);  // PTA10
            PORT_PCR_REG(PORTA_BASE_PTR, 11) = PORT_PCR_MUX(6);  // PTA11
        }
        else 
#endif        
        if(FTM2_CH0==PTB18 && FTM2_CH1==PTB19)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
            PORT_PCR_REG(PORTB_BASE_PTR, 18) = PORT_PCR_MUX(6);  // PTB18
            PORT_PCR_REG(PORTB_BASE_PTR, 19) = PORT_PCR_MUX(6);  // PTB19
        }
        else
        {
            assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
        }
        break;
  default:
        break;
    }
    FTM_MODE_REG(FTMx[ftmn])    |= FTM_MODE_WPDIS_MASK;           //写保护禁止
    FTM_QDCTRL_REG(FTMx[ftmn])  &= ~FTM_QDCTRL_QUADMODE_MASK;     //AB 正交解码模式
    FTM_CNTIN_REG(FTMx[ftmn])    = 0;                             //FTM计数器初始值为0
    FTM_MOD_REG(FTMx[ftmn])      = 0xFFFF;                        //FTM计数器初始值为0
   
    FTM_QDCTRL_REG(FTMx[ftmn])  |=FTM_QDCTRL_QUADEN_MASK;         //使能FTM2正交解码模式
    FTM_MODE_REG(FTMx[ftmn])    |= FTM_MODE_FTMEN_MASK;                             //FTM2EN=1	
    FTM_CNT_REG(FTMx[ftmn])    = 0; 	
}

/*
************************************************************************
*  函数名称：FTM_irq_EN
*  功能说明：开FTM中断
*  参数说明：FTM       模块号（FTM0~FTM2）
*  函数返回：无
*  修改时间：2012-3-20
*  备    注：
************************************************************************
*/
void FTM_irq_EN(FTMn ftmn)
{
    //bit6:TOIE   0 Disable TOF interrupts. Use software polling.
                //1 Enable TOF interrupts. An interrupt is generated when TOF equals one.
    FTM_SC_REG(FTMx[ftmn])   |= FTM_SC_TOIE_MASK;     //开放FTM中断
    enable_irq(ftmn+ 62);			      //开中断
}


/*
************************************************************************
*  函数名称：FTM_irq_DIS
*  功能说明：关FTM中断
*  参数说明：FTM       模块号（FTM0~FTM2）
*  函数返回：无
*  修改时间：2012-3-20
*  备    注：
************************************************************************
*/
void FTM_irq_DIS(FTMn ftmn)
{
    //bit6:TOIE   0 Disable TOF interrupts. Use software polling.
                //1 Enable TOF interrupts. An interrupt is generated when TOF equals one.
    FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_TOIE_MASK;     //关放FTM中断
    disable_irq(ftmn+ 62);			       //关中断
}



