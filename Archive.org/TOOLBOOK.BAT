@echo off
REM https://github.com/DwayneSelsig/PHL-cd-rom-1995
REM === Asymetrix ToolBook wird installiert ===

copy ASYM\WINDOWS\*.* D:\WINDOWS\ >nul

MD D:\WINDOWS\ASYM >nul
MD D:\WINDOWS\ASYM\RUNTIME >nul

copy ASYM\WINDOWS\ASYM\RUNTIME\*.* D:\WINDOWS\ASYM\RUNTIME\ >nul

sed "/\[Extensions\]/a TBK=D:\WINDOWS\asym\runtime\TBLOAD.EXE .TBK" D:\WINDOWS\WIN.INI > D:\WINDOWS\WIN.NEW
copy /Y D:\WINDOWS\WIN.NEW D:\WINDOWS\WIN.INI >nul
del D:\Windows\WIN.NEW

