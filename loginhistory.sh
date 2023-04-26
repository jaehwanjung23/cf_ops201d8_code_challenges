#!/bin/bash

# Script Name:                  loginhistory
# Author:                       Jason J
# Date of latest revision:      04/26/2023
# Purpose:                      Print the login history

# Declaration of variables
# Declaration of functions


# Main
print_login_history(){
    last $1
    echo "This is the login history"
}
#The $1 allows it to look up the login history of certain users on the machine by passing in the username as an arugment when calling the script.

print_login_history
print_login_history
print_login_history
# End