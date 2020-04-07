
#include "bma2x2.h"
#include "bma2x2_support.h"
#include "nrf_twi_mngr.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_delay.h"
#include "i2c.h"
/************** I2C/SPI buffer length ******/
#define	I2C_BUFFER_LEN 8
#define SPI_BUFFER_LEN 5
#define BMA2x2_BUS_READ_WRITE_ARRAY_INDEX	1
#define BMA2x2_SPI_BUS_WRITE_CONTROL_BYTE	0x7F
#define BMA2x2_SPI_BUS_READ_CONTROL_BYTE	0x80



struct bma2x2_t bma2x2;

nrf_drv_twi_config_t const acc_twi_config = {
   .scl                = 6,
   .sda                = 7,
   .frequency          = NRF_DRV_TWI_FREQ_100K,
   .interrupt_priority = APP_IRQ_PRIORITY_LOWEST,
   .clear_bus_init     = false
};

void BMA2x2_delay_msek(u32 msek){
      nrf_delay_ms(msek);//rewrite to use FreeRTOS delay
}


s8 BMA2x2_I2C_bus_write(u8 dev_addr, u8 reg_addr, u8 *reg_data, u8 cnt)
{       /*
	s32 iError = BMA2x2_INIT_VALUE;
	u8 array[I2C_BUFFER_LEN];
	u8 stringpos = BMA2x2_INIT_VALUE;

	array[BMA2x2_INIT_VALUE] = reg_addr;
	for (stringpos = BMA2x2_INIT_VALUE; stringpos < cnt; stringpos++) {
		array[stringpos + BMA2x2_BUS_READ_WRITE_ARRAY_INDEX] =
		*(reg_data + stringpos);
	}
        */
        i2cSend(dev_addr,reg_addr,reg_data,cnt);
        return (s8)0;
        /*
        for (int count = 0; count<cnt; count++){
        uint8_t buffer[2];
        buffer[0]=reg_addr+count;
        buffer[1]=reg_data+count;
        nrf_twi_mngr_transfer_t const acc_transfer[] = {
		NRF_TWI_MNGR_WRITE(dev_addr,buffer, 1, 0),
	};
	
	if (nrf_twi_mngr_perform(getTWIManagerAddress(), getBusConfig(), acc_transfer, 1, NULL) != NRF_SUCCESS){
            NRF_LOG_WARNING("accwrite() failed!\n");
            return (s8) -1;}
        }/*
        	/*
	* Please take the below function as your reference for
	* write the data using I2C communication
	* "IERROR = I2C_WRITE_STRING(DEV_ADDR, ARRAY, CNT+1)"
	* add your I2C write function here
	* iError is an return value of I2C read function
	* Please select your valid return value
	* In the driver SUCCESS defined as 0
	* and FAILURE defined as -1
	* Note :
	* This is a full duplex operation,
	* The first read data is discarded, for that extra write operation
	* have to be initiated. For that cnt+1 operation
	* done in the I2C write string function
	*/
	return (s8)0;
}

s8 BMA2x2_I2C_bus_read(u8 dev_addr, u8 reg_addr, u8 *reg_data, u8 cnt)
{       i2cRecive(dev_addr,reg_addr,reg_data,cnt);
        return(s8)0;
/*
	s32 iError = BMA2x2_INIT_VALUE;
	u8 array[I2C_BUFFER_LEN] = {BMA2x2_INIT_VALUE};
	u8 stringpos = BMA2x2_INIT_VALUE;

	array[BMA2x2_INIT_VALUE] = reg_addr;
	for (stringpos = BMA2x2_INIT_VALUE; stringpos < cnt; stringpos++)
		*(reg_data + stringpos) = array[stringpos];

        */
	/* Please take the below function as your reference
	 * for read the data using I2C communication
	 * add your I2C rad function here.
	 * "IERROR = I2C_WRITE_READ_STRING(DEV_ADDR, ARRAY, ARRAY, 1, CNT)"
	 * iError is an return value of SPI write function
	 * Please select your valid return value
     * In the driver SUCCESS defined as 0
     * and FAILURE defined as -1
	 */
	/*
	nrf_twi_mngr_transfer_t const acc_transfer[] = {
		NRF_TWI_MNGR_WRITE(dev_addr, (reg_addr), 1, NRF_TWI_MNGR_NO_STOP),
		NRF_TWI_MNGR_READ(dev_addr, (reg_data), cnt, 0)
	};
	
	if (nrf_twi_mngr_perform(getTWIManagerAddress(), getBusConfig(), acc_transfer, 1, NULL) != NRF_SUCCESS){
          NRF_LOG_WARNING("accread() failed!\n");
          return (s8)-1;
        }
        
	return (s8)0;*/
}


s8 I2C_routine(void)
{
/*--------------------------------------------------------------------------*
 *  By using bma2x2 the following structure parameter can be accessed
 *	Bus write function pointer: BMA2x2_WR_FUNC_PTR
 *	Bus read function pointer: BMA2x2_RD_FUNC_PTR
 *	Delay function pointer: delay_msec
 *	I2C address: dev_addr
 *--------------------------------------------------------------------------*/
	bma2x2.bus_write = BMA2x2_I2C_bus_write;
	bma2x2.bus_read = BMA2x2_I2C_bus_read;
	bma2x2.delay_msec = BMA2x2_delay_msek;
	bma2x2.dev_addr = BMA2x2_I2C_ADDR1;

	return BMA2x2_INIT_VALUE;
}

