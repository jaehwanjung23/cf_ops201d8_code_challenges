#!/bin/bash

# Script Name:                  killpid
# Author:                       Jason J
# Date of latest revision:      04/28/2023
# Purpose:                      Displays running processes, prompts for a PID, kills all processes containing the PID, looping back to step 1 until user exits with ctrl + C.

# Declaration of variables
# Declaration of functions


# Main
while true
    do
        ps aux;
        read -p "Ready to kill. What is the PID? " pid;
        sudo kill -9 $pid;
        echo "Successfully killed $pid, exit using ctrl + C or continue to kill."
    done
# End