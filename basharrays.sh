#!/bin/bash

# Script Name:                  basharrays
# Author:                       Jason J
# Date of latest revision:      04/27/2023
# Purpose:                      Create and reference arrays

# Declaration of variables
declare -A dirArray;
#Empty Array to store directory strings.
i=0
#Counter
# Declaration of functions


# Main
for dirName in $@
    do
        dirArray[i]=$dirName;
        mkdir $dirName;
        cd ${dirArray[i]};
        touch README.txt;
        cd ..;
        shift $i;
    done
# You can pass in the directory names as arguments to the script, separated by spaces. The function will loop through the arguments, store the names as Strings starting from index 0, create a new directory of the name passed.
# It will then cd into the new directory, create a default README.txt file, cd back out, and shift i the counter to iterate through the array.

# End