$ip = "10.1.1.1"

Switch -WildCard ($ip) {
   "10.*" { Write-Host "This computer is on the internal network" }
   "10.1.*" { Write-Host "This computer is in London" }
   "10.2.*" { Write-Host "This computer is in Vancouver" }
   Default { Write-Host "This computer is not on the internal network" }
}

New-ADGroup -Name IPPhoneTest -Path 'OU=IT,DC=Adatum,DC=com' -GroupScope Global
Add-ADGroupMember -Identity IPPhoneTest -Members abbi,ida,parsa,tonia
