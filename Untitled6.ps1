1..10 | ForEach-Object { 1..40 | Get-Random }

Get-Random -

Get-ChildItem -path e:\ -Recurse
Get-ChildItem -path e:\ -Recurse

Get-ChildItem -Path E: -Recurse -Directory | ForEach-Object {$_.GetFiles()}
Get-ChildItem -Path e: -recurse | Select-Object -property name

1..10 | ForEach-Object {Get-Random -SetSeed $_}

