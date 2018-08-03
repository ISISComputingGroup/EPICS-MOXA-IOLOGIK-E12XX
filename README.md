EPICS IOC which talks to MOXA ioLogik modules (E1200 series) using MODBUS/TCP. The IOC uses open-source SW developed by EPICS community (see licensing information on: http://aps.anl.gov/epics/license/index.php ; http://www.aps.anl.gov/bcda/synApps/license.php

IOC is built with standard EPICS-base 3.14.12.4 package. It links modbus v2.4 device support module as it is found in synApps v5.7 package (see MX_E12xx_ModbusIOCApp/src/Makefile).
File st.cmd configures modbus (asyn) interfaces to ioLogik E12xx module in a way described by modbus module documentation. Modbus registers of E12xx modules are listed in MOXA ioLogic User manual.
EPICS records which read Modbus registers are defined in MX_E12xx_ModbusIOCApp/Db/ioLogik_E12xx.substitutions file (one per register). Template definition in use comes from modbus module distribution.
Records with raw and analog values or digital I/O bits are available. Where supported by the module Watchdog is also included.

In CSS directory, a few Control System Studio GUI files can be found. 

Before compiling the IOC, modify configure/RELEASE file to match directory paths of your EPICS-base and support distribution.
Before running, modify st.cmd -- uncomment lines for a specific module. Mind to match an IP address of connected E1200 series module.

Supported modules list:
  * ioLogik E1214 (6xRelayDO, 6xDI)
  * ioLogik E1240 (8xAI)
  * ioLogik E1241 (4xAO)
  * ioLogik E1242 (4xAI, 4xDI, 4xDIO)

ioLogik E1260 (6x RTD) is supported by https://gitlab.com/LBCS-ELI-BL/epics-ioc-moxa-e1260_pub.git
