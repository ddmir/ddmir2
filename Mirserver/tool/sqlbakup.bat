@cd %~dp0
set ip=%1
@shift
set port=%1
@shift
set user=%1
@shift
set pass=%1
@shift
set db=%1
@shift
set tbl=%1
@shift
set bakdir=%1
@shift

if "%tbl%" equ "chr" goto chr
if "%tbl%" equ "acc" goto acc

:acc
::@echo mysqldump.exe %ip% %port% %user% %pass% --lock-tables=false %db% account %bakdir%>>a.txt
mysqldump.exe %ip% %port% %user% %pass% --lock-tables=false %db% account > %bakdir%
goto end

:chr
::@echo mysqldump.exe %ip% %port% %user% %pass% --lock-tables=false %db% character item %bakdir%>>a.txt
mysqldump.exe %ip% %port% %user% %pass% --lock-tables=false %db% character item > %bakdir%
goto end

:end
