Set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled True -Profile Any
Enables file and printer sharing

netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol="icmpv4:8,any" dir=in action=allow
#Creates a new inbound firewall rule to allow ICMP.

Enable-PSRemoting -SkipNetworkProfileCheck -Force
#Enables PowerShell remoting and skips the network profile check.

iex ((New-Object System.net.webclient).DownloadString('https://git.io/debloat'))
#Debloats Windows 10

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
#Checks if SMBv1 is enabled
Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol
#Disables if SMBv1 is enabled.