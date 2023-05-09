# Script Name:                  sysprocess
# Author:                       Jason J
# Date of latest revision:      05/05/2023
# Purpose:                      Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
                                # Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
                                # Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
                                # Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.
                                # Start the process Notepad ten times using a for loop.
                                # Close all instances of the Notepad.
                                # Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.

# Declaration of variables
count=0
# Declaration of functions


# Main
Get-Process
# Displays all currently running processes on the system.

Get-Process | Sort-Object -Property CPU -Descending
#Displays the processes sorted by the highest CPU consumage.

Get-Process | Sort-Object -Property ID -Descending
#Displays the processes sorted by the highest PID on the top.

Get-Process | Sort-Object -Property WS(K) -Descending | Select-Object -First 5
#Displays to the terminal screen the 5 highest working set (WS(K)) at the top.

Start-Process -FilePath "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" -ArgumentList '--start-fullscreen "https://owasp.org/www-project-top-ten"'
#Starts google chrome and navigates to the link.

for ($i = 1 ; i -le 10; $i++){
  Start-Process notepad
}
#Starts notepad 10 times using a for loop

Stop-Process -Name "notepad" -PassThru
#Kills all notepad processes

Stop-Process -Id 992 -Confirm -PassThru
#Stops PID 992.