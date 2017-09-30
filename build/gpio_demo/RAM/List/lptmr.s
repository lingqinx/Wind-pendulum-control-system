///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:55:26 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\src\drivers\lptmr\lptmr.c                        /
//    Command line =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\src\drivers\lptmr\lptmr.c -lCN                   /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\RAM\List\ -lB                    /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\RAM\List\ -o                     /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\RAM\Obj\ --no_cse --no_unroll    /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "E:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\ -I                           /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\common\ -I             /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\cpu\ -I                /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\ -I            /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\gpio\ -I       /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\wdog\ -I       /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\mcg\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\uart\ -I       /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\lptmr\ -I      /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\fun\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\led\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\i2c\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\MMA845x\ -I    /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\motor\ -I      /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\pit\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\steer\ -I      /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\ftm\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\DIPswitch\ -I  /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\dma\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\platforms\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\projects\ -I           /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\projects\gpio_demo\    /
//                    -Ol                                                     /
//    List file    =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\RAM\List\lptmr.s                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME lptmr

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed
        EXTERN disable_irq
        EXTERN enable_irq

        PUBLIC lptmr_counter_clean
        PUBLIC lptmr_counter_init
        PUBLIC lptmr_irq_DIS
        PUBLIC lptmr_irq_EN
        PUBLIC time_delay_ms

// C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л���IO����\src\drivers\lptmr\lptmr.c
//    1 /*
//    2 ************************************************************************
//    3 *                �����ʵ��ѧ K60 ѧϰ����                                        
//    4 * �ļ��� :[lptmr.c] 
//    5 * ��  �� ��lptmr�����Ķ�ʱ����Ŀǰֻ��һ����ʱ����ʱ����
//    6 * ԭ��   ���ٷ�����
//    7 *��ƸĽ���snowwolf
//    8 *  Email ��snowwolf2012@qq.com
//    9 *�����£�2012-04-03
//   10 * ˵  �� ��
//   11 ***********************************************************************
//   12 */
//   13 
//   14 #include "common.h"
//   15 #include "lptmr.h"
//   16 #include "fun.h"
//   17 
//   18 
//   19 /*************************************************************************
//   20 *  �������ƣ�lptmr_counter_init
//   21 *  ����˵����LPT�ۼӲ�׽
//   22 *  ����˵����LPT0_ALTn      ����ܽź� ��ֻ���� LPT0_ALT1��LPT0_ALT2
//   23 *            count          �����жϵ��ۼӼ���ֵ
//   24 *            PrescaleValue  ��ʱ�˲�
//   25 *            LPT_CFG        ������ʽ
//   26 *  �������أ���
//   27 *  �޸�ʱ�䣺2012-3-14
//   28 *  ��    ע��
//   29 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 void lptmr_counter_init(LPT0_ALTn altn,u16 count,u8 PrescaleValue,LPT_CFG cfg)
//   31 {
lptmr_counter_init:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R7,R2
        MOVS     R6,R3
//   32 
//   33 	if(PrescaleValue > 0x0f)PrescaleValue=0x0f;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+16
        BCC.N    ??lptmr_counter_init_0
        MOVS     R7,#+15
