Get-Service -Name Spooler, BITS
 Select-Object -Property Status, starttype, name
 Export-Clixml -path e:\test.xml

Get-Service -Name Spooler, BITS
 Select-Object -Property Status, starttype, name |
 Export-Clixml -path e:\test.xml

Get-Service -Name Spooler, BITS
 Select-Object -Property Status, starttype, name |
 ConvertTo-json |
 Out-File -path e:\test.json

Get-Service -Name Spooler, BITS
 Select-Object -Property Status, starttype, name |
 ConvertTo-Html |
 Out-File -path e:\test.html

 Get-Service | Out-GridView  -outputmode Multiple | stop-service -whatif