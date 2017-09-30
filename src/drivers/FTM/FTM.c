/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[FTM.c] 
* ��  �� ��FTM��ʱ��
* ԭ��   ��Ұ��Ƕ��ʽ����������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
*�����£�2012-04-03
* ˵  �� ����ģ�������FTM��ʱ��PWM��������Ƚϣ����벶׽���������룬
            ���ٵȹ���
***********************************************************************
*/
#include "common.h"
#include  "FTM.h"


/*********** FTMn_CHn PWM�����ʼ������ ***********/
/*
�������ü� driver_cfg.h
*/
volatile struct FTM_MemMap *FTMx[3]={FTM0_BASE_PTR,FTM1_BASE_PTR,FTM2_BASE_PTR}; 
//��������ָ�����鱣�� FTMn �ĵ�ַ


/*************************************************************************
*  �������ƣ�FTM_init
*  ����˵��������FTM��ʱ���ж�Ƶ��
*  ����˵����FTMn        ģ��ţ�FTM0��  FTM1��  FTM2��
*            freq        �ж�Ƶ�ʣ���λΪHz��
*  �������أ���
*  �޸�ʱ�䣺2012-2-14
*  ��    ע��ͬһ��FTM��Ƶ����һ���ģ���3��FTM�����������3����ͬƵ��
             ��48Mbus�� ���6Hz ps = 128��Ƶ  mod = 65535 
                        ���24M ��ʱmod = 1;            
*************************************************************************/
void FTM_init(FTMn ftmn,u32 freq)                   //����FTM��Ƶ��
{
    u32 clk_hz = (bus_clk_khz*1000);                //busƵ��
    u32 mod;
    u8 sc_ps;

    ASSERT( ftmn==FTM0 ||ftmn==FTM1 || ftmn==FTM2 ); 
    //�ö��Լ�� Ƶ�� �Ƿ����� ,Ƶ�ʱ���С��ʱ�Ӷ���֮һ  >>7>>16 ���Ϊ����/65535/128
    ASSERT_RST( (freq <= (clk_hz/2) && freq >(clk_hz>>23)),"FTMƵ�����ô���" );

    /*       ����Ƶ������        */
    mod= (clk_hz>>16 )/freq ;
    for(sc_ps=0;(mod>>sc_ps)>=1;sc_ps++);           //��sc_ps����Сֵ
    mod=(clk_hz>>sc_ps)/freq - 1;
    
    ASSERT( sc_ps < 8);                             //�ö��Լ�⣬��֤ps���Ϊ7        

    switch(ftmn)
    {
    case FTM0:
        SIM_SCGC6|=SIM_SCGC6_FTM0_MASK;             //ʹ��FTM0ʱ��
        break;
    case FTM1:
        SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;            //ʹ��FTM1ʱ��
        break;
    case FTM2:
        SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;            //ʹ��FTM2ʱ��
        break;
    default:
        break;
    }
        
    FTM_CNT_REG(FTMx[ftmn])   =0;  
    FTM_MOD_REG(FTMx[ftmn])   = FTM_MOD_MOD(mod);  //Modulo valueģ��, EPWM������Ϊ ��MOD - CNTIN + 0x0001
    FTM_CNTIN_REG(FTMx[ftmn]) =0;                  //Counter Initial Value ��������ʼ��ֵ
    
    /******************** ����ʱ�Ӻͷ�Ƶ ********************/
    //SC  bit7:TOF Timer Overflow Flag
    FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_TOF_MASK;
    //bit5:CPWMS  0 FTM counter operates in up counting mode.
                //1 FTM counter operates in up-down counting mode.
    FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_CPWMS_MASK;
    FTM_SC_REG(FTMx[ftmn])   |= (FTM_SC_PS(sc_ps) | FTM_SC_CLKS(1));  //û��ʹ������ж�
    //FTM_CnV_REG(FTMx[ftmn],ch)= 0;                // Channel (n) Value  �����������ȣ�(CnV - CNTIN).
}

