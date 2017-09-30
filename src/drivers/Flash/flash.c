/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ���� 
* �ļ��� :[flash.c] 
* ��  �� ��flash��������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� ��flash��������
* ��ע	�������ݴ�ѧ�����޸Ķ���
*     K60�ĳ���Flash��ÿ������ 2K
*	k60N512����512K�ĳ���Flash �� ����������Ϊ256 ��������ȡֵ��ΧΪ 0~255
*	k60X256����256K�ĳ���Flash �� ����������Ϊ128 ��������ȡֵ��ΧΪ 0~127
*	ע�⣬�������뾡������������������ǰ���������ͨ�����Ǵ�Ŵ���ġ�
*		�п����ƻ���ǰ��Ĵ��룡������
************************************************************************
*/


//����ͷ�ļ�
#include "flash.h" 
#include "global.h"
#include "common.h"

uint32 FlashData[FLASH_BUFFER_MAX] = {0};

//Flash����궨�壬�ڲ�ʹ��
#define   RD1BLK    0x00   // ������Flash
#define   RD1SEC    0x01   // ����������
#define   PGMCHK    0x02   // д����
#define   RDRSRC    0x03   // ��Ŀ������
#define   PGM4      0x06   // д�볤��
#define   ERSBLK    0x08   // ��������Flash
#define   ERSSCR    0x09   // ����Flash����
#define   PGMSEC    0x0B   // д������
#define   RD1ALL    0x40   // �����еĿ�
#define   RDONCE    0x41   // ֻ��һ��
#define   PGMONCE   0x43   // ֻдһ��
#define   ERSALL    0x44   // �������п�
#define   VFYKEY    0x45   // ��֤���ŷ���Կ��
#define   PGMPART   0x80   // д�����
#define   SETRAM    0x81   // �趨FlexRAM����


#define VAR00  time
#define VAR01  speed_duty
#define VAR02  steer_dp
#define VAR03  steer_dd
#define VAR04  line_first
#define VAR05  line_second
#define VAR06  line_third
#define VAR07  line_fourth
#define VAR08  k_1
#define VAR09  k_2
#define VAR10  k_3
#define VAR11  k_4

void FlashDataInit() ;
void ReadFlashData() ;
/***************************************************
** ��������: void SetUserFlash(byte cho) 
** ��������: ���û�������falsh�������
**  ��  �� ��
**  ��  �� ��
**  ˵  �� : �����������Ҫ�浽flash�еı�����flash
             ���������32��int����  
****************************************************/
void SetUserFlash(byte cho) 
{
     //���û����ݷŻص�flash������
     if(cho == 1) 
     {
       
         FlashData[0]  = VAR00;
         FlashData[1]  = VAR01;
         FlashData[2]  = VAR02;
         FlashData[3]  = VAR03;
         FlashData[4]  = VAR04;
         FlashData[5]  = VAR05;
         FlashData[6]  = VAR06;
         FlashData[7]  = VAR07;
         FlashData[8]  = VAR08;
         FlashData[9]  = VAR09;
         FlashData[10] = VAR10;
         FlashData[11] = VAR11;
         
     } //��flash�����������ݷŵ����û�������
     else  if(cho == 0) 
     {
         VAR00 = FlashData[0];
         VAR01 = FlashData[1];
         VAR02 = FlashData[2];
         VAR03 = FlashData[3];
         VAR04 = FlashData[4];
         VAR05 = FlashData[5];
         VAR06 = FlashData[6];
         VAR07 = FlashData[7];
         VAR08 = FlashData[8];
         VAR09 = FlashData[9];
         VAR10 = FlashData[10];
         VAR11 = FlashData[11];
         
     }

}



