Start-DedupJob -Volume 'E:' -Type Optimization

$DepupJob = Get-DedupJob

while ($DepupJob.Progress -ne "100")
{
 #Get latest dedup task details
    $DepupJob = Get-DedupJob

    #Check task status
    if ($DepupJob.Progress -eq "100")
    {
    #Task is done - break out of loop
	#Write debug message
	Write-Host "DeDup process is complete."
    }
    else
    {
	#Write debug message to indicate progress
	Write-Host "DeDup Progress is at" $DepupJob.Progress.ToString() "%.  Checking again in 20 seconds..."

	#Sleep 20 seconds and check again
	Start-Sleep -Seconds 20
    }
    
}