/*************************************************************************
*  �������ƣ�FTM_PWM_init
*  ����˵������ʼ��FTM��PWM���ܲ�����Ƶ�ʡ�ռ�ձȡ�����ͨ�����ռ�ձȡ�
*  ����˵����FTMn        ģ��ţ�FTM0��  FTM1��  FTM2��
*            CHn         ͨ���ţ�CH0~CH7��
*            freq        Ƶ�ʣ���λΪHz��
*            duty        ռ�ձ�
*  �������أ���
*  �޸�ʱ�䣺2012-2-14
*  ��    ע��ͬһ��FTM����ͨ����PWMƵ����һ���ģ���3��FTM�����������3����ͬƵ��PWM
*             ͨ��ռ�ձ�,ռ�ձ�Ϊ ��duty * ���ȣ� % ��
*             ��� FTM_PRECISON ����Ϊ 1000 ��duty = 100 ��
*             ��ռ�ձ� 100*0.1%=10%
*************************************************************************/
void FTM_PWM_init(FTMn ftmn,CHn ch,u32 freq,u32 duty)
{      	
    u32 clk_hz = (bus_clk_khz*1000);              //busƵ��
    u32 mod;
    u8 sc_ps;
    u32 cv;

    ASSERT( (ftmn==FTM0) || ( (ftmn==FTM1 || ftmn==FTM2 ) &&(ch<=CH1)) );   //��鴫�ݽ�����ͨ���Ƿ���ȷ
    
    //�ö��Լ�� Ƶ�� �Ƿ����� ,Ƶ�ʱ���С��ʱ�Ӷ���֮һ  >>7>>16 ���Ϊ����/65535/128
    ASSERT_RST( (freq <= (clk_hz/2) && freq >(clk_hz>>23)),"FTMƵ�����ô���" );
    
    /*       ����Ƶ������        */
    mod= (clk_hz>>16 )/freq;
    for(sc_ps=0;(mod>>sc_ps)>=1;sc_ps++);         //��sc_ps����Сֵ
    mod=(clk_hz>>sc_ps)/freq - 1;                 //�����Ƶ��modС��65535

    cv = (duty*(mod-0+1))/FTM_PRECISON;           //EPWM������ ��MOD - CNTIN + 0x0001   (CNTIN ��Ϊ0)
                                                  //�����ȣ�CnV - CNTIN
                                                  //FTM_PRECISON �Ǿ���

    /******************* ����ʱ�� �� ����IO��*******************/
    //ע�����������Ȼ����������ʱ��ɾ���ܶ�û�õĲ��֣���Ӱ���ٶ�
    switch(ftmn)
    {
    case FTM0:
        SIM_SCGC6|=SIM_SCGC6_FTM0_MASK;                             //ʹ��FTM0ʱ��
        switch(ch)
        {
        case CH0:
            if(FTM0_CH0==PTC1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 1) = PORT_PCR_MUX(4);  // PTC1
            }
            /*������ʹ��PTA3
            else if(FTM0_CH0==PTA3)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 3) = PORT_PCR_MUX(3);  // PTA3
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH5:
            if(FTM0_CH5==PTD5)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 5) = PORT_PCR_MUX(4);  // PTD5
            }
            /*������ʹ��PTA0
            else if(FTM0_CH5==PTA0)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTA0
            }
            */
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH6:
            if(FTM0_CH6==PTD6)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 6) = PORT_PCR_MUX(4);  // PTD6
            }
            /*������ʹ��PTA1
            else if(FTM0_CH6==PTA1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTA1
            }
            */
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH7:
            if(FTM0_CH7==PTD7)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 7) = PORT_PCR_MUX(4);  // PTD7
            }
            /*������ʹ��PTA2
            else if(FTM0_CH7==PTA2)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 2) = PORT_PCR_MUX(3);  // PTA2
            }
            */
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;
        default:
            return;
        }
        break;

  case FTM1:
        SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                             //ʹ��FTM1ʱ��
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        default:
            return;
        }
        break;
  case FTM2:
        SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //ʹ��FTM2ʱ��
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        default:
            return;
        }
        break;
  default:
        break;
    }
    /******************** ѡ�����ģʽΪ ���ض���PWM *******************/
    //ͨ��״̬���ƣ�����ģʽ��ѡ�� ���ػ��ƽ
    FTM_CnSC_REG(FTMx[ftmn],ch) &= ~FTM_CnSC_ELSA_MASK;
    FTM_CnSC_REG(FTMx[ftmn],ch) = FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;
    //MSnB:MSnA = 1x
    // ELSnB:ELSnA = 10   High-true pulses  (clear Output on match)
    // ELSnB:ELSnA = 11   Low-true pulses   (set Output on match)
    // Edge-aligned PWM  ���ض���PWM��   ��k16 reference manual.pdf��  P944  ����  ��K60P144M100SF2RM.pdf��P1001

    FTM_CNT_REG(FTMx[ftmn])   = 0;     
    FTM_MOD_REG(FTMx[ftmn])   = FTM_MOD_MOD(mod);                                                     //Modulo valueģ��, EPWM������Ϊ ��MOD - CNTIN + 0x0001
    FTM_CNTIN_REG(FTMx[ftmn]) = 0;                                                       //Counter Initial Value ��������ʼ��ֵ
    FTM_CnV_REG(FTMx[ftmn],ch)= FTM_CnV_VAL(cv);                                                      // Channel (n) Value  �����������ȣ�(CnV - CNTIN).
 
    /******************** ����ʱ�Ӻͷ�Ƶ ********************/
    FTM_SC_REG(FTMx[ftmn])   |= (FTM_SC_PS(sc_ps) | FTM_SC_CLKS(1));  //û��ʹ������ж�
    FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_CPWMS_MASK;                                                  
                                                       //��������ֻ�е�16λ����
    /*
    FTM_SC_CPWMS_MASK��Center-aligned PWM Select ���Ķ���PWMѡ��
      0    FTM counter operates in up counting mode.      ���ϼ���
      1    FTM counter operates in up-down counting mode. ���¼���

    FTM_SC_PS��Prescale Factor Selection Ԥ��Ƶ����ѡ��
                           | 
      000    Divide by 1   |      
      001    Divide by 2   |    
      010    Divide by 4   |    
      011    Divide by 8   |    
      100    Divide by 16  |    
      101    Divide by 32  |   
      110    Divide by 64  |
      111    Divide by 128 |

    FTM_SC_CLKS��Clock Source Selection ʱ��Դѡ��
      00    No clock selected (This in effect disables the FTM counter.)
      01    System clock
      10    Fixed frequency clock
      11    External clock
  */
}
/*************************************************************************
*  �������ƣ�FTM_PWM_Duty
*  ����˵��������ͨ��ռ�ձ�
*  ����˵����FTMn        ģ��ţ�FTM0��  FTM1��  FTM2��
*            CHn         ͨ���ţ�CH0~CH7��
*            duty        ռ�ձ�
*  �������أ���
*  �޸�ʱ�䣺2012-2-14
*  ��    ע������ͨ��ռ�ձ�,ռ�ձ�Ϊ ��duty * ���ȣ� % ��
*             ��� FTM_PRECISON ����Ϊ 1000 ��duty = 100 ��
*             ��ռ�ձ� 100*0.1%=10%
*************************************************************************/
void FTM_PWM_Duty(FTMn ftmn,CHn ch, u32 duty)
{
    u32 cv;
    u32 mod;

    ASSERT( (ftmn==FTM0) || ( (ftmn==FTM1 || ftmn==FTM2 ) &&(ch<=CH1)) );   //��鴫�ݽ�����ͨ���Ƿ���ȷ
    ASSERT_RST(duty <= FTM_PRECISON,"����ռ�ձȳ���100%");                  //�ö��Լ�� ռ�ձ��Ƿ����

    //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
    mod = FTM_MOD_REG(FTMx[ftmn]);                                          //��ȡ MOD ��ֵ

    cv = (duty*(mod-0+1))/FTM_PRECISON;

    // ����FTMͨ��ֵ
    FTM_CnV_REG(FTMx[ftmn],ch) = cv;
}


