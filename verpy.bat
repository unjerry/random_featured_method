@echo off
@REM ��Ⲣ���� python �ļ���
if not exist python (
    mkdir python
    echo ���� python �ļ��гɹ���
) else (
    echo �Ѵ��� python �ļ��У�
)

@REM �л��� python �ļ���
cd python

@REM ����Ҫ���ص� Python �汾�Ͱ�װ������
@REM ���磬������ Python 3.10.11 64λ�汾Ϊ��
set "PYTHON_VERSION=3.10.11"
set "PYTHON_FILE=python-%PYTHON_VERSION%-amd64.exe"
set "PYTHON_URL=https://www.python.org/ftp/python/%PYTHON_VERSION%/%PYTHON_FILE%"

echo �������� Python %PYTHON_VERSION% �汾...
@REM ʹ�� PowerShell �� Invoke-WebRequest ��������
powershell -Command "Invoke-WebRequest -Uri '%PYTHON_URL%' -OutFile '%PYTHON_FILE%'"

if exist "%PYTHON_FILE%" (
    echo Python %PYTHON_VERSION% ��װ��������ɣ������ڵ�ǰĿ¼��%cd%\%PYTHON_FILE%
) else (
    echo ����ʧ�ܣ������������Ӽ����ӵ�ַ�Ƿ���ȷ��
)

pause
