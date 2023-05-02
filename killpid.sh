#!/bin/bash

# Script Name:                  killpid
# Author:                       Jason J
# Date of latest revision:      04/28/2023
# Purpose:                      Displays running processes, prompts for a PID, kills all processes containing the PID, looping back to step 1 until user exits with ctrl + C.

# Declaration of variables
# Declaration of functions
function killPidFn(){
    while true;
    do
        ps aux;
        read -p "Ready to kill. What is the PID? " pid;
        sudo kill -9 $pid;
        read -p "Process has been terminated. Do you want to kill another process? (y/n) " yn
        case $yn in
            [yY] ) echo "Ok killa";
                    killPidFn;
                    break
                    ;;
            [nN] ) echo "Exiting";
                    exit
                    ;;
            * ) echo "Please input only y/n, exiting script";
                    exit;;
        esac 
    done
}

# Main
killPidFn;

# End