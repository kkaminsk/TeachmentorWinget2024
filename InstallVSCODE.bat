@echo off
REM Batch script to install Visual Studio Code using winget

REM Install Visual Studio Code
winget install --id Microsoft.VisualStudioCode --silent

REM Check the exit code of the winget command
IF %ERRORLEVEL% EQU 0 (
    echo Installation of Visual Studio Code completed successfully.
    EXIT /B 0
) ELSE (
    echo Error: Installation of Visual Studio Code failed.
    EXIT /B 1
)
