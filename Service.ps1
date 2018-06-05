configuration Service
{
    Node localhost
    {
         Import-Module -Name 'PSDesiredStateConfiguration'
        WindowsFeature ftpserver
      {
		Name      = "Web-Ftp-Service"
        Ensure    = "present"
      }

   }
}