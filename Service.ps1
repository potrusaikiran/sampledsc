configuration Service
{
    Node localhost
    {
         Import-Module -Name 'PSDesiredStateConfiguration'
        WindowsFeature WebServer
      {
        Ensure    = "present"
        Name      = "Web-Ftp-Service"
      }

   }
}