get-service | fw -Property name -autosize

get-verb | fw verb -AutoSize

get-service | Sort-Object -Property status,name,displayname

sort-object

get-service | sort-object -Property statusget-aduser
Get-ADUser -Filter * -Properties department | select -Property department -Unique

$h1 = @{enginesize = 350; wheeldrive = 4; cyl = 8}

get-date | select-object  -Property dayofyear | fl

get-hotfix | gm

Get-Hotfix | Select-Object -Property *

get-command *neighbor*
Get-DhcpServerv4Scope -ComputerName LON-DC1 | Select-Object ScopeId, SubnetMask,name,CimClass | fl
get-command *cache*
Get-NetFirewallRule -Enabled True | format-table -wrap -autosize
Get-NetFirewallRule -Enabled True | Sort-Object -Property profile,displayname | Select-Object -Property DisplayName,Profile,Direction,Action | format-list -GroupBy Profile
Get-NetNeighbor | Sort-Object -Property State | gm
Get-NetNeighbor | sort-object -Property state | fw -Property IPAddress -GroupBy state -AutoSize

Get-DnsClientCache | Select-Object -Property *
Sort-Object -Property Recordname | select-object -Property recordname

get-block