/*************************************************************************
*  �������ƣ�FTM_PWM_freq
*  ����˵��������FTM��Ƶ��
*  ����˵����FTMn        ģ��ţ�FTM0��  FTM1��  FTM2��
*            freq        Ƶ�ʣ���λΪHz��
*  �������أ���
*  �޸�ʱ�䣺2012-2-14
*  ��    ע��ͬһ��FTM����ͨ����PWMƵ����һ���ģ���3��FTM�����������3����ͬƵ��PWM
*************************************************************************/
void FTM_PWM_freq(FTMn ftmn,u32 freq)               //����FTM��Ƶ��
{
    u32 clk_hz = (bus_clk_khz*1000);                //busƵ�� 
    u32 mod;
    u8 sc_ps;


    //�ö��Լ�� Ƶ�� �Ƿ����� ,Ƶ�ʱ���С��ʱ�Ӷ���֮һ  >>7>>16 ���Ϊ����/65535/128
    ASSERT_RST( (freq <= (clk_hz/2) && freq >(clk_hz>>23)),"FTMƵ�����ô���" );
    
    
    /*       ����Ƶ������        */
    mod= (clk_hz>>16 )/freq ;
    for(sc_ps=0;(mod>>sc_ps)>=1;sc_ps++);           //��sc_ps����Сֵ
    mod=(clk_hz>>sc_ps)/freq - 1;
    
    ASSERT( sc_ps < 8);                             //�ö��Լ�⣬��֤ps���Ϊ7        

    switch(ftmn)
    {
    case FTM0:
        SIM_SCGC6|=SIM_SCGC6_FTM0_MASK;                               //ʹ��FTM0ʱ��
    case FTM1:
        SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                               //ʹ��FTM1ʱ��
    case FTM2:
        SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                             //ʹ��FTM2ʱ��
    default:
        break;
    }
    
    FTM_CNT_REG(FTMx[ftmn])   =0;                                                       //��������ֻ�е�16λ����
    //FTM_CnV_REG(FTMx[ftmn],ch)= 0;                                                    // Channel (n) Value  �����������ȣ�(CnV - CNTIN).
    FTM_MOD_REG(FTMx[ftmn])   = FTM_MOD_MOD(mod);                                                    //Modulo valueģ��, EPWM������Ϊ ��MOD - CNTIN + 0x0001
    FTM_CNTIN_REG(FTMx[ftmn]) =0;
    
    while(!(mod == FTM_MOD_REG(FTMx[ftmn])));                         //�ȴ����³ɹ� 
   
    /******************** ����ʱ�Ӻͷ�Ƶ ********************/
    FTM_SC_REG(FTMx[ftmn])   |= (FTM_SC_PS(sc_ps) | FTM_SC_CLKS(1));  //û��ʹ������ж�
    FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_CPWMS_MASK; 
}


