ECHO OFF
CLS
:MENU
ECHO.
ECHO ================ SELECT DATACENTER ================
ECHO Press '1' to select datacenter 1
ECHO Press '2' to select datacenter 2
ECHO Press '3' to select datacenter 3
ECHO Press '4' to quit
ECHO.
SET /P M=Please make a selection then press ENTER:
IF %M%==1 GOTO DC1
IF %M%==2 GOTO DC2
IF %M%==3 GOTO DC3
IF %M%==4 GOTO EOF
:DC1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\shutdown_datacenter_1.ps1'"
GOTO MENU
:DC2
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\shutdown_datacenter_2.ps1'"
GOTO MENU
:DC3
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\shutdown_datacenter_3.ps1'"
GOTO MENU
:EOF
exit
