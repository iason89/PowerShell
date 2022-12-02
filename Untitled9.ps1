$CimSessions = New-CimSession -Credential adatum\administrator -ComputerName lon-dc1, lon-svr1
get-cimsession
Get-CimInstance -ClassName Win32_BIOS -CimSession $CimSessions

new-object