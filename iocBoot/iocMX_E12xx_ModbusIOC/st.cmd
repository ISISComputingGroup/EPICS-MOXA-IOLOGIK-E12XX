#!../../bin/linux-x86_64/MX_E12xx_ModbusIOC

## You may have to change MX_E12xx_ModbusIOC to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/MX_E12xx_ModbusIOC.dbd"
MX_E12xx_ModbusIOC_registerRecordDeviceDriver pdbbase

cd ${TOP}/iocBoot/${IOC}

< startup.script
iocInit()
< startup.postscript

# has to wait for a second !
epicsThreadSleep 1
< startup.variables

dbl >MX_E12xx_ModbusIOC-PVs.txt

#
