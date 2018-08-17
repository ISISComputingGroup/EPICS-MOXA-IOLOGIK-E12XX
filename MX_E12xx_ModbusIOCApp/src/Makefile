TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = MX_E12xx_ModbusIOC
# MX_E12xx_ModbusIOC.dbd will be created and installed
DBD += MX_E12xx_ModbusIOC.dbd

DB_INSTALLS += $(ASYN)/db/asynRecord.db

# MX_E12xx_ModbusIOC.dbd will be made up from these files:
MX_E12xx_ModbusIOC_DBD += base.dbd

# Include dbd files from all support applications:
MX_E12xx_ModbusIOC_DBD += asyn.dbd
MX_E12xx_ModbusIOC_DBD += drvAsynIPPort.dbd
MX_E12xx_ModbusIOC_DBD += modbusSupport.dbd

# Add all the support libraries needed by this IOC
MX_E12xx_ModbusIOC_LIBS += asyn
MX_E12xx_ModbusIOC_LIBS += modbus

# MX_E12xx_ModbusIOC_registerRecordDeviceDriver.cpp derives from MX_E12xx_ModbusIOC.dbd
MX_E12xx_ModbusIOC_SRCS += MX_E12xx_ModbusIOC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
MX_E12xx_ModbusIOC_SRCS_DEFAULT += MX_E12xx_ModbusIOCMain.cpp
MX_E12xx_ModbusIOC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#MX_E12xx_ModbusIOC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
MX_E12xx_ModbusIOC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

