@echo off
setlocal

REM Check if a Java file was provided as an argument
if "%~1"=="" (
    echo Please provide a Java file name as an argument.
    exit /b
)

REM Get the full path of the Java file
set "javaFile=%~f1"
set "baseName=%~n1"
set "javaDir=%~dp1"

REM Change to the directory containing the Java file
cd /d "%javaDir%"

REM Compile the Java file
javac "%javaFile%"
if errorlevel 1 (
    echo Compilation failed.
    exit /b
)

REM Run the compiled Java class
java "%baseName%"

endlocal
