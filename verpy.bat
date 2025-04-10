@echo off
@REM 检测并创建 python 文件夹
if not exist python (
    mkdir python
    echo 创建 python 文件夹成功！
) else (
    echo 已存在 python 文件夹！
)

@REM 切换到 python 文件夹
cd python

@REM 设置要下载的 Python 版本和安装包链接
@REM 例如，这里以 Python 3.10.11 64位版本为例
set "PYTHON_VERSION=3.10.11"
set "PYTHON_FILE=python-%PYTHON_VERSION%-amd64.exe"
set "PYTHON_URL=https://www.python.org/ftp/python/%PYTHON_VERSION%/%PYTHON_FILE%"

echo 正在下载 Python %PYTHON_VERSION% 版本...
@REM 使用 PowerShell 的 Invoke-WebRequest 进行下载
powershell -Command "Invoke-WebRequest -Uri '%PYTHON_URL%' -OutFile '%PYTHON_FILE%'"

if exist "%PYTHON_FILE%" (
    echo Python %PYTHON_VERSION% 安装包下载完成，保存在当前目录：%cd%\%PYTHON_FILE%
) else (
    echo 下载失败，请检查网络连接及链接地址是否正确！
)

pause
