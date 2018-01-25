$session = new-pssession HOSTNAME


Invoke-Command -Session $session {Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |  Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize}