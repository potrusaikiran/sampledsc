configuration Wireless-Networking{
Node 'localhost'{
    WindowsFeature WirelessNetworking{
                Name = 'Wireless-Networking'
                Ensure = 'absent'
                }
    }
}
