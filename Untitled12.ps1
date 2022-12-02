$MktgUsers = Get-ADUser -Filter * -Properties Department | Where-Object {$_.department -eq 'Business Development'}
$MktgUsers.count
$MktgUsers[0]
$MktgUsers | Set-ADUser -Department 'Business Development'

[System.Collections.ArrayList]$Computers = 'lon-srv1','lon-srv2','lon-dc1'
$Computers.IsFixedSize
$Computers.Add('lon-dc2')
$Computers.Remove('lon-srv2')
$Computers.Insert(1,'lon-srv2')

$MailList = @{
    Frank = 'Frank@fabrikam.com'
    Libby = 'LHayward@contoso.com'
    Matej = 'MStojanov@tailspintoys.com'
}

$Maillist.Libby
$Maillist.Libby = 'Libby.Hayward@contoso.com'
$Maillist.Add('Stela','Stela.Sahiti@treyresearch.net')
$Maillist.Remove('Frank')