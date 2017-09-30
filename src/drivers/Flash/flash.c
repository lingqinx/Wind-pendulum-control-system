/*
************************************************************************
*                北京邮电大学 K60 学习例程 
* 文件名 :[flash.c] 
* 描  述 ：flash驱动函数
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：flash驱动函数
* 备注	：从苏州大学例程修改而成
*     K60的程序Flash，每个扇区 2K
*	k60N512包含512K的程序Flash ， 即扇区总数为256 ，即扇区取值范围为 0~255
*	k60X256包含256K的程序Flash ， 即扇区总数为128 ，即扇区取值范围为 0~127
*	注意，扇区，请尽量用最后面的扇区，最前面的扇区，通常都是存放代码的。
*		有可能破坏了前面的代码！！！！
************************************************************************
*/


//包含头文件
#include "flash.h" 
#include "global.h"
#include "common.h"

uint32 FlashData[FLASH_BUFFER_MAX] = {0};

//Flash命令宏定义，内部使用
#define   RD1BLK    0x00   // 读整块Flash
#define   RD1SEC    0x01   // 读整个扇区
#define   PGMCHK    0x02   // 写入检查
#define   RDRSRC    0x03   // 读目标数据
#define   PGM4      0x06   // 写入长字
#define   ERSBLK    0x08   // 擦除整块Flash
#define   ERSSCR    0x09   // 擦除Flash扇区
#define   PGMSEC    0x0B   // 写入扇区
#define   RD1ALL    0x40   // 读所有的块
#define   RDONCE    0x41   // 只读一次
#define   PGMONCE   0x43   // 只写一次
#define   ERSALL    0x44   // 擦除所有块
#define   VFYKEY    0x45   // 验证后门访问钥匙
#define   PGMPART   0x80   // 写入分区
#define   SETRAM    0x81   // 设定FlexRAM功能


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
** 函数名称: void SetUserFlash(byte cho) 
** 功能描述: 将用户变量与falsh缓存关联
**  入  口 ：
**  出  口 ：
**  说  明 : 可以在这里把要存到flash中的变量与flash
             关联，最多32个int变量  
