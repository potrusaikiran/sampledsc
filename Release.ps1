

$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName skplte-rg -Name skplte-rg
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$(System.DefaultWorkingDirectory)/_ES-DevOps-CI-CD-DSC/DSC/Backup.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName backup
