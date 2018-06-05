
 Node localhost {
        WindowsFeature InstallIIS {
            Name = "Web-Server"
            Ensure = "Present"
        }
