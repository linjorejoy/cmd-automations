G:
cd G:\my works new\CMD Batch Files\Youtube download
@echo off
set /p id=Video link : 
 
@echo Qualities available 
@echo F		Width 	x Height
@echo --------------------------------
@echo 144		256 	x 144
@echo 240		426 	x 240
@echo 360		640 	x 360
@echo 480		854 	x 480
@echo 720		1280 	x 720
@echo 1080		1920 	x 1080

set /p quality = which quality do you want : 
@echo off

youtube-dl -f 'bestvideo[height<=480]+bestaudio/best[height<=480]' %id%

youtube-dl -f 'best[height=240]' %id% 