$JobOption = New-ScheduledJobOption -RunElevated -WakeToRun
$JobTrigger = New-JobTrigger -Once -At (Get-Date).AddMinutes(1)
Register-ScheduledJob -Name DemoSchedule2 -ScriptBlock {Get-Service} -Trigger $JobTrigger -ScheduledJobOption $JobOption

Get-Job
Get-ScheduledJob

get-job
Unregister-ScheduledJob -id 1
Receive-Job -id 4
New-ScheduledTask
