@ setlocal
@ set suffix=
@ set arg=%1
@ IF "%~1" == "debug" set suffix=-debug && set arg=
@ IF "%~1" == "release" set arg=

@ set config=..\..\..\game.config

cd platforms\windows-x64\bin
@ IF errorlevel 1 call :error "failed to change to platform directory" & exit /B 1

IF NOT EXIST %config% del /q game.config
@ IF errorlevel 1 call :error-cd "failed to delete out-dated application config" & exit /B 1

IF EXIST %config% copy /y %config% game.config
@ IF errorlevel 1 call :error-cd "failed to copy application config" & exit /B 1

robocopy /mir /njh /njs /ndl /ns /np ..\..\..\res res
@ IF errorlevel 8 call :error-cd "failed to copy resource files" & exit /B 1

game%suffix: =% %arg% %2 %3 %4 %5 %6 %7 %8 %9
@ IF errorlevel 1 call :error-cd "application execution was unsuccessful" & exit /B 1

@ GOTO success

:error-cd
cd ..\..\..
:error
@ echo Error: %~1. 1>&2
@ GOTO :eof

:success
cd ..\..\..

@ endlocal
