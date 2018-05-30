$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName skplte-RG
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\ES-DevOps-CI-CD-failure\DSC\Backup.ps1" -Published -Force
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\ES-DevOps-CI-CD-failure\DSC\Wireless-Networking.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName backup
#edited for continuous build check
