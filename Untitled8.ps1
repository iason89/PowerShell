get-help about_FileSystem_Provider

set-location -
New-Item -Path "\\LON-SVR1\C$" -Name "ScriptShare" -ItemType "directory"
new-psdrive -name ScriptShare -Root '\\LON-SVR1\C$\ScriptShare' -PSProvider FileSystem
New-Item -Path ScriptShare: -Name script.txt -ItemType file

cd HKCU:\SOFTWARE
New-Item -Path HKCU:\SOFTWARE -Name Scripts
New-ItemProperty -Path HKCU:\SOFTWARE\Scripts -Name PSDriveName -Value ScriptShare

get-cimclass | gm