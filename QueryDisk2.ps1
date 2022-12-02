[cmdletbinding()]
Param(
  [string]$ComputerName = (Read-Host -Prompt 'Enter a computer name'),
  [switch]$UseAltCreds
)

if ($UseAltCreds -eq $true) {
  $Creds = Get-Credential -Message 'Please enter alternative credentials'
  $CimSess = New-CimSession -ComputerName $ComputerName -Credential $Creds
  Get-CimInstance -CimSession $CimSess -ClassName win32_logicaldisk |
    Where-Object {$_.DriveType -eq 3}
}
else {
  Get-CimInstance -ClassName Win32_LogicalDisk -ComputerName $ComputerName |
    Where-Object {$_.DriveType -eq 3}
}
