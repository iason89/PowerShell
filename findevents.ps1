Param (
  [string]$ComputerName,
  [int]$EventID
)

Get-Eventlog -LogName Security -ComputerName $ComputerName | Where-Object {$_.EventID -eq $EventID}