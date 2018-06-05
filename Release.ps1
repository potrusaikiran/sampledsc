$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName saikiranpotru
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\ES-DevOps-CI-vmdsc\dsc\webserver.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName webserver

$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName saikiranpotru
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\ES-DevOps-CI-vmdsc\dsc\Backup.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName backup

$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName saikiranpotru
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\ES-DevOps-CI-vmdsc\dsc\WirelessNetwork.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName WirelessNetwork

$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName saikiranpotru
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\ES-DevOps-CI-vmdsc\dsc\service.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName service
#edited for continuous build check
#added comment
