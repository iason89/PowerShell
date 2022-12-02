#Lab 7
#Exercise 4

$NewUsersFromCSV = Import-Csv -Path E:\Mod07\Labfiles\users.csv
foreach ($NewUser in $NewUsersFromCSV){
  $UserSplat = @{
    GivenName         = $NewUser.First
    Surname           = $NewUser.Last
    Name              = $NewUser.First + ' ' + $NewUser.Last
    DisplayName       = $NewUser.First + ' ' + $NewUser.Last
    SamAccountName    = $NewUser.UserID
    UserPrincipalName = $NewUser.UserID + 'adatum.com'
    Path              = "OU=$($NewUser.Department),DC=Adatum,DC=com"
    Department        = $NewUser.Department
  }
  New-ADUser @UserSplat
}