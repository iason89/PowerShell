#More info nn Brent's Github
[xml]$info = Get-Content E:\sample.xml
$info.bookshelf.book | Where-Object {[double]($_.rpice) -lt 8}


$var = Invoke-WebRequest -Uri 'https://swapi.dev/api/people'
$people = $var.content | ConvertFrom-Json
$people.results | where {$_.name -like 'l*'}

$Coolway = Invoke-RestMethod -Uri 'https://swapi.dev/api/people'
$Coolway.results | where {$_.name -like 'l*'}