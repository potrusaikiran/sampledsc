$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName skplte-rg -Name skplte-rg
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\ES-DevOps-CI-CD-failure\DSC\Backup.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName backup
