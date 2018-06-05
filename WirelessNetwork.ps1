configuration WirelessNetwork{
Node 'localhost'{
	Import-Module -Name 'PSDesiredStateConfiguration'
    WindowsFeature WirelessNetwork{
                Name = 'Wireless-Networking'
                Ensure = 'present'
                }
    }
}
