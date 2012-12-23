@ setlocal
@ set suffix=
@ set arg=%1
@ IF "%~1" == "debug" set suffix=-debug && set arg=
@ IF "%~1" == "release" set arg=
platforms\windows-x64\bin\game%suffix% %arg% %2 %3 %4 %5 %6 %7 %8 %9
@ endlocal
