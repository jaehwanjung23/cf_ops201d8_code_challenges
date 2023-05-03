#!/bin/bash

# Script Name:                  lswh
# Author:                       Jason J
# Date of latest revision:      05/02/23
# Purpose:                      Uses lshw to display system information to the screen about the following components:
                                # Name of the computer
                                # CPU
                                # Product
                                # Vendor
                                # Physical ID
                                # Bus info
                                # Width
                                # RAM
                                # Description
                                # Physical ID
                                # Size
                                # Display adapter
                                # Description
                                # Product
                                # Vendor
                                # Physical ID
                                # Bus info
                                # Width
                                # Clock
                                # Capabilities
                                # Configuration
                                # Resources
                                # Network adapter
                                # Description
                                # Product
                                # Vendor
                                # Physical ID
                                # Bus info
                                # Logical name
                                # Version
                                # Serial
                                # Size
                                # Capacity
                                # Width
                                # Clock
                                # Capabilities
                                # Configuration
                                # Resources

# Declaration of variables

# Declaration of functions


# Main
echo "Computer Name"
sudo hostname

echo "CPU"
sudo lshw -class processor | grep -E 'product|vendor|physical id|bus info|width' 

echo "RAM"
sudo lshw -class memory | grep -E 'description|physical id|size'

echo "Display Adapter"
sudo lshw -class display | grep -E 'description|product|vendor|physical id|bus info|width|clock|capabilities|configuration|resources'

echo "Network Adapter"
sudo lshw -class network | grep -E 'description|product|vendor|physical id|bus info|logical name|version|serial|size|capacity|width|clock|capabilities|configuration|resources'


# End