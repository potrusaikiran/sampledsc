$AutomationAccount=Get-AzureRmAutomationAccount -ResourceGroupName skplte-RG
$AutomationAccount|Import-AzureRmAutomationDscConfiguration -SourcePath "$env:System_artifactsdirectory\ES-DevOps-CI-CD-failure\DSC" -Published -Force
$AutomationAccount|Start-AzureRmAutomationDscCompilationJob -ConfigurationName backup
#edited for continuous build check
