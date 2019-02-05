$drive =  (Get-PnpDevice | Select Friendlyname, Class, instanceid |  where {$_.Class -like "CDROM"}).instanceid
Disable-PnpDevice -InstanceId $drive -Confirm:$false
