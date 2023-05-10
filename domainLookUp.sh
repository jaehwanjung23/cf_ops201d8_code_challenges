#!/bin/bash

# Script Name:                  domainLookUp
# Author:                       Jason J
# Date of latest revision:      05/10/2023
# Purpose:                      Create a script that asks a user to type a domain, then displays information about the typed domain. Operations that must be used include:
                                # whois
                                # dig
                                # host
                                # nslookup

# Declare Variables
domain='';

# Declare Functions
whoisDom(){
  whois $domain >> $domain.txt
  echo _____________END OF WHO IS_____________ >> $domain.txt
}

digDom(){
  dig $domain >> $domain.txt
  echo _____________END OF DIG_____________ >> $domain.txt
}

hostDom(){
  host $domain >> $domain.txt
  echo _____________END OF HOST_____________ >> $domain.txt
}

nslDom(){
  nslookup $domain >> $domain.txt
  echo _____________END OF NSLOOKUP_____________ >> $domain.txt
}

infoDom(){
  read -p "Enter the domain name: " domain
  whoisDom
  digDom
  hostDom
  nslDom
}

# Main
infoDom
code $domain.txt
#`xdg-open $domain.txt` to open in a live Desktop environment with the default text editor.