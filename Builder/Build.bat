@echo off

:choice
set /P c=THIS WILL RESTART YOUR PC, ARE YOU SURE YOU WANT TO RUN THIS FILE? (Y/N)
if /I "%c%" EQU "Y" goto :Yes
if /I "%c%" EQU "N" goto :No
goto :choice

:Yes
cd C:/YTCOPY/Builder
pip install -r requirements.txt
pyinstaller main.py --onefile
copy dist\main.exe C:\YTCOPY
del dist\main.exe
rmdir dist
del /s /q build
rmdir build\main\localpycs
rmdir build\main
rmdir build
del main.spec
ren C:\YTCOPY\main.exe ytdownload.exe
setx path "%PATH%;C:\YTCOPY" /M
shutdown -r
exit

:No
exit
