Start-Job -ScriptBlock {Get-service} -Name Listservices
Get-Job -Id 1
Receive-Job -Id 1