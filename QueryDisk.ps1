[cmdletbinding()]
Param(
  [string]$ComputerName = (Read-Host -Prompt 'Enter a computer name')
)


Get-CimInstance -ClassName Win32_LogicalDisk -ComputerName $ComputerName |
 Where-Object {$_.DriveType -eq 3}