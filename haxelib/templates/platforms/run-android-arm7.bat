@ SETLOCAL
@ echo off

set mode=debug
FOR %%A IN (%*) DO IF "%%~A" == "release" set mode= & GOTO done-mode
FOR %%A IN (%*) DO IF "%%~A" == "debug" set mode= & GOTO done-mode

:done-mode

set lib=libgame.so
set args=
FOR %%A IN (%*) DO IF NOT "%%~A" == "lib:debug" set args=%args% %%A
FOR %%A IN (%*) DO IF "%%~A" == "lib:debug" set lib=libgame-debug.so & GOTO done

:done

@ echo on

cd platforms\android-arm7
@ IF errorlevel 1 call :error-cd "failed to change current directory" & exit /B 1

echo F | xcopy /y out\%lib% libs\armeabi-v7a\libapplication.so
@ IF errorlevel 1 call :error-cd "failed to copy application shared object" & exit /B 1

@IF NOT EXIST gen GOTO no-gen
rmdir /s /q gen
@ IF errorlevel 1 call :error-cd "failed to delete directory with auto-generated files" & exit /B 1

:no-gen

ant %mode% %args% -Dsdk.dir=%ANDROID_HOME%
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
