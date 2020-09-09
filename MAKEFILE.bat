@ECHO OFF

ECHO Batch: Running NMLC compiler
%~dp0\nmlc\nmlc -t src\custom_tags.txt -l src\lang --grf beach_ind.grf src\beach_ind.nml

set /P c=Complete!
if /I "%c%" EQU "TT" (goto :copy
) else (exit)

:copy
ECHO Copying to NewGRF directory
copy /y /v %~dp0\beach_ind.grf C:\Users\train\Documents\OpenTTD\newgrf\
pause
exit