****************************************************/
void SetUserFlash(byte cho) 
{
     //将用户数据放回到flash缓冲区
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
         
     } //将flash缓冲区中数据放到到用户变量中
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
*  函数名称：flash_cmd_launch
*  功能说明：启动Flash命令
*  参数说明：无
*  函数返回：0-成功 1-失败
*  修改时间：2012-6-11    已测试
*  备    注：内部函数实现
*************************************************************************/
__RAMFUN static uint32 flash_cmd_launch(void)
{
    
    FTFL_FSTAT = 	(0
				  	|	FTFL_FSTAT_CCIF_MASK 		// 启动命令
					|	FTFL_FSTAT_ACCERR_MASK 		// 清除访问错误标志位
					| 	FTFL_FSTAT_FPVIOL_MASK		// 非法访问标志位
					);	
    									
    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// 等待命令完成

    // 检查错误标志
    if( FTFL_FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
        return 1 ; 				//执行命令出错
  
    return 0; 					//执行命令成功
}
/*************************************************************************
*  函数名称：flash_init
*  功能说明：初始化flash模块
*  参数说明：无
*  函数返回：无
*  修改时间：2012-6-11    已测试
*  备    注：外部接口函数
*************************************************************************/
__RAMFUN void flash_init(void)
{
	// 清除Flash预读取缓冲区
    FMC_PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;
    FMC_PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;
    
    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// 等待命令完成
    
    FTFL_FSTAT = (0
                |FTFL_FSTAT_ACCERR_MASK 		// 清除访问错误标志位
                |FTFL_FSTAT_FPVIOL_MASK		// 非法访问标志位
                );	
}


/*************************************************************************
*  函数名称：flash_erase_sector
*  功能说明：擦除指定flash扇区
*  参数说明：sectorNo：扇区号（K60N512实际使用0~255）
*  函数返回：函数执行执行状态：0=正常；非0=异常。
*  修改时间：2012-6-11    已测试
*  备    注：外部接口函数
*************************************************************************/
__RAMFUN uint8 flash_erase_sector(uint16 sectorNo)
{
    Dtype	addr;	
	addr.DW = (uint32)(sectorNo<<11);	//每个扇区2KB，所以扇区地址=扇区号*2K ，这里用 <<11 表示 *2*1024 
    
    //dest.word    = (uint32)(sectorNo<<11);	//每个扇区2KB，所以扇区地址=扇区号*2K ，这里用 <<11 表示 *2*1024 

    // 设置擦除命令
    FTFL_FCCOB0 = ERSSCR; // 擦除扇区命令
    
    // 设置目标地址
    FTFL_FCCOB1 = addr.B[2];
    FTFL_FCCOB2 = addr.B[1];
    FTFL_FCCOB3 = addr.B[0];
    
    // 执行命令序列
    if(1 == flash_cmd_launch())    //若执行命令出现错误
        return 1;     //擦除命令错误
   
    // 若擦除sector0时，则解锁设备
    if(sectorNo ==0)
    {
        // 写入4字节
        FTFL_FCCOB0 = PGM4; 
        // 设置目标地址
        FTFL_FCCOB1 = 0x00;
        FTFL_FCCOB2 = 0x04;
        FTFL_FCCOB3 = 0x0C;
        // 数据
        FTFL_FCCOB4 = 0xFF;
        FTFL_FCCOB5 = 0xFF;
        FTFL_FCCOB6 = 0xFF;
        FTFL_FCCOB7 = 0xFE;
        // 执行命令序列
        if(1 == flash_cmd_launch())  //若执行命令出现错误
            return 2;   //解锁命令错误
    }  
    
    return 0;  //成功返回
}
/*************************************************************************
*  函数名称：flash_write
*  功能说明：擦除指定flash扇区
*  参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
*            offset:写入扇区内部偏移地址（0~2043）     
*            data：源数据
*  函数返回：函数执行状态：0=正常；非0=异常。
*  修改时间：2012-6-11    已测试
*  备    注：flash写入操作
*************************************************************************/
__RAMFUN uint8 flash_write(uint16 sectorNo,uint16 offset,uint32 data)
{
    Dtype	addr;	
    Dtype	Data;
    
    ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
                                                                    //此处提示警告，但是安全的……
    ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
                                                                    //此处提示警告，但是安全的……
    
    addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
    Data.DW	= data;	
        
    FTFL_FCCOB0 = PGM4;				// 设置写入命令
    
    FTFL_FCCOB1 = addr.B[2];		// 设置目标地址
    FTFL_FCCOB2 = addr.B[1];
    FTFL_FCCOB3 = addr.B[0];
    
    
    FTFL_FCCOB4 = Data.B[3];        // 设置写入数据
    FTFL_FCCOB5 = Data.B[2];
    FTFL_FCCOB6 = Data.B[1];
    FTFL_FCCOB7 = Data.B[0];
    
    if(1 == flash_cmd_launch()) 	return 2;  //写入命令错误

    return 0;  //成功执行
}


/*************************************************************************
*  函数名称：flash_write_buf
*  功能说明：擦除指定flash扇区
*  参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
*            offset:写入扇区内部偏移地址（0~2043）     
*            cnt：写入字节数目（0~2043）
*            buf：源数据缓冲区首地址
*  函数返回：函数执行状态：0=正常；非0=异常。
*  修改时间：2012-6-11    已测试
*  备    注：flash写入操作
*************************************************************************/
__RAMFUN uint8 flash_write_buf(uint16 sectorNo,uint16 offset,uint16 cnt,uint8 buf[])
{
    uint32 size;
 
    Dtype	addr;	

    ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
                                                                    //此处提示警告，但是安全的……
    ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
                                                                    //此处提示警告，但是安全的……
    ASSERT((offset + cnt*4) <= 0x800);        //只能在当前块操作
									//此处提示警告，但是安全的……
	
    addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
	
    // 设置写入命令
    FTFL_FCCOB0 = PGM4;

    for(size=0; size<cnt; size+=4, addr.DW+=4, buf+=4)
    {
        
        FTFL_FCCOB1 = addr.B[2];						// 设置目标地址
        FTFL_FCCOB2 = addr.B[1];
        FTFL_FCCOB3 = addr.B[0];
 
        FTFL_FCCOB4 = buf[3];							// 拷贝数据
        FTFL_FCCOB5 = buf[2];
        FTFL_FCCOB6 = buf[1];
        FTFL_FCCOB7 = buf[0];
        
        if(1 == flash_cmd_launch()) 
            return 2;  									//写入命令错误
    }
    
    return 0;  //成功执行
}

/*************************************************************************
*  函数名称：flash_write_buf32
*  功能说明：擦除指定flash扇区
*  参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
*            offset:写入扇区内部偏移地址（0~2043）     
*            cnt：写入字节数目（0~2043）
*            buf：源数据缓冲区首地址
*  函数返回：函数执行状态：0=正常；非0=异常。
*  修改时间：2012-6-11    已测试
*  备    注：flash写入操作
*************************************************************************/
__RAMFUN uint8 flash_write_buf32(uint16 sectorNo,uint16 offset,uint16 cnt,uint32 buf[])
{
    uint32 size;
    Dtype	Data;
    Dtype	addr;	

    ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
                                                                    //此处提示警告，但是安全的……
    ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
                                                                    //此处提示警告，但是安全的……
    ASSERT((offset + cnt) <= 0x800);        //只能在当前块操作
                                                                    //此处提示警告，但是安全的……
	
    addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
    // 设置写入命令
    FTFL_FCCOB0 = PGM4;

    for(size=0; size<cnt; size+=1, addr.DW+=4)
    {
        Data.DW	= buf[size];	
        FTFL_FCCOB1 = addr.B[2];						// 设置目标地址
        FTFL_FCCOB2 = addr.B[1];
        FTFL_FCCOB3 = addr.B[0];

	FTFL_FCCOB4 = Data.B[3];        // 设置写入数据
	FTFL_FCCOB5 = Data.B[2];
	FTFL_FCCOB6 = Data.B[1];
	FTFL_FCCOB7 = Data.B[0];
        
        
        if(1 == flash_cmd_launch()) 
            return 2;  									//写入命令错误
    }
    
    return 0;  //成功执行
}

/***************************************************
** 函数名称: void FlashDataInit() 
** 功能描述: 初始化flash数据
**  入  口 ：
**  出  口 ：
**  说  明 : 如果flash中没有数据就把变量初始值写入，
             否则保持原有值不变量
             主要作用是单片机每一次下载程序后会把所
             有flash擦除，所以要写一次初始值
****************************************************/ 
void FlashDataInit() 
{
     uint8      i = 0;
     uint32	data32;
     
     //将用户数据放回到flash
     SetUserFlash(1); 
         
     for(i=0;i<FLASH_BUFFER_MAX;i++) 
     {
        data32 = flash_read(SECTOR_NUM,i*4,uint32);	//读取4字节
        if(data32 != 0xFFFFFFFF)//有数据
             FlashData[i] = data32;
     }
     flash_erase_sector(SECTOR_NUM);		//擦除扇区
     flash_write_buf32(SECTOR_NUM,0,FLASH_BUFFER_MAX,FlashData);
}
/***************************************************
** 函数名称: void ReadFlashData() 
** 功能描述: 读取flash中数据并写回到用户变量中
**  入  口 ：
**  出  口 ：
**  说  明 : 
****************************************************/
void ReadFlashData() 
{
     uint8      i = 0;
     uint32	data32;
     
     for(i=0;i<FLASH_BUFFER_MAX;i++) 
     {
        data32 = flash_read(SECTOR_NUM,i*4,uint32);	//读取4字节         
        FlashData[i] = data32;
     }
     //将flash缓冲区中数据放到到用户变量中
     SetUserFlash(0) ;
}

/***************************************************
** 函数名称: void WriteFlashData() 
** 功能描述: 把用户变量中数据写回到flash中
**  入  口 ：
**  出  口 ：
**  说  明 : 
****************************************************/
void WriteFlashData() 
{
     //将用户数据放回到flash
     SetUserFlash(1); 
     flash_erase_sector(SECTOR_NUM);		//擦除扇区
     flash_write_buf32(SECTOR_NUM,0,FLASH_BUFFER_MAX,FlashData);
}

//===========================example=================================================
/*
#define	SECTOR_NUM	127			//尽量用最后面的扇区，确保安全
void  main(void)
{
	uint32	data32;
	uint16	data16;
	uint8	data8;
	
	flash_init();										//初始化flash
	
	flash_erase_sector(SECTOR_NUM);						//擦除扇区
														//写入flash数据前，需要先擦除对应的扇区(不然数据会乱)      
        if( 0==flash_write(SECTOR_NUM,4,0x90ABCDEF) )		//写入数据到扇区，偏移地址为0，必须一次写入4字节													//if是用来检测是否写入成功，写入成功了就读取
	{
		data32 = 	flash_read(SECTOR_NUM,4,uint32);	//读取4字节
		uart0Printf("一次读取32位的数据为：0x%08X\n",data32);
		
		data16 =	flash_read(SECTOR_NUM,4,uint16);	//读取2字节
		uart0Printf("一次读取16位的数据为：0x%04X\n",data16);
		
		data8  =	flash_read(SECTOR_NUM,4,uint8);		//读取1字节
		uart0Printf("一次读取8位的数据为：0x%02X\n",data8);
                
                data8  =	flash_read(SECTOR_NUM,5,uint8);		//读取1字节
		uart0Printf("一次读取8位的数据为：0x%02X\n",data8);
                
                data8  =	flash_read(SECTOR_NUM,6,uint8);		//读取1字节
		uart0Printf("一次读取8位的数据为：0x%02X\n",data8);
                
                data8  =	flash_read(SECTOR_NUM,7,uint8);		//读取1字节
		uart0Printf("一次读取8位的数据为：0x%02X\n",data8);
	}
	
    while(1);
}
*/
//==========================================================================
