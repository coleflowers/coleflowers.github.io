@echo off
rem echo "下载源码"
rem echo git clone https://github.com/bagder/curl.git
cd ./curl/winbuild
echo "设置编译环境"
call "vcvars32.bat path"
echo "开始编译"
nmake /f Makefile.vc mode=dll USE_SSSPI=no ENABLE_IDN=no
echo "编译完成"
pause
