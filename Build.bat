CD /D VDF.GUI
dotnet publish -c Release -v q --self-contained -r win-x64 -o "..\Releases\VDF.Windows-x64"
dotnet publish -c Release -v q --self-contained -r linux-x64 -o "..\Releases\VDF.Linux-x64"
CD /D ..

@echo off
REM Copy ffmpeg windows binaries
if not exist ".\Releases\ffmpeg\" goto end
REM if not exist ".\Releases\VDF.Windows-x86\bin" mkdir ".\Releases\VDF.Windows-x86\bin"
REM xcopy /q /y ".\Releases\ffmpeg\x86\*.*" ".\Releases\VDF.Windows-x86\bin"
if not exist "Releases\VDF.Windows-x64\bin" mkdir ".\Releases\VDF.Windows-x64\bin"
xcopy /q /y ".\Releases\ffmpeg\x64\*.*" ".\Releases\VDF.Windows-x64\bin"

:end