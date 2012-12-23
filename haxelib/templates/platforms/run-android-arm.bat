@ SETLOCAL

@ set lib=libgame.so
@ set arg=%1
@ IF "%~1" == "debug" set lib=libgame-debug.so && set arg=
@ IF "%~1" == "release" set arg=

cd platforms\android-arm
@ IF errorlevel 1 call :error-cd "failed to change current directory" & exit /B 1

echo F | xcopy /y out\%lib% libs\armeabi\libapplication.so
@ IF errorlevel 1 call :error-cd "failed to copy application shared object" & exit /B 1

@IF NOT EXIST gen GOTO no-gen
rmdir /s /q gen
@ IF errorlevel 1 call :error-cd "failed to delete directory with auto-generated files" & exit /B 1

:no-gen

ant %arg% %2 %3 %4 %5 %6 %7 %8 %9 -Dsdk.dir=%ANDROID_HOME%
@ IF errorlevel 1 call :error-cd "failed to build application package" & exit /B 1

@ GOTO success

:error-cd
cd ..
:error
@ echo Error: %~1. 1>&2
@ GOTO :eof

:success
cd ..

@ ENDLOCAL
