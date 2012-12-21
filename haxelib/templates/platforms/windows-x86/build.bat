haxelib run hx-gameplay process-build-files windows-x86
@ IF errorlevel 1 call :error "failed to process build files" & exit /B 1

cd platforms\.obj\windows-x86
@ IF errorlevel 1 call :error "failed to change current directory" & exit /B 1

del /q game*.exe
@ IF errorlevel 1 call :error-cd "failed to clean previous build files" & exit /B 1

haxelib run hxcpp Build.xml -Dwindows %1 %2 %3 %4 %5 %6 %7 %8 %9
@ IF errorlevel 1 call :error-cd "failed to compile application source" & exit /B 1

xcopy /y game*.exe ..\..\windows-x86\bin\
@ IF errorlevel 1 call :error-cd "failed to copy executable files" & exit /B 1

@ GOTO success

:error-cd
cd ..\..\..
:error
@ echo Buiild error: %~1. 1>&2
@ GOTO :eof

:success
cd ..\..\..
