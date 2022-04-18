@echo off

for /f "skip=3 tokens=4" %%i in ('sc query MySQL57') do set "zt=%%i" &goto :operation

:operation
if /i "%zt%"=="RUNNING" (
    echo 已经发现Mysql服务在运行，现在已经停止运行
    net stop MySQL57
	
	echo 停止运行Navicat
	taskkill /f /im navicat.exe
	
	echo 停止运行idea
	taskkill /f /im idea64.exe
) else (
    echo Mysql服务现在处理停止状态,将进行启动
    net start MySQL57
	
	echo 启动navicate
	start "" "D:\DevProgrm\PremiumSoft\Navicat Premium\navicat.exe"
	
	echo 启动idea
	start "" "D:\DevProgrm\JetBrains\IntelliJ IDEA Community Edition 2019.2\bin\idea64.exe"
)

rem pause

set num=5
:countDown
if %num% equ 0 (goto:shutDos) else set /a num-=1
echo %num% 秒后关闭dos窗口
rem ping -n 2 127.0.1>nul 2>nul&cls
ping -n 2 127.1>nul
goto:countDown

:shutDos