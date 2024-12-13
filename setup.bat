@echo off

REM Define the installation folder (e.g., C:\scripts)
set "installDir=%~dp0"

REM Check if jarvis.bat exists in the current folder
if not exist "%installDir%\jarvis.bat" (
    echo jarvis.bat not found in the current directory.
    exit /b
)

REM Add the installDir to the PATH
setx PATH "%PATH%;%installDir%" /M

REM Inform the user
echo jarvis.bat installed successfully!
echo Make sure to restart your terminal for changes to take effect.
