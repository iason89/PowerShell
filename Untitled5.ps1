get-aduser -filter * -SearchBase "cn=Users,dc=adatum,dc=com" | ft
(Get-EventLog -LogName Security | Where-Object {$_.EventID -eq 4624}).count

Get-EventLog -LogName Security | Where-Object {$_.EventID -eq 4624} | Select-Object -Property TimeWritten, EventID,Message -Last 10 | fl

Get-ChildItem -Path CERT: -Recurse | gm

get-psdrive

Get-ChildItem -Path CERT: -Recurse | Where-Object {$_.HasPrivateKey -eq $false} | Select-Object -Property friendlyName, Issuer | fl
$today = Get-date
Get-ChildItem -Path CERT: -Recurse | Where-Object {$_.HasPrivateKey -eq $false -and $_.NotBefore -lt $Today -and $_.NotAfter -gt $Today} | Select-Object -Property friendlyName, Issuer | ft -wrap

Get-Volume |
 Where-Object {$_.SizeRemaining -gt 0} |
 select-object -Property *,@{n='Percentfree';e={$_.Sizeremaining / $_.size *100}} |
 Where-Object {$_.Percentfree -lt 99} |
 Select-Object -Property Driveletter,@{n='DiskSize MB';e={[math]::Round($_.Size / 1MB,3)}}

 Get-ControlPanelItem |
  Where-Object {$_.Category -contains 'System and Security'} |
  Sort-Object -property Name |
  Select-Object -Property Name,Category

 Get-ControlPanelItem |
  Where-Object {$_.Category -contains 'System and Security' -and $_.Category.Count -eq 1} |
  Sort-Object -property Name |
  Select-Object -Property Name,Category