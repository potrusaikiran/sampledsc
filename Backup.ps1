configuration backup{
    Node 'localhost'{
        Import-Module -Name 'PSDesiredStateConfiguration'
                        WindowsFeature ServerBackup
                        {
						Name = 'Windows-Server-Backup'
                        Ensure = 'present'
                        }
                 } 
}
