@echo off

pip install pyinstaller
pip install pytube3
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
pause
