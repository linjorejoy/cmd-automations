echo off

@echo off
for /f "delims=" %%a in ('wmic OS Get localdatetime  ^| find "."') do set dt=%%a

set stamp2=%dt:~0,4%_%dt:~4,2%_%dt:~6,2%_%dt:~8,2%_%dt:~10,2%_%dt:~12,2%

echo Creating Folder : "%stamp2%"
cd "Output"
mkdir %stamp2%


cd "../Input Word Files"


for %%X in (*.doc) do cscript.exe //Nologo ../SaveAsPdf.js "%%X" "%stamp2%"

pause