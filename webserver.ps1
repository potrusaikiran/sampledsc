
configuration webserver
{
    Node localhost
    {
         Import-Module -Name 'PSDesiredStateConfiguration'
        WindowsFeature WebServer
      {
        Name = "Web-Server"
        Ensure    = "present"       
      }

   }
}
