$MyCert = Get-ChildItem -Path Cert:\CurrentUser\My -CodeSigningCert
Set-AuthenticodeSignature -Certificate $MyCert -FilePath E:\myscript.ps1

Set-ExecutionPolicy -ExecutionPolicy AllSigned


E:\myscript.ps1