//   34 
//   35 	//��������ܽ�
//   36         /* ���ⲿ������Ӳ�����ʹ��
//   37 	if(altn==LPT0_ALT1)
//   38 	{
//   39 		SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;  //�� PORTA ʱ��
//   40 		PORTA_PCR19=PORT_PCR_MUX(0x6);      //��PTA19��ʹ�� ALT6
//   41 	}
//   42 	else 
//   43         */
//   44         if(altn==LPT0_ALT2)
??lptmr_counter_init_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??lptmr_counter_init_1
//   45 	{
//   46 		SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;  //ʹ�� PORTC ʱ��
        LDR.N    R0,??DataTable4  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable4  ;; 0x40048038
        STR      R0,[R1, #+0]
//   47 		PORTC_PCR5=PORT_PCR_MUX(0x4);       //��PTC5��ʹ�� ALT4
        LDR.N    R0,??DataTable4_1  ;; 0x4004b014
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
        B.N      ??lptmr_counter_init_2
//   48 	}
//   49 	else                                    //�����ܷ����¼�
//   50 	{
//   51 		assert_failed(__FILE__, __LINE__);  //���ùܽ�����
??lptmr_counter_init_1:
        MOVS     R1,#+51
        LDR.N    R0,??DataTable4_2
        BL       assert_failed
//   52 	}
//   53 
//   54     /* ����ģ��ʱ�� */
//   55     SIM_SCGC5|=SIM_SCGC5_LPTIMER_MASK;      //ʹ��LPTģ��ʱ��
??lptmr_counter_init_2:
        LDR.N    R0,??DataTable4  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4  ;; 0x40048038
        STR      R0,[R1, #+0]
//   56 
//   57     /* ��״̬�Ĵ��� */
//   58     LPTMR0_CSR=0x00;                        //�ȹ���LPT��������������ʱ�ӷ�Ƶ��
        LDR.N    R0,??DataTable4_3  ;; 0x40040000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   59 
//   60     /* �����ۼӼ���ֵ  */
//   61     LPTMR_CMR_REG(LPTMR0_BASE_PTR)  =   LPTMR_CMR_COMPARE(count);                       //���ñȽ�ֵ
        LDR.N    R0,??DataTable4_4  ;; 0x40040008
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R0, #+0]
//   62 
//   63     /* ʱ��ѡ�� */
//   64     LPTMR_PSR_REG(LPTMR0_BASE_PTR)  =   LPTMR_PSR_PCS(0x1) | LPTMR_PSR_PBYP_MASK  |  LPTMR_PSR_PRESCALE(PrescaleValue);        //ʹ�� LPO clock �� bypass glitch filter
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+3
        ANDS     R0,R0,#0x78
        ORRS     R0,R0,#0x5
        LDR.N    R1,??DataTable4_5  ;; 0x40040004
        STR      R0,[R1, #+0]
//   65 	//                                                        ���������������˲�����2^n��ʱ�������ز�ʶ��
//   66 
//   67     /* �ܽ����á�ʹ���ж�  */
//   68     LPTMR_CSR_REG(LPTMR0_BASE_PTR)  =   LPTMR_CSR_TPS(altn)| LPTMR_CSR_TMS_MASK  | ( cfg ==LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  | LPTMR_CSR_TEN_MASK;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??lptmr_counter_init_3
        MOVS     R0,#+8
        B.N      ??lptmr_counter_init_4
??lptmr_counter_init_3:
        MOVS     R0,#+0
??lptmr_counter_init_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R1,R4,#+4
        ANDS     R1,R1,#0x30
        ORRS     R0,R0,R1
        ORRS     R0,R0,#0x3
        LDR.N    R1,??DataTable4_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//   69     //                                       ѡ������ܽ�        ѡ���������                                   �½���       ������           ʹ��LPT
//   70     // TFC = 0��������ֵ���ڱȽ�ֵʱ������ֵ��λ
//   71 }
        POP      {R0,R4-R7,PC}    ;; return
//   72 
//   73 /*************************************************************************
//   74 *  �������ƣ�lptmr_irq_EN
//   75 *  ����˵����lptmr��ʱ�ж�ʹ��
//   76 *  ����˵����
//   77 *  �������أ���
//   78 *  �޸�ʱ�䣺2012-3-24
//   79 *  ��    ע��
//   80 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void lptmr_irq_EN()
//   82 {
lptmr_irq_EN:
        PUSH     {R7,LR}
//   83      LPTMR_CSR_REG(LPTMR0_BASE_PTR) |= LPTMR_CSR_TIE_MASK;     //ʹ�� lptmr��ʱ��,�����ж�  
        LDR.N    R0,??DataTable4_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable4_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//   84      enable_irq(LPTMR_irq);	                //�����ŵ�IRQ�ж�	
        MOVS     R0,#+85
        BL       enable_irq
//   85 }
        POP      {R0,PC}          ;; return
//   86 
//   87 /*************************************************************************
//   88 *  �������ƣ�lptmr_irq_DIS
//   89 *  ����˵����lptmr��ʱ�жϹر�
//   90 *  ����˵����
//   91 *  �������أ���
//   92 *  �޸�ʱ�䣺2012-3-24
//   93 *  ��    ע��
//   94 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   95 void lptmr_irq_DIS()
//   96 {
lptmr_irq_DIS:
        PUSH     {R7,LR}
//   97      LPTMR_CSR_REG(LPTMR0_BASE_PTR) &= ~LPTMR_CSR_TIE_MASK;     //�� lptmr��ʱ��,�����ж�  
        LDR.N    R0,??DataTable4_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.N    R1,??DataTable4_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//   98      disable_irq(LPTMR_irq);	
        MOVS     R0,#+85
        BL       disable_irq
//   99 }
        POP      {R0,PC}          ;; return
//  100 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  101 void lptmr_counter_clean(void)
//  102 {
//  103     LPTMR_CSR_REG(LPTMR0_BASE_PTR)  &= ~LPTMR_CSR_TEN_MASK;     //����LPT��ʱ��ͻ��Զ����������ֵ
lptmr_counter_clean:
        LDR.N    R0,??DataTable4_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable4_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//  104     LPTMR_CSR_REG(LPTMR0_BASE_PTR)  |=LPTMR_CSR_TEN_MASK;
        LDR.N    R0,??DataTable4_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//  105 }
        BX       LR               ;; return
//  106 
//  107 
//  108 
//  109 /*************************************************************************
//  110 *  �������ƣ�time_delay_ms
//  111 *  ����˵������ʱ������ʹ�ö����Ķ�ʱ����ʱ��׼ȷ
//  112 *  ����˵����ms   ��ʱʱ�䣬��λΪms
//  113 *  �������أ���
//  114 *  �޸�ʱ�䣺2012-1-20
//  115 *  ��    ע���ٷ������Դ�       //ʹ���ⲿ���ٲ�Ҫʹ�����������Ӱ��Ĵ�������
//  116                                 //����ȷ��ʱ��delayms()(�������Ҳ��׼��)
//  117 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  118 void time_delay_ms(uint32 ms)
//  119 {
//  120     /* Make sure the clock to the LPTMR is enabled */
//  121     SIM_SCGC5|=SIM_SCGC5_LPTIMER_MASK;
time_delay_ms:
        LDR.N    R1,??DataTable4  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable4  ;; 0x40048038
        STR      R1,[R2, #+0]
//  122 
//  123     /* Set the compare value to the number of ms to delay */
//  124     LPTMR0_CMR = ms;
        LDR.N    R1,??DataTable4_4  ;; 0x40040008
        STR      R0,[R1, #+0]
//  125 
//  126     /* Set up LPTMR to use 1kHz LPO with no prescaler as its clock source */
//  127     LPTMR0_PSR = LPTMR_PSR_PCS(1)|LPTMR_PSR_PBYP_MASK;
        LDR.N    R0,??DataTable4_5  ;; 0x40040004
        MOVS     R1,#+5
        STR      R1,[R0, #+0]
//  128 
//  129     /* Start the timer */
//  130     LPTMR0_CSR |= LPTMR_CSR_TEN_MASK;
        LDR.N    R0,??DataTable4_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//  131 
//  132     /* Wait for counter to reach compare value */
//  133     while (!(LPTMR0_CSR & LPTMR_CSR_TCF_MASK))
??time_delay_ms_0:
        LDR.N    R0,??DataTable4_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??time_delay_ms_0
//  134     {
//  135       //uartPrintf("%d\n",LPTMR0_CNR);
//  136       //delayms(10);
//  137     }
//  138 
//  139     /* Clear Timer Compare Flag */
//  140     LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK;
        LDR.N    R0,??DataTable4_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable4_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//  141 
//  142     return;
        BX       LR               ;; return
//  143 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x4004b014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     `?<Constant "C:\\\\Users\\\\Administrato...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40040008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x40040004

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "C:\\\\Users\\\\Administrato...">`:
        DATA
        DC8 43H, 3AH, 5CH, 55H, 73H, 65H, 72H, 73H
        DC8 5CH, 41H, 64H, 6DH, 69H, 6EH, 69H, 73H
        DC8 74H, 72H, 61H, 74H, 6FH, 72H, 5CH, 44H
        DC8 65H, 73H, 6BH, 74H, 6FH, 70H, 5CH, 0D1H
        DC8 0EEH, 0CFH, 0F2H, 0BEH, 0FCH, 0B5H, 0C4H, 4BH
        DC8 36H, 30H, 0C4H, 0A3H, 0B0H, 0E5H, 5FH, 0D6H
        DC8 0BBH, 0D3H, 0D0H, 0BBH, 0F9H, 0B1H, 0BEH, 49H
        DC8 4FH, 0B2H, 0D9H, 0D7H, 0F7H, 5CH, 73H, 72H
        DC8 63H, 5CH, 64H, 72H, 69H, 76H, 65H, 72H
        DC8 73H, 5CH, 6CH, 70H, 74H, 6DH, 72H, 5CH
        DC8 6CH, 70H, 74H, 6DH, 72H, 2EH, 63H, 0

        END
//  144 
//  145 
//  146 
// 
//  88 bytes in section .rodata
// 276 bytes in section .text
// 
// 276 bytes of CODE  memory
//  88 bytes of CONST memory
//
//Errors: none
//Warnings: none
