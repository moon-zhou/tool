@echo off

for /f "skip=3 tokens=4" %%i in ('sc query MySQL57') do set "zt=%%i" &goto :operation

:operation
if /i "%zt%"=="RUNNING" (
    echo �Ѿ�����Mysql���������У������Ѿ�ֹͣ����
    net stop MySQL57
	
	echo ֹͣ����Navicat
	taskkill /f /im navicat.exe
	
	echo ֹͣ����idea
	taskkill /f /im idea64.exe
) else (
    echo Mysql�������ڴ���ֹͣ״̬,����������
    net start MySQL57
	
	echo ����navicate
	start "" "D:\DevProgrm\PremiumSoft\Navicat Premium\navicat.exe"
	
	echo ����idea
	start "" "D:\DevProgrm\JetBrains\IntelliJ IDEA Community Edition 2019.2\bin\idea64.exe"
)

rem pause

set num=5
:countDown
if %num% equ 0 (goto:shutDos) else set /a num-=1
echo %num% ���ر�dos����
rem ping -n 2 127.0.1>nul 2>nul&cls
ping -n 2 127.1>nul
goto:countDown

:shutDos