/*************************************************************************
*  �������ƣ�flash_cmd_launch
*  ����˵��������Flash����
*  ����˵������
*  �������أ�0-�ɹ� 1-ʧ��
*  �޸�ʱ�䣺2012-6-11    �Ѳ���
*  ��    ע���ڲ�����ʵ��
*************************************************************************/
__RAMFUN static uint32 flash_cmd_launch(void)
{
    
    FTFL_FSTAT = 	(0
				  	|	FTFL_FSTAT_CCIF_MASK 		// ��������
					|	FTFL_FSTAT_ACCERR_MASK 		// ������ʴ����־λ
					| 	FTFL_FSTAT_FPVIOL_MASK		// �Ƿ����ʱ�־λ
					);	
    									
    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// �ȴ��������

    // �������־
    if( FTFL_FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
        return 1 ; 				//ִ���������
  
    return 0; 					//ִ������ɹ�
}
/*************************************************************************
*  �������ƣ�flash_init
*  ����˵������ʼ��flashģ��
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2012-6-11    �Ѳ���
*  ��    ע���ⲿ�ӿں���
*************************************************************************/
__RAMFUN void flash_init(void)
{
	// ���FlashԤ��ȡ������
    FMC_PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;
    FMC_PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;
    
    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// �ȴ��������
    
    FTFL_FSTAT = (0
                |FTFL_FSTAT_ACCERR_MASK 		// ������ʴ����־λ
                |FTFL_FSTAT_FPVIOL_MASK		// �Ƿ����ʱ�־λ
                );	
}


/*************************************************************************
*  �������ƣ�flash_erase_sector
*  ����˵��������ָ��flash����
*  ����˵����sectorNo�������ţ�K60N512ʵ��ʹ��0~255��
*  �������أ�����ִ��ִ��״̬��0=��������0=�쳣��
*  �޸�ʱ�䣺2012-6-11    �Ѳ���
*  ��    ע���ⲿ�ӿں���
*************************************************************************/
__RAMFUN uint8 flash_erase_sector(uint16 sectorNo)
{
    Dtype	addr;	
	addr.DW = (uint32)(sectorNo<<11);	//ÿ������2KB������������ַ=������*2K �������� <<11 ��ʾ *2*1024 
    
    //dest.word    = (uint32)(sectorNo<<11);	//ÿ������2KB������������ַ=������*2K �������� <<11 ��ʾ *2*1024 

    // ���ò�������
    FTFL_FCCOB0 = ERSSCR; // ������������
    
    // ����Ŀ���ַ
    FTFL_FCCOB1 = addr.B[2];
    FTFL_FCCOB2 = addr.B[1];
    FTFL_FCCOB3 = addr.B[0];
    
    // ִ����������
    if(1 == flash_cmd_launch())    //��ִ��������ִ���
        return 1;     //�����������
   
    // ������sector0ʱ��������豸
    if(sectorNo ==0)
    {
        // д��4�ֽ�
        FTFL_FCCOB0 = PGM4; 
        // ����Ŀ���ַ
        FTFL_FCCOB1 = 0x00;
        FTFL_FCCOB2 = 0x04;
        FTFL_FCCOB3 = 0x0C;
        // ����
        FTFL_FCCOB4 = 0xFF;
        FTFL_FCCOB5 = 0xFF;
        FTFL_FCCOB6 = 0xFF;
        FTFL_FCCOB7 = 0xFE;
        // ִ����������
        if(1 == flash_cmd_launch())  //��ִ��������ִ���
            return 2;   //�����������
    }  
    
    return 0;  //�ɹ�����
}
/*************************************************************************
*  �������ƣ�flash_write
*  ����˵��������ָ��flash����
*  ����˵����sectorNo��Ŀ�������� ��K60N512ʵ��ʹ��0~255��
*            offset:д�������ڲ�ƫ�Ƶ�ַ��0~2043��     
*            data��Դ����
*  �������أ�����ִ��״̬��0=��������0=�쳣��
*  �޸�ʱ�䣺2012-6-11    �Ѳ���
*  ��    ע��flashд�����
*************************************************************************/
__RAMFUN uint8 flash_write(uint16 sectorNo,uint16 offset,uint32 data)
{
    Dtype	addr;	
    Dtype	Data;
    
    ASSERT(offset%4 == 0);			//ƫ��������Ϊ4�ı���
                                                                    //�˴���ʾ���棬���ǰ�ȫ�ġ���
    ASSERT(offset <= 0x800);		//������СΪ2K����ƫ�������벻���� 0x800
                                                                    //�˴���ʾ���棬���ǰ�ȫ�ġ���
    
    addr.DW = (uint32)((sectorNo<<11) + offset);		//�����ַ
    Data.DW	= data;	
        
    FTFL_FCCOB0 = PGM4;				// ����д������
    
    FTFL_FCCOB1 = addr.B[2];		// ����Ŀ���ַ
    FTFL_FCCOB2 = addr.B[1];
    FTFL_FCCOB3 = addr.B[0];
    
    
    FTFL_FCCOB4 = Data.B[3];        // ����д������
    FTFL_FCCOB5 = Data.B[2];
    FTFL_FCCOB6 = Data.B[1];
    FTFL_FCCOB7 = Data.B[0];
    
    if(1 == flash_cmd_launch()) 	return 2;  //д���������

    return 0;  //�ɹ�ִ��
}


/*************************************************************************
*  �������ƣ�flash_write_buf
*  ����˵��������ָ��flash����
*  ����˵����sectorNo��Ŀ�������� ��K60N512ʵ��ʹ��0~255��
*            offset:д�������ڲ�ƫ�Ƶ�ַ��0~2043��     
*            cnt��д���ֽ���Ŀ��0~2043��
*            buf��Դ���ݻ������׵�ַ
*  �������أ�����ִ��״̬��0=��������0=�쳣��
*  �޸�ʱ�䣺2012-6-11    �Ѳ���
*  ��    ע��flashд�����
*************************************************************************/
__RAMFUN uint8 flash_write_buf(uint16 sectorNo,uint16 offset,uint16 cnt,uint8 buf[])
{
    uint32 size;
 
    Dtype	addr;	

    ASSERT(offset%4 == 0);			//ƫ��������Ϊ4�ı���
                                                                    //�˴���ʾ���棬���ǰ�ȫ�ġ���
    ASSERT(offset <= 0x800);		//������СΪ2K����ƫ�������벻���� 0x800
                                                                    //�˴���ʾ���棬���ǰ�ȫ�ġ���
    ASSERT((offset + cnt*4) <= 0x800);        //ֻ���ڵ�ǰ�����
									//�˴���ʾ���棬���ǰ�ȫ�ġ���
	
    addr.DW = (uint32)((sectorNo<<11) + offset);		//�����ַ
	
    // ����д������
    FTFL_FCCOB0 = PGM4;

    for(size=0; size<cnt; size+=4, addr.DW+=4, buf+=4)
    {
        
        FTFL_FCCOB1 = addr.B[2];						// ����Ŀ���ַ
        FTFL_FCCOB2 = addr.B[1];
        FTFL_FCCOB3 = addr.B[0];
 
        FTFL_FCCOB4 = buf[3];							// ��������
        FTFL_FCCOB5 = buf[2];
        FTFL_FCCOB6 = buf[1];
        FTFL_FCCOB7 = buf[0];
        
        if(1 == flash_cmd_launch()) 
            return 2;  									//д���������
    }
    
    return 0;  //�ɹ�ִ��
}

/*************************************************************************
*  �������ƣ�flash_write_buf32
*  ����˵��������ָ��flash����
*  ����˵����sectorNo��Ŀ�������� ��K60N512ʵ��ʹ��0~255��
*            offset:д�������ڲ�ƫ�Ƶ�ַ��0~2043��     
*            cnt��д���ֽ���Ŀ��0~2043��
*            buf��Դ���ݻ������׵�ַ
*  �������أ�����ִ��״̬��0=��������0=�쳣��
*  �޸�ʱ�䣺2012-6-11    �Ѳ���
*  ��    ע��flashд�����
*************************************************************************/
__RAMFUN uint8 flash_write_buf32(uint16 sectorNo,uint16 offset,uint16 cnt,uint32 buf[])
{
    uint32 size;
    Dtype	Data;
    Dtype	addr;	

    ASSERT(offset%4 == 0);			//ƫ��������Ϊ4�ı���
                                                                    //�˴���ʾ���棬���ǰ�ȫ�ġ���
    ASSERT(offset <= 0x800);		//������СΪ2K����ƫ�������벻���� 0x800
                                                                    //�˴���ʾ���棬���ǰ�ȫ�ġ���
    ASSERT((offset + cnt) <= 0x800);        //ֻ���ڵ�ǰ�����
                                                                    //�˴���ʾ���棬���ǰ�ȫ�ġ���
	
    addr.DW = (uint32)((sectorNo<<11) + offset);		//�����ַ
    // ����д������
    FTFL_FCCOB0 = PGM4;

    for(size=0; size<cnt; size+=1, addr.DW+=4)
    {
        Data.DW	= buf[size];	
        FTFL_FCCOB1 = addr.B[2];						// ����Ŀ���ַ
        FTFL_FCCOB2 = addr.B[1];
        FTFL_FCCOB3 = addr.B[0];

	FTFL_FCCOB4 = Data.B[3];        // ����д������
	FTFL_FCCOB5 = Data.B[2];
	FTFL_FCCOB6 = Data.B[1];
	FTFL_FCCOB7 = Data.B[0];
        
        
        if(1 == flash_cmd_launch()) 
            return 2;  									//д���������
    }
    
    return 0;  //�ɹ�ִ��
}

/***************************************************
** ��������: void FlashDataInit() 
** ��������: ��ʼ��flash����
**  ��  �� ��
**  ��  �� ��
**  ˵  �� : ���flash��û�����ݾͰѱ�����ʼֵд�룬
             ���򱣳�ԭ��ֵ������
             ��Ҫ�����ǵ�Ƭ��ÿһ�����س��������
             ��flash����������Ҫдһ�γ�ʼֵ
****************************************************/ 
void FlashDataInit() 
{
     uint8      i = 0;
     uint32	data32;
     
     //���û����ݷŻص�flash
     SetUserFlash(1); 
         
     for(i=0;i<FLASH_BUFFER_MAX;i++) 
     {
        data32 = flash_read(SECTOR_NUM,i*4,uint32);	//��ȡ4�ֽ�
        if(data32 != 0xFFFFFFFF)//������
             FlashData[i] = data32;
     }
     flash_erase_sector(SECTOR_NUM);		//��������
     flash_write_buf32(SECTOR_NUM,0,FLASH_BUFFER_MAX,FlashData);
}
/***************************************************
** ��������: void ReadFlashData() 
** ��������: ��ȡflash�����ݲ�д�ص��û�������
**  ��  �� ��
**  ��  �� ��
**  ˵  �� : 
****************************************************/
void ReadFlashData() 
{
     uint8      i = 0;
     uint32	data32;
     
     for(i=0;i<FLASH_BUFFER_MAX;i++) 
     {
        data32 = flash_read(SECTOR_NUM,i*4,uint32);	//��ȡ4�ֽ�         
        FlashData[i] = data32;
     }
     //��flash�����������ݷŵ����û�������
     SetUserFlash(0) ;
}

/***************************************************
** ��������: void WriteFlashData() 
** ��������: ���û�����������д�ص�flash��
**  ��  �� ��
**  ��  �� ��
**  ˵  �� : 
****************************************************/
void WriteFlashData() 
{
     //���û����ݷŻص�flash
     SetUserFlash(1); 
     flash_erase_sector(SECTOR_NUM);		//��������
     flash_write_buf32(SECTOR_NUM,0,FLASH_BUFFER_MAX,FlashData);
}

//===========================example=================================================
/*
#define	SECTOR_NUM	127			//������������������ȷ����ȫ
void  main(void)
{
	uint32	data32;
	uint16	data16;
	uint8	data8;
	
	flash_init();										//��ʼ��flash
	
	flash_erase_sector(SECTOR_NUM);						//��������
														//д��flash����ǰ����Ҫ�Ȳ�����Ӧ������(��Ȼ���ݻ���)      
        if( 0==flash_write(SECTOR_NUM,4,0x90ABCDEF) )		//д�����ݵ�������ƫ�Ƶ�ַΪ0������һ��д��4�ֽ�													//if����������Ƿ�д��ɹ���д��ɹ��˾Ͷ�ȡ
	{
		data32 = 	flash_read(SECTOR_NUM,4,uint32);	//��ȡ4�ֽ�
		uart0Printf("һ�ζ�ȡ32λ������Ϊ��0x%08X\n",data32);
		
		data16 =	flash_read(SECTOR_NUM,4,uint16);	//��ȡ2�ֽ�
		uart0Printf("һ�ζ�ȡ16λ������Ϊ��0x%04X\n",data16);
		
		data8  =	flash_read(SECTOR_NUM,4,uint8);		//��ȡ1�ֽ�
		uart0Printf("һ�ζ�ȡ8λ������Ϊ��0x%02X\n",data8);
                
                data8  =	flash_read(SECTOR_NUM,5,uint8);		//��ȡ1�ֽ�
		uart0Printf("һ�ζ�ȡ8λ������Ϊ��0x%02X\n",data8);
                
                data8  =	flash_read(SECTOR_NUM,6,uint8);		//��ȡ1�ֽ�
		uart0Printf("һ�ζ�ȡ8λ������Ϊ��0x%02X\n",data8);
                
                data8  =	flash_read(SECTOR_NUM,7,uint8);		//��ȡ1�ֽ�
		uart0Printf("һ�ζ�ȡ8λ������Ϊ��0x%02X\n",data8);
	}
	
    while(1);
}
*/
//==========================================================================
