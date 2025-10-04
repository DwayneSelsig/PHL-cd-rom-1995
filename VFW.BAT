@echo off
REM https://github.com/DwayneSelsig/PHL-cd-rom-1995
REM === Anwendung der INI-Anpassungen für Video für Windows ===

copy VFW\WINDOWS\*.* D:\WINDOWS\ >nul
copy VFW\WINDOWS\SYSTEM\*.* D:\WINDOWS\SYSTEM\ >nul

REM -----------------------------------------
REM WIN.INI - add AVI association
REM -----------------------------------------
sed "/\[mci extensions\]/a avi=AVIVideo" D:\WINDOWS\WIN.INI > D:\WINDOWS\WIN.NEW
copy /Y D:\WINDOWS\WIN.NEW D:\WINDOWS\WIN.INI >nul
del D:\Windows\WIN.NEW

REM -----------------------------------------
REM SYSTEM.INI - add device driver
REM -----------------------------------------
REM sed "/\[386Enh\]/a device=dva.386" D:\WINDOWS\SYSTEM.INI > D:\WINDOWS\SYSTEM.NEW
REM copy /Y D:\WINDOWS\SYSTEM.NEW D:\WINDOWS\SYSTEM.INI >nul
REM del D:\Windows\SYSTEM.NEW

REM -----------------------------------------
REM SYSTEM.INI - Drivers section (video codecs)
REM -----------------------------------------
sed "/\[drivers\]/a VIDC.CVID=iccvid.drv" D:\WINDOWS\SYSTEM.INI > D:\WINDOWS\SYSTEM.NEW
copy /Y D:\WINDOWS\SYSTEM.NEW D:\WINDOWS\SYSTEM.INI >nul
del D:\Windows\SYSTEM.NEW

sed "/\[drivers\]/a VIDC.MSVC=msvidc.drv" D:\WINDOWS\SYSTEM.INI > D:\WINDOWS\SYSTEM.NEW
copy /Y D:\WINDOWS\SYSTEM.NEW D:\WINDOWS\SYSTEM.INI >nul
del D:\Windows\SYSTEM.NEW

sed "/\[drivers\]/a VIDC.IV31=indeov.drv" D:\WINDOWS\SYSTEM.INI > D:\WINDOWS\SYSTEM.NEW
copy /Y D:\WINDOWS\SYSTEM.NEW D:\WINDOWS\SYSTEM.INI >nul
del D:\Windows\SYSTEM.NEW

sed "/\[drivers\]/a VIDC.MRLE=MSRLE.drv" D:\WINDOWS\SYSTEM.INI > D:\WINDOWS\SYSTEM.NEW
copy /Y D:\WINDOWS\SYSTEM.NEW D:\WINDOWS\SYSTEM.INI >nul
del D:\Windows\SYSTEM.NEW

sed "/\[drivers\]/a VIDC.RT21=indeov.drv" D:\WINDOWS\SYSTEM.INI > D:\WINDOWS\SYSTEM.NEW
copy /Y D:\WINDOWS\SYSTEM.NEW D:\WINDOWS\SYSTEM.INI >nul
del D:\Windows\SYSTEM.NEW

sed "/\[drivers\]/a VIDC.YVU9=indeov.drv" D:\WINDOWS\SYSTEM.INI > D:\WINDOWS\SYSTEM.NEW
copy /Y D:\WINDOWS\SYSTEM.NEW D:\WINDOWS\SYSTEM.INI >nul
del D:\Windows\SYSTEM.NEW

REM -----------------------------------------
REM SYSTEM.INI - MCI section (AVI driver)
REM -----------------------------------------
sed "/\[mci\]/a AVIVideo=mciavi.drv" D:\WINDOWS\SYSTEM.INI > D:\WINDOWS\SYSTEM.NEW
copy /Y D:\WINDOWS\SYSTEM.NEW D:\WINDOWS\SYSTEM.INI >nul
del D:\Windows\SYSTEM.NEW

REM -----------------------------------------
REM SYSTEM.INI - Audio drivers
REM -----------------------------------------
sed "/\[drivers\]/a WaveMapper=msacm.drv" D:\WINDOWS\SYSTEM.INI > D:\WINDOWS\SYSTEM.NEW
copy /Y D:\WINDOWS\SYSTEM.NEW D:\WINDOWS\SYSTEM.INI >nul
del D:\Windows\SYSTEM.NEW

sed "/\[drivers\]/a MSACM.msadpcm=msadpcm.acm" D:\WINDOWS\SYSTEM.INI > D:\WINDOWS\SYSTEM.NEW
copy /Y D:\WINDOWS\SYSTEM.NEW D:\WINDOWS\SYSTEM.INI >nul
del D:\Windows\SYSTEM.NEW

sed "/\[drivers\]/a MSACM.imaadpcm=imaadpcm.acm" D:\WINDOWS\SYSTEM.INI > D:\WINDOWS\SYSTEM.NEW
copy /Y D:\WINDOWS\SYSTEM.NEW D:\WINDOWS\SYSTEM.INI >nul
del D:\Windows\SYSTEM.NEW

REM -----------------------------------------
REM CONTROL.INI - Driver descriptions
REM -----------------------------------------
sed "/\[drivers.desc\]/a msacm.drv=Microsoft Sound Mapper V2.00" D:\WINDOWS\CONTROL.INI > D:\WINDOWS\CONTROL.NEW
copy /Y D:\WINDOWS\CONTROL.NEW D:\WINDOWS\CONTROL.INI >nul
del D:\Windows\CONTROL.NEW

sed "/\[drivers.desc\]/a msadpcm.acm=Microsoft ADPCM Codec V2.00" D:\WINDOWS\CONTROL.INI > D:\WINDOWS\CONTROL.NEW
copy /Y D:\WINDOWS\CONTROL.NEW D:\WINDOWS\CONTROL.INI >nul
del D:\Windows\CONTROL.NEW

sed "/\[drivers.desc\]/a imaadpcm.acm=Microsoft IMA ADPCM Codec V2.00" D:\WINDOWS\CONTROL.INI > D:\WINDOWS\CONTROL.NEW
copy /Y D:\WINDOWS\CONTROL.NEW D:\WINDOWS\CONTROL.INI >nul
del D:\Windows\CONTROL.NEW

