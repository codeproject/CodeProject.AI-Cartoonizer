:: Installation script :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
::                           Cartoonizer
::
:: This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat
::
:: For help with install scripts, notes on variables and methods available, tips,
:: and explanations, see /src/modules/install_script_help.md

@if "%1" NEQ "install" (
    echo This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat
    @pause
    @goto:eof
)

:: Download the models and store in /models
call "%utilsScript%" GetFromServer "models/" "cartooniser-models.zip" "weights" "Downloading Cartoonizer models..."

REM TODO: Check weights created and has files
REM set moduleInstallErrors=...
