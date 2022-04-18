:: 关闭终端回显
@echo off

echo 请输入需要使用的jdk版本，6/7/8/11/17

set /p jdk=

if "%jdk%"=="6" (
    :: 设置jdk环境变量
    setx JAVA_HOME "C:\Program Files\Java\jdk1.6.0_45" /m
    echo jdk6环境变量设置已完成
) else if "%jdk%"=="7" (
    :: 设置jdk环境变量
    setx JAVA_HOME "C:\Program Files\Java\jdk1.7.0_80" /m
    echo jdk7环境变量设置已完成
) else if "%jdk%"=="8" (
    setx JAVA_HOME "C:\Program Files\Java\jdk1.8.0_92" /m
    echo jdk8环境变量设置已完成
) else if "%jdk%"=="11" (
    setx JAVA_HOME "C:\Program Files\Java\jdk-11.0.13" /m
    echo jdk11环境变量设置已完成
) else if "%jdk%"=="17" (
    setx JAVA_HOME "C:\Program Files\Java\jdk-17.0.1" /m
    echo jdk17环境变量设置已完成
) else (
    echo 错误输入，保持不变
)


pause