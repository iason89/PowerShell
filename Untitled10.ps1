get-cimclass Win32_NetworkAdapterConfiguration | select-object *
Get-CimInstance Win32_NetworkAdapterConfiguration | select-object *IPaddress

Get-CimInstance Win32_OperatingSystem | select-object *version*
get-CimInstance Win32_ComputerSystem | select-object Manufacturer,Model,TotalPhysicalMemory

get-ciminstance Win32_Service | Select-Object sign*
get-ciminstance Win32_Service | where-object {$_.name -like 's*'} | Select-Object Name,State,StartName

get-ciminstance Win32_UserAccount | Select-Object Caption,Domain,SID,FullName,Name | ft
Get-CimInstance Win32_Group -ComputerName lon-dc1 | select *
Get-CimInstance Win32_Group -ComputerName lon-dc1 | Where-Object {$_.LocalAccount -eq $true}


Get-CimClass

$Session = New-CimSession -ComputerName lon-dc1
 Get-CimInstance -CimSession $Session -ClassName win32_service |
 where-object {$_.Name -eq 'spooler'} |
 Invoke-CimMethod -MethodName StopService

 get-service WinRM | select *


 $header