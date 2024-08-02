#!/bin/bash

# Development mode setup script ::::::::::::::::::::::::::::::::::::::::::::::
#
#                            Cartoonizer
#
# This script is called from the Cartoonizer directory using: 
#
#    bash ../../CodeProject.AI-Server/src/setup.sh
#
# The setup.sh script will find this install.sh file and execute it.
#
# For help with install scripts, notes on variables and methods available, tips,
# and explanations, see /src/modules/install_script_help.md

if [ "$1" != "install" ]; then
    read -t 3 -p "This script is only called from: bash ../../CodeProject.AI-Server/src/setup.sh"
    echo
    exit 1 
fi

# Download the models and store in /models
getFromServer "models/" "cartooniser-models.zip" "weights" "Downloading Cartoonizer models..."

# TODO: Check weights created and has files
# moduleInstallErrors=...


# see https://pyimagesearch.com/2018/01/22/install-dlib-easy-complete-guide/ for notes on RPi
