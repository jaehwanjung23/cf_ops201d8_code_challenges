#!/bin/bash

# Script Name:                  checkAndCreate.sh
# Author:                       Jason J
# Date of latest revision:      05/01/2023
# Purpose:                      Create a script that detects if a file or directory exists, then creates it if it does not exist.
#                               Your script must use at least one array, one loop, and one conditional.

# Declaration of variables
args=();
# Declaration of functions
function checkAndCreate(){
    name=$1
    while true; do
            read -p "Is $name file or a directory? (f/d) " fd
            case $fd in
                [fF] ) 
                    if [ -f $name ]; then
                         echo "$name already exists.";
                    else  
                        touch $name;
                    fi
                    break
                    ;;
                [dD] )  
                    if [ -d $name ]; then
                         echo "$name already exists.";
                    else  
                        mkdir $name;
                    fi
                    break
                    ;;
                * ) 
                    echo "Invalid input, please enter only f or d";
                    ;;
            esac  
    done  
}
# Main
for arg in "$@"
do
    args+=("$arg");
done
for arg in "${args[@]}"
do
    echo "$arg"
    checkAndCreate $arg
done
# End