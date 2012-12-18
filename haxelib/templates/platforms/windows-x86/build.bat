haxelib run hx-gameplay process-build-files
@ IF errorlevel 1 GOTO error

cd platforms\.obj
@ IF errorlevel 1 GOTO error

del /q game*.exe
@ IF errorlevel 1 GOTO error-cd

haxelib run hxcpp Build.xml -Dwindows %1 %2 %3 %4 %5 %6 %7 %8 %9
@ IF errorlevel 1 GOTO error-cd

copy /y game*.exe ..\windows-x86\bin
@ IF errorlevel 1 GOTO error-cd

@ GOTO success

:error-cd
cd ..\..
:error
@ echo Buiild failed.
@ exit /B 1

:success
cd ..\..
