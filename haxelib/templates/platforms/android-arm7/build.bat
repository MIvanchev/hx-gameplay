haxelib run hx-gameplay process-build-files android-arm7
@ IF errorlevel 1 call :error "failed to process build files" & exit /B 1

cd platforms\.obj\android-arm7
@ IF errorlevel 1 call :error "failed to change current directory" & exit /B 1

del /q libgame*.so
@ IF errorlevel 1 call :error-cd "failed to clean previous build files" & exit /B 1

haxelib run hxcpp Build.xml -Dandroid -DNDKV7 -DHXCPP_ARMV7 -Dandroid-9 %1 %2 %3 %4 %5 %6 %7 %8 %9
@ IF errorlevel 1 call :error-cd "failed to compile application source" & exit /B 1

echo FF | (xcopy /y libgame-7.so ..\..\android-arm7\bin\out\libgame.so || xcopy /y libgame-debug-7.so ..\..\android-arm7\bin\out\libgame-debug.so)
@ IF errorlevel 1 call :error-cd "failed to copy application shared object" & exit /B 1

@ GOTO success

:error-cd
cd ..\..\..
:error
@ echo Buiild error: %~1. 1>&2
@ GOTO :eof

:success
cd ..\..\..