/*************************************************************************
*  �������ƣ�FTM_Input_init
*  ����˵�������벶׽��ʼ������
*  ����˵����FTMn        ģ��ţ�FTM0��  FTM1��  FTM2��
*            CHn         ͨ���ţ�CH0~CH7��
*            Input_cfg   ���벶׽���ã�Rising��Falling��Rising_or_Falling�������ز�׽���½��ز�׽�������ز�׽
*  �������أ���
*  �޸�ʱ�䣺2012-1-26
*  ��    ע��CH0~CH3����ʹ�ù�������δ����⹦��
*************************************************************************/
void FTM_Input_init(FTMn ftmn,CHn ch,Input_cfg cfg)
{
    ASSERT_RST( ((ftmn==FTM0) || ( (ftmn==FTM1 || ftmn==FTM2 ) &&(ch<=CH1)) ),"FTMͨ�����ô���");   //��鴫�ݽ�����ͨ���Ƿ���ȷ	

    /******************* ����ʱ�� �� ����IO��*******************/
    //ע�����������Ȼ����������ʱ��ɾ���ܶ�û�õĲ��֣���Ӱ���ٶ�
    switch(ftmn)
    {
    case FTM0:
        SIM_SCGC6|=SIM_SCGC6_FTM0_MASK;                             //ʹ��FTM0ʱ��
        switch(ch)
        {
        case CH0:
            if(FTM0_CH0==PTC1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 1) = PORT_PCR_MUX(4);  // PTC1
            }
            /*������ʹ��PTA3
            else if(FTM0_CH0==PTA3)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 3) = PORT_PCR_MUX(3);  // PTA3
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH5:
            if(FTM0_CH5==PTD5)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 5) = PORT_PCR_MUX(4);  // PTD5
            }
            /*������ʹ��PTA0
            else if(FTM0_CH5==PTA0)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTA0
            }
            */
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH6:
            if(FTM0_CH6==PTD6)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 6) = PORT_PCR_MUX(4);  // PTD6
            }
            /*������ʹ��PTA1
            else if(FTM0_CH6==PTA1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTA1
            }
            */
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH7:
            if(FTM0_CH7==PTD7)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 7) = PORT_PCR_MUX(4);  // PTD7
            }
            /*������ʹ��PTA2
            else if(FTM0_CH7==PTA2)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 2) = PORT_PCR_MUX(3);  // PTA2
            }
            */
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;
        default:
            return;
        }
        break;

  case FTM1:
        SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                             //ʹ��FTM1ʱ��
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
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
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        default:
            return;
        }
        break;
  case FTM2:
        SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //ʹ��FTM2ʱ��
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
                //PORT_PCR_REG(PORTB_BASE_PTR, 18) = (0|PORT_PCR_MUX(3)|0x10);  //����Դ�˲���
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
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
                PORT_PCR_REG(PORTB_BASE_PTR, 19) = (0|PORT_PCR_MUX(3)|0x10);  //����Դ�˲���
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        default:
            return;
        }
        break;
  default:
        break;
    }


    /******************* ����Ϊ���벶׽���� *******************/
    switch(cfg)
    {
    case Rising:    //�����ش���
        FTM_CnSC_REG(FTMx[ftmn],ch) |=  ( FTM_CnSC_ELSA_MASK  | FTM_CnSC_CHIE_MASK );                    //��1
        FTM_CnSC_REG(FTMx[ftmn],ch) &= ~( FTM_CnSC_ELSB_MASK  | FTM_CnSC_MSB_MASK | FTM_CnSC_MSA_MASK);  //��0
        break;

    case Falling:   //�½��ش���
        FTM_CnSC_REG(FTMx[ftmn],ch) |= (FTM_CnSC_ELSB_MASK  | FTM_CnSC_CHIE_MASK );                     //��1
        FTM_CnSC_REG(FTMx[ftmn],ch) &= ~( FTM_CnSC_ELSA_MASK | FTM_CnSC_MSB_MASK | FTM_CnSC_MSA_MASK);  //��0
        break;

    case Rising_or_Falling: //�����ء��½��ض�����
        FTM_CnSC_REG(FTMx[ftmn],ch) |=  ( FTM_CnSC_ELSB_MASK | FTM_CnSC_ELSA_MASK  | FTM_CnSC_CHIE_MASK ); //��1
        FTM_CnSC_REG(FTMx[ftmn],ch) &= ~( FTM_CnSC_MSB_MASK  | FTM_CnSC_MSA_MASK);  //��0
        break;
    }

    FTM_SC_REG(FTMx[ftmn]) = FTM_SC_CLKS(0x1);        //System clock

    FTM_MODE_REG(FTMx[ftmn]) |= FTM_MODE_WPDIS_MASK;
    FTM_COMBINE_REG(FTMx[ftmn])=0;
    FTM_MODE_REG(FTMx[ftmn]) &= ~FTM_MODE_FTMEN_MASK;
    FTM_CNTIN_REG(FTMx[ftmn])=0;

    FTM_STATUS_REG(FTMx[ftmn])=0x00;                  //���жϱ�־λ

    //�������벶׽�ж�
    enable_irq(62+ftmn);
}
/*************************************************************************
*  �������ƣ�FTM2_QUAD_DIR_init
*  ����˵������������ �������ģʽ��ʼ������
*  ����˵����FTMn        ģ��ţ�FTM1��  FTM2��
*  �������أ���
*  �޸�ʱ�䣺2012-1-26
*  ��    ע��
             ������ʹ�� A10 ��A11 ����������Ϊ��ת�������� A���B �����롣 
              B·���Ƽ���������  �ߵ�ƽʱ�������������
              A·��������
              ��B·Ĭ������
*************************************************************************/
void FTM_QUAD_DIR_init(FTMn ftmn)
{
    ASSERT_RST( (ftmn==FTM1 || ftmn==FTM2 ),"FTM�����������ͨ�����ô���");   //��鴫�ݽ�����ͨ���Ƿ���ȷ	
    
    switch(ftmn)
    {
      case FTM1:
        SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                             //ʹ��FTM1ʱ��
#if K60PIN == 144u        
        if(FTM1_CH0==PTA8 && FTM1_CH1==PTA9)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
            PORT_PCR_REG(PORTA_BASE_PTR, 8) = (0|PORT_PCR_MUX(6)|0x10);//�˲�    ����д���Ǽ�һ��IO�˲���
            PORT_PCR_REG(PORTA_BASE_PTR, 9) = (0|PORT_PCR_MUX(6)|0x13);//�˲�    ���5v�ź�ʱ�б�Ҫʹ��
        }
        else 
#endif          
        if(FTM1_CH0==PTA12 && FTM1_CH1==PTA13)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
            PORT_PCR_REG(PORTA_BASE_PTR, 12) = (0|PORT_PCR_MUX(7)|0x10);  // PTA12 //����ʹ��
            PORT_PCR_REG(PORTA_BASE_PTR, 13) = (0|PORT_PCR_MUX(7)|0x13);  // PTA13 //����ʹ��
        }
        else if(FTM1_CH0==PTB0 && FTM1_CH1==PTB1)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
            PORT_PCR_REG(PORTB_BASE_PTR, 0) = (0|PORT_PCR_MUX(6)|0x10);  // PTB0
            PORT_PCR_REG(PORTB_BASE_PTR, 1) = (0|PORT_PCR_MUX(6)|0x13);  // PTB1
        }
        else
        {
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
        }
        break;
        
    case FTM2:
        SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //ʹ��FTM2ʱ��
