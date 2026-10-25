$targetFolder = ".\FileAutomation.ps1"
$cutoffDate = (Get-Date).AddDays(-7)
Get-ChildItem -Path $targetFolder |
    Where-Object {$_.LastWriteTime -lt  $cutoffDate} |
    Remove-Item -WhatIf