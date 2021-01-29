# variable hosting the path of the image
$image = ""

# variable hosting the path of the VHD
$VHD = $image"DCDC.vhdx" 

# creating a new VM 
New-VM -Name DC -MemoryStartupBytes 512MB -Path $image
