@ setlocal
@ set hxcpp_debug=
@ set mode=release
@ set arg=%2
@ IF "%~2" == "debug" set hxcpp_debug=-Ddebug && set mode=debug && set arg=
@ IF "%~2" == "release" set arg=
@ set platform=%~1
@ set platform=%platform: =%

platforms\%platform%\build.bat %hxcpp_debug% && run-%platform%.bat %mode% %arg% %3 %4 %5 %6 %7 %8 %9

@ endlocal
