/************************************************************************/
// File:            i2c.h												//
// Author:																//
// Purpose:                                                             //
//                                                                      //
/************************************************************************/

#ifndef I2C_H
#define I2C_H

#include "nrf_twi_mngr.h"

void i2cInit();
void i2cRecive(uint8_t device, uint8_t addr, uint8_t* data, uint8_t len);
void i2cSend(uint8_t device, uint8_t addr, uint8_t* data, uint8_t len);
void i2cSendNOADDR(uint8_t device,uint8_t* data,uint8_t len);
void i2cReciveNOADDR(uint8_t device, uint8_t* data, uint8_t len);
const nrf_twi_mngr_t* getTWIManagerAddress();
const nrf_drv_twi_config_t* getBusConfig();









#endif /* I2C.h */