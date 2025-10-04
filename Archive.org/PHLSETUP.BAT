@echo off
echo.
echo.
echo.
echo By Dwayne Selsig
echo More info: https://github.com/DwayneSelsig/PHL-cd-rom-1995
echo.
echo =======================
echo === Bitte warten... ===
echo =======================
echo.
echo Daten werden von der CD-ROM gelesen...
echo.

copy d:\iniback\*.* d:\windows\ >nul
path=%path%;c:\;d:\windows\;d:\;e:\;d:\windows\asym\runtime\
setini D:\WINDOWS\SYSTEM.INI boot shell e:\PHL\PHL_8.EXE

c:
call VFW.BAT
call TOOLBOOK.BAT
call MOUNTCD.BAT

win E:\PHL\PHL_8.EXE
