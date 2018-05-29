configuration backup{
    Node 'localhost'{
        Import-Module -Name 'PSDesiredStateConfiguration'

                        WindowsFeature ServerBackup
                        {
                        Ensure = 'absent'
                        Name = 'Windows-Server-Backup'
                                              
                        }
                    } 
}


                            backup -OutputPath C:\Users\SaiKiran\Desktop\Partial\Backup
  Publish-DscConfiguration C:\Users\SaiKiran\Desktop\Partial\Backup -ComputerName 'localhost' -Verbose
  Publish-DscConfiguration -Path C:\Users\SaiKiran\Desktop\Partial\Wireless-Networking -ComputerName 'localhost' -Verbose
 Start-DscConfiguration -Path C:\Users\SaiKiran\Desktop\Partial\Backup  -Verbose
 Get-WinEvent –LogName "Microsoft-Windows-Dsc/Operational" |? -process {Timecreated.Date=(Get-Date).Date}
 Get-DscLocalConfigurationManager
 Remove-DscConfigurationDocument -Stage Pending,Current,Previous
 Test-DscConfiguration

 get-process *wmi* | stop-process -force;
restart-service winrm -force