$var1 = "test"

$var1

[string]$var2 = "test 2"

$var2.GetType().name

[datetime]$Y2K = '4 3 2000'
$Y2K

'4'+ 5 = 45
5 + '4' = 9

$header = "hello world"
$header
'-' * $header.Length

20 % 6

get-variable

$tester = 1
$tester

$LongString | gm

$LongString = "-----Hello this is a tester, I like red======="
$LongString.TrimStart('-').TrimEnd('=')
$LongString.Replace('red','yellow')

$Today = Get-Date

$Today | gm

$Today.AddMonths(+6)

$Today | select date

Get-ChildItem | gm

[string[]]$var3 = 'bob','bill'
$var3.IsFixedSize

$var3 = $var3 + 'kim'

$var3 | gm

Get-Member -InputObject $var3

$HashTable = @{
    Ted = 'Sales'
    Bill = 'IT'
    Fred = 'Marketing'
}

$HashTable.Ben = @{
    dept = 'HR'
    salary = 100
}

$HashTable.Ted
$HashTable.Red = 'IT'

$HashTable.Add('Red','IT')
$HashTable.remove('red')
$HashTable
$HashTable.Ben.salary

$LogPath = 'C:\logs\'
$LogFile = 'log.txt'
$LogPath = $LogPath.TrimEnd('\') + '\' + $LogFile
$LogPath = $LogPath.Replace('C','D:')
$Logpath

$Today = Get-Date
$Today | gm
$LogFile = [string]$Today.Year + '-' +
            $Today.Month + '-' +
            $Today.Day + '-' +
            $Today.Hour + '-' +
            $Today.Minute + '.txt'

$CutoffDay = $Today.AddDays(-30)

Get-ADUser -Filter * -Properties LastLogonDate | Where-Object {$_.LastLogonDate -gt $CutoffDay}
Get-ADUser -Filter * -Properties *

