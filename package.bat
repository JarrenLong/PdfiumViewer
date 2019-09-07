@echo off

set config=Release 
set version="3.13.0.0"
set NUGET="..\LongTech.BuildTools\.nuget\nuget.exe"

if exist packages\ del /s /f /q packages\*

%NUGET% pack "PdfiumViewer.nuspec" -NoPackageAnalysis -verbosity detailed -Version %version% -p Configuration="%config%" -OutputDirectory "..\LongTech.BuildTools\packages" >> nuget.log
%NUGET% push "..\LongTech.BuildTools\packages\PdfiumViewer.%version%.nupkg" -ApiKey BNBNug3t! -Source http://nuget.long-technical.com/nuget >> nuget.log
