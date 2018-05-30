configuration WirelessNetwork{
Node 'localhost'{
    WindowsFeature WirelessNetwork{
                Name = 'Wireless-Networking'
                Ensure = 'absent'
                }
    }
}
