:: �ر��ն˻���
@echo off

echo ��������Ҫʹ�õ�jdk�汾��6/7/8/11/17

set /p jdk=

if "%jdk%"=="6" (
    :: ����jdk��������
    setx JAVA_HOME "C:\Program Files\Java\jdk1.6.0_45" /m
    echo jdk6�����������������
) else if "%jdk%"=="7" (
    :: ����jdk��������
    setx JAVA_HOME "C:\Program Files\Java\jdk1.7.0_80" /m
    echo jdk7�����������������
) else if "%jdk%"=="8" (
    setx JAVA_HOME "C:\Program Files\Java\jdk1.8.0_92" /m
    echo jdk8�����������������
) else if "%jdk%"=="11" (
    setx JAVA_HOME "C:\Program Files\Java\jdk-11.0.13" /m
    echo jdk11�����������������
) else if "%jdk%"=="17" (
    setx JAVA_HOME "C:\Program Files\Java\jdk-17.0.1" /m
    echo jdk17�����������������
) else (
    echo �������룬���ֲ���
)


pause