#if K60PIN == 144u         
        if(FTM2_CH0==PTA10 && FTM2_CH1==PTA11)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
            PORT_PCR_REG(PORTA_BASE_PTR, 10) = (0|PORT_PCR_MUX(6)|0x10);//�˲�  // PTA10
            PORT_PCR_REG(PORTA_BASE_PTR, 11) = (0|PORT_PCR_MUX(6)|0x13);//�˲�  // PTA11
        }
        else 
#endif        
        if(FTM2_CH0==PTB18 && FTM2_CH1==PTB19)
        {
            SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
            PORT_PCR_REG(PORTB_BASE_PTR, 18) = (0|PORT_PCR_MUX(6)|0x10);  // PTB18 //����ʹ��
            PORT_PCR_REG(PORTB_BASE_PTR, 19) = (0|PORT_PCR_MUX(6)|0x13);  // PTB19 //����ʹ��
        }
        else
        {   
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
        }
        break;
  default:
        break;
    }
    FTM_MODE_REG(FTMx[ftmn])    |= FTM_MODE_WPDIS_MASK;           //д������ֹ
    FTM_QDCTRL_REG(FTMx[ftmn])  |= FTM_QDCTRL_QUADMODE_MASK;       //AB��ͬʱȷ������ͼ���ֵ
    FTM_CNTIN_REG(FTMx[ftmn])    = 0;                             //FTM��������ʼֵΪ0
    FTM_MOD_REG(FTMx[ftmn])      = 0xFFFF;                        //FTM����������ֵΪ0xFFFF
    
    //FTM_FILTER_REG(FTMx[ftmn])  |= FTM_FILTER_CH0FVAL(0x1F);    CH0~CH3����ʹ�ù�����
    //FTM_FILTER_REG(FTMx[ftmn])  |= FTM_FILTER_CH1FVAL(0x1F);
    //�������˲�����ʱ����ʱ����Ӧ  ���˲���Ӧʱ��Ϊ 4+4*FILTER
    
     
    FTM_QDCTRL_REG(FTMx[ftmn])  |=FTM_QDCTRL_QUADEN_MASK;         //ʹ��FTMx��������ģʽ
    FTM_MODE_REG(FTMx[ftmn])    |= FTM_MODE_FTMEN_MASK;           //FTMxEN=1	
    FTM_CNT_REG(FTMx[ftmn])    = 0; 	
}

