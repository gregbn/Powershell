# Disabling optical drive in Windows 10

# search for optical drive in PnP devices and get it's instance id
$driveInstance =  (Get-PnpDevice | Select Friendlyname, Class, InstanceId |  where {$_.Class -like "CDROM"}).InstanceId

# if InstanceId exists, disable the device
	if ($driveInstance) {
  
		# disable optical drive using it's instance id
		Disable-PnpDevice -InstanceId $driveInstance -Confirm:$false
  }
