#!/bin/bash

# Script Name:                  logretrieval.ps1
# Author:                       Jaehwan Jung
# Date of latest revision:      05/04/23
# # Purpose:                    Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
#                               Output all “error” type events from the System event log to a file on your desktop named errors.txt.
                                # Print to the screen all events with ID of 16 from the System event log.
                                # Print to the screen the most recent 20 entries from the System event log.’
                                # Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).

# Declaration of variables

# Declaration of functions


# Main
$last_24 = Get-EventLog -LogName System -After (Get-Date).AddDays(-1)
$last_24 > C:\Users\jason\Desktop\last24.txt
#Grabs the system event log from the last 24 hours and outputs it to desktop\last24.txt
$errors = Get-EventLog -LogName System -EntryType Error
$errors > C:\Users\jason\Desktop\errors.txt
#Gathers Error event type system logs and outputs it to desktop\errors.txt
Get-EventLog -LogName System -InstanceID 16
#Prints all event logs with the instance ID of 16.
Get-EventLog -LogName System -Newest 20
#Prints the 20 of the most recent event logs
$Events = Get-EventLog -LogName System -Newest 500
$Events | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending | Format-Table -AutoSize -Wrap
#Prints to the screen most recent 500 enetries from the system event log, grouped by source and formatted to display the full text.