/*************************************************************************
*  �������ƣ�FTM2_init
*  ����˵������������ A���B�����ģʽ��ʼ������
*  ����˵����FTMn        ģ��ţ�FTM1��  FTM2��
*            *  �������أ���
*  �޸�ʱ�䣺2012-1-26
*  ��    ע��CH0~CH3����ʹ�ù�������δ����⹦��
             ������ʹ�� A10 ��A11 ����������Ϊ��ת�������� A���B �����롣 
*************************************************************************/
void FTM_QUAD_init(FTMn ftmn)
{
    ASSERT_RST( (ftmn==FTM1 || ftmn==FTM2 ),"FTM�����������ͨ�����ô���");   //��鴫�ݽ�����ͨ���Ƿ���ȷ	
    
    switch(ftmn)
    {
      case FTM1:
        SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                             //ʹ��FTM1ʱ��
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
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
        }
        break;
        
    case FTM2:
        SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //ʹ��FTM2ʱ��
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
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
        }
        break;
  default:
        break;
    }
    FTM_MODE_REG(FTMx[ftmn])    |= FTM_MODE_WPDIS_MASK;           //д������ֹ
    FTM_QDCTRL_REG(FTMx[ftmn])  &= ~FTM_QDCTRL_QUADMODE_MASK;     //AB ��������ģʽ
    FTM_CNTIN_REG(FTMx[ftmn])    = 0;                             //FTM��������ʼֵΪ0
    FTM_MOD_REG(FTMx[ftmn])      = 0xFFFF;                        //FTM��������ʼֵΪ0
   
    FTM_QDCTRL_REG(FTMx[ftmn])  |=FTM_QDCTRL_QUADEN_MASK;         //ʹ��FTM2��������ģʽ
    FTM_MODE_REG(FTMx[ftmn])    |= FTM_MODE_FTMEN_MASK;                             //FTM2EN=1	
    FTM_CNT_REG(FTMx[ftmn])    = 0; 	
}