s32 bma2x2_data_readout_template(void);

/*----------------------------------------------------------------------------*
*  V_BMA2x2RESOLUTION_u8R used for selecting the accelerometer resolution
 *	12 bit
 *	14 bit
 *	10 bit
*----------------------------------------------------------------------------*/
extern u8 V_BMA2x2RESOLUTION_u8R;
/* This function is an example for reading sensor data
 *	\param: None
 *	\return: communication result
 */
s32 bma2x2_data_readout_template(void)
{       //nrf_twi_mngr_init(getTWIManagerAddress(), &acc_twi_config); //init driver
	/*Local variables for reading accel x, y and z data*/
	s16	accel_x_s16, accel_y_s16, accel_z_s16 = BMA2x2_INIT_VALUE;

	/* bma2x2acc_data structure used to read accel xyz data*/
	struct bma2x2_accel_data sample_xyz;
	/* bma2x2acc_data_temp structure used to read
		accel xyz and temperature data*/
	struct bma2x2_accel_data_temp sample_xyzt;
	/* Local variable used to assign the bandwidth value*/
	u8 bw_value_u8 = BMA2x2_INIT_VALUE;
	/* Local variable used to set the bandwidth value*/
	u8 banwid = BMA2x2_INIT_VALUE;
	/* status of communication*/
	s32 com_rslt = ERROR;


/*********************** START INITIALIZATION ************************
  *	Based on the user need configure I2C or SPI interface.
  *	It is example code to explain how to use the bma2x2 API*/
	
	I2C_routine();
	
	com_rslt = bma2x2_init(&bma2x2);

/*	For initialization it is required to set the mode of
 *	the sensor as "NORMAL"
 *	NORMAL mode is set from the register 0x11 and 0x12
 *	0x11 -> bit 5,6,7 -> set value as 0
 *	0x12 -> bit 5,6 -> set value as 0
 *	data acquisition/read/write is possible in this mode
 *	by using the below API able to set the power mode as NORMAL
 *	For the Normal/standby/Low power 2 mode Idle time
		of at least 2us(micro seconds)
 *	required for read/write operations*/
	/* Set the power mode as NORMAL*/
	com_rslt += bma2x2_set_power_mode(BMA2x2_MODE_NORMAL);
/*	Note:
	* For the Suspend/Low power1 mode Idle time of
		at least 450us(micro seconds)
	* required for read/write operations*/

/************************* END INITIALIZATION *************************/

/*------------------------------------------------------------------------*
************************* START GET and SET FUNCTIONS DATA ****************
*---------------------------------------------------------------------------*/
	/* This API used to Write the bandwidth of the sensor input
	value have to be given
	bandwidth is set from the register 0x10 bits from 1 to 4*/
	bw_value_u8 = 0x08;/* set bandwidth of 7.81Hz*/
	com_rslt += bma2x2_set_bw(bw_value_u8);

	/* This API used to read back the written value of bandwidth*/
	com_rslt += bma2x2_get_bw(&banwid);
/*-----------------------------------------------------------------*
************************* END GET and SET FUNCTIONS ****************
*-------------------------------------------------------------------*/
/*------------------------------------------------------------------*
************************* START READ SENSOR DATA(X,Y and Z axis) ********
*---------------------------------------------------------------------*/
	/* Read the accel X data*/
	com_rslt += bma2x2_read_accel_x(&accel_x_s16);
	/* Read the accel Y data*/
	com_rslt += bma2x2_read_accel_y(&accel_y_s16);
	/* Read the accel Z data*/
	com_rslt += bma2x2_read_accel_z(&accel_z_s16);

	/* accessing the bma2x2acc_data parameter by using sample_xyz*/
	/* Read the accel XYZ data*/
	com_rslt += bma2x2_read_accel_xyz(&sample_xyz);

	/* accessing the bma2x2acc_data_temp parameter by using sample_xyzt*/
	/* Read the accel XYZT data*/
	com_rslt += bma2x2_read_accel_xyzt(&sample_xyzt);

/*--------------------------------------------------------------------*
************************* END READ SENSOR DATA(X,Y and Z axis) ************
*-------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------*
************************* START DE-INITIALIZATION ***********************
*-------------------------------------------------------------------------*/
/*	For de-initialization it is required to set the mode of
 *	the sensor as "DEEP SUSPEND"
 *	DEEP SUSPEND mode is set from the register 0x11
 *	0x11 -> bit 5 -> set value as 1
 *	the device reaches the lowest power consumption only
 *	interface selection is kept alive
 *	No data acquisition is performed
 *	by using the below API able to set the power mode as DEEPSUSPEND*/
 /* Set the power mode as DEEPSUSPEND*/
	com_rslt += bma2x2_set_power_mode(BMA2x2_MODE_DEEP_SUSPEND);
/*---------------------------------------------------------------------*
************************* END DE-INITIALIZATION **********************
*---------------------------------------------------------------------*/
return com_rslt;
}

