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
