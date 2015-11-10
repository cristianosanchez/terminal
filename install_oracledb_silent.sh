#!/bin/bash


# A valid listener numeric port value, so that you can connect to Oracle Database XE
export ORACLE_LISTENER_PORT=1521

# A valid HTTP port numeric value for Oracle Application Express
export ORACLE_HTTP_PORT=8080

# A password value for the SYS and SYSTEM administrative user accounts
export ORACLE_PASSWORD=P@ssw0rd

# The SYS and SYSTEM password value again, to confirm it
export ORACLE_CONFIRM_PASSWORD=P@ssw0rd

# Yes (y) or no (n), to specify whether you want to start Oracle Database XE automatically when the computer starts
export ORACLE_DBENABLE=n
 
# rpm -ivh  /downloads/oracle-xe-11.2.0-1.0.x86_64 > /xe_logs/XEsilentinstall.log
sudo dpkg -i oracle-xe_11.2.0-2_amd64.deb > /xe_logs/XEsilentinstall.log

/etc/init.d/oracle-xe configure responseFIle=<location of xe.rsp> >> /xe_logs/XEsilentinstall.log
