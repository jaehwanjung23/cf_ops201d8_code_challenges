# Script Name:                  ipv4selectstring.ps1
# Author:                       Jason J
# Date of latest revision:      05/09/23
# Purpose:                      Outputs the results of ipconfig /all to the desktop as network_report.txt. Uses Select-String to print the IPv4 address to the shell. Deletes network_report.txt

# Declaration of variables
$thisDesktop = [Environment]::GetFolderPath("Desktop")
#Sets the variable thisDesktop with the user's desktop path.
# Declaration of functions
function grabIPv4{
    ipconfig /all | Out-File -FilePath $thisDesktop\network_report.txt
    #Outputs the results of ipconfig /all into a text file on the desktop.
    Select-String -Path $thisDesktop\network_report.txt -Pattern "IPv4"
    #Searches network_report.txt for IPv4 and echos the matching lines to the shell.
    Remove-Item $thisDesktop\network_report.txt
    #Deletes network_report.txt
    }

# Main
grabIPv4;