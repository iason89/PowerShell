Start-Transcript -
Get-Process
Stop-Transcript

get-command -name *transcript*
get-command *resolve*

get-command *adapter*
help Set-NetAdapter

get-command *scheduled*
get-command *fileshare*
get-command *suspend*

get-command *service*
help get-netfirewallrule
Get-NetIPAddress -AddressFamily IPv4
Set-Service -Name BITS -StartupType Automatic

get-command *test*
Test-NetConnection -ComputerName LON-DC1 -InformationLevel Quiet

Get-EventLog -LogName Security -Newest 10

help about*
get-help about_Comparison_Operators
'brent' -like 'b*'
$env:computername

help about_env
help about_Environment_Variables

$env:USERNAME