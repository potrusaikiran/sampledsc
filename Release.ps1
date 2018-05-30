$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName skplte-RG
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\ES-DevOps-CI-CD-failure\DSC\Backup.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName backup

$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName skplte-RG
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\ES-DevOps-CI-CD-failure\DSC\WirelessNetwork.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName WirelessNetwork
#edited for continuous build check
