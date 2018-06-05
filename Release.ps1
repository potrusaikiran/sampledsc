$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName saikiranpotru
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\vmautomationbuild\DSC\webserver.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName webserver

$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName saikiranpotru
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\vmautomationbuild\DSC\Backup.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName backup

$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName saikiranpotru
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\vmautomationbuild\DSC\WirelessNetwork.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName WirelessNetwork

$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName saikiranpotru
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\vmautomationbuild\DSC\service.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName service
#edited for continuous build check
#added comment
