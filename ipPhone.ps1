$IPPhoneTestGroup = Get-ADGroupMember -Identity IPPhoneTest

foreach ($TestUser in $IPPhoneTestGroup){
  $UserInfo = Get-ADUser -Filter * | Where-Object {$_.SID -eq $TestUser.SID}
  $IPPhoneAttr = $UserInfo.GivenName + '.' + $UserInfo.Surname + '@adatum.com'
  Set-ADUser -Identity $TestUser -Replace @{ipPhone = $IPPhoneAttr}         
}

Get-ADUser -Filter * -Properties ipphone | Where-Object {$_.givenname -eq 'abbi'}