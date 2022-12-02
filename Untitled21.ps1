$password = Read-Host -Prompt 'Enter Password' -AsSecureString

$cred = Get-Credential -Message 'Password Please' -UserName 'adatum\administrator'