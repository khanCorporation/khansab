@echo off
:: Interface names - update these to match your system
set EthernetInterface=Ethernet
set WifiInterface=Wi-Fi

:: Temporary static IP configuration (change as needed)
set StaticIP=192.168.1.100
set SubnetMask=255.255.255.0
set Gateway=192.168.1.1
set StaticDNS=8.8.8.8

echo Changing IP and DNS configuration for Ethernet and Wi-Fi...

:: Set static IP and DNS for Ethernet
echo Configuring Ethernet with static IP and DNS...
netsh interface ip set address name="%EthernetInterface%" static %StaticIP% %SubnetMask% %Gateway%
if %errorlevel% neq 0 (
    echo [ERROR] Failed to set static IP for Ethernet. Verify the interface name: %EthernetInterface%.
) else (
    echo [SUCCESS] Static IP configured for Ethernet.
)
netsh interface ip set dns name="%EthernetInterface%" static %StaticDNS%
if %errorlevel% neq 0 (
    echo [ERROR] Failed to set static DNS for Ethernet.
) else (
    echo [SUCCESS] Static DNS configured for Ethernet.
)

:: Set static IP and DNS for Wi-Fi
echo Configuring Wi-Fi with static IP and DNS...
netsh interface ip set address name="%WifiInterface%" static %StaticIP% %SubnetMask% %Gateway%
if %errorlevel% neq 0 (
    echo [ERROR] Failed to set static IP for Wi-Fi. Verify the interface name: %WifiInterface%.
) else (
    echo [SUCCESS] Static IP configured for Wi-Fi.
)
netsh interface ip set dns name="%WifiInterface%" static %StaticDNS%
if %errorlevel% neq 0 (
    echo [ERROR] Failed to set static DNS for Wi-Fi.
) else (
    echo [SUCCESS] Static DNS configured for Wi-Fi.
)

:: Wait for 4 seconds
echo Waiting for 4 seconds before reverting to default settings...
timeout /t 0 /nobreak >nul

:: Revert to DHCP (default settings) for Ethernet
echo Reverting Ethernet to automatic settings...
netsh interface ip set address name="%EthernetInterface%" dhcp
if %errorlevel% neq 0 (
    echo [ERROR] Failed to revert Ethernet to DHCP.
) else (
    echo [SUCCESS] Ethernet reverted to DHCP.
)
netsh interface ip set dns name="%EthernetInterface%" dhcp
if %errorlevel% neq 0 (
    echo [ERROR] Failed to revert Ethernet DNS to DHCP.
) else (
    echo [SUCCESS] Ethernet DNS reverted to DHCP.
)

:: Revert to DHCP (default settings) for Wi-Fi
echo Reverting Wi-Fi to automatic settings...
netsh interface ip set address name="%WifiInterface%" dhcp
if %errorlevel% neq 0 (
    echo [ERROR] Failed to revert Wi-Fi to DHCP.
) else (
    echo [SUCCESS] Wi-Fi reverted to DHCP.
)
netsh interface ip set dns name="%WifiInterface%" dhcp
if %errorlevel% neq 0 (
    echo [ERROR] Failed to revert Wi-Fi DNS to DHCP.
) else (
    echo [SUCCESS] Wi-Fi DNS reverted to DHCP.
)

echo All changes reverted to default settings.