REM
cd platforms\android-arm
@ SETLOCAL

set mode=
@ IF "%~1" == "" set mode=debug

copy out\%library% libs\libapplication.so
ant %mode% %1 %2 %3 %4 %5 %6 %7 %8 %9 -Dsdk.dir=%ANDROID_HOME%

@ ENDLOCAL
cd ..
