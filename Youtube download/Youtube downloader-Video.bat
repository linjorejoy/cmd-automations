G:
cd G:\my works new\CMD Batch Files\Youtube download
@echo off
set /p id=Video link : 

youtube-dl -F %id%

@echo off

set /p form= which format do you want : 

youtube-dl -f %form% %id%