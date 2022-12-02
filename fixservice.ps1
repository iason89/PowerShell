$ServiceNames = Get-Content E:\Mod07\Labfiles\services.txt
foreach ($Service in $ServiceNames){
  $ServiceInfo = Get-Service -Name $Service
  if ($ServiceInfo.Status -eq 'Stopped'){
    $ServiceInfo | Start-Service
    Write-Host "$Service was started"
  }
  else {
    Write-Host "$Service was already started, no action required"
  }
}