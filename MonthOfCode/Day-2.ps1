# Deep digging with CIM (CBT Nuggets)

# Get-CimClass | Where-Object CimClassName -like "*network*"

# Get-CimInstance -ClassName CIM_NetworkAdapter | Where-Object {$_.Name -like "*Hyper*"}

# Get-CimInstance -ClassName Win32_NetworkAdapterConfiguration | Select-Object *

Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object *