$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName saikiranpotru
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\vmautomationbuild\vmautomationbuild\webserver.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName webserver

$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName saikiranpotru
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\vmautomationbuild\vmautomationbuild\Backup.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName backup

$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName saikiranpotru
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\vmautomationbuild\vmautomationbuild\WirelessNetwork.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName WirelessNetwork

$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName saikiranpotru
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\vmautomationbuild\vmautomationbuild\service.ps1" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName service
#edited for continuous build check
#added comment
