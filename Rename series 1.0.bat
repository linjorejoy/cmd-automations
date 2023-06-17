 
exit
@echo off
cd "G:\Series\That 70s Show\That 70s Show S08"

setlocal EnableDelayedExpansion

set num=1
set fnam="That 70s Show S08E"

for %%x in (*.*) do (

	set ext=%%~xx
	REM echo !ext!

	set var=0!num!
	set var=!var:~-2!

	REM echo !var!

	echo !fnam!!var!!ext!

	ren "%%x" !fnam!!var!!ext!

	REM echo !num!
	set /a num=num+1
)
pause