/*
************************************************************************
*  �������ƣ�FTM_irq_EN
*  ����˵������FTM�ж�
*  ����˵����FTM       ģ��ţ�FTM0~FTM2��
*  �������أ���
*  �޸�ʱ�䣺2012-3-20
*  ��    ע��
************************************************************************
*/
void FTM_irq_EN(FTMn ftmn)
{
    //bit6:TOIE   0 Disable TOF interrupts. Use software polling.
                //1 Enable TOF interrupts. An interrupt is generated when TOF equals one.
    FTM_SC_REG(FTMx[ftmn])   |= FTM_SC_TOIE_MASK;     //����FTM�ж�
    enable_irq(ftmn+ 62);			      //���ж�
}


/*
************************************************************************
*  �������ƣ�FTM_irq_DIS
*  ����˵������FTM�ж�
*  ����˵����FTM       ģ��ţ�FTM0~FTM2��
*  �������أ���
*  �޸�ʱ�䣺2012-3-20
*  ��    ע��
************************************************************************
*/
void FTM_irq_DIS(FTMn ftmn)
{
    //bit6:TOIE   0 Disable TOF interrupts. Use software polling.
                //1 Enable TOF interrupts. An interrupt is generated when TOF equals one.
    FTM_SC_REG(FTMx[ftmn])   &= ~FTM_SC_TOIE_MASK;     //�ط�FTM�ж�
    disable_irq(ftmn+ 62);			       //���ж�
}



