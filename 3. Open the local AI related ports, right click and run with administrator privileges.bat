chcp 65001

Please right-click echo and run with administrator privileges.

netsh advfirewall firewall add rule name="Open Port 7900" dir=in action=allow protocol=TCP localport=7900

netsh advfirewall firewall add rule name="Open Port 7900" dir=in action=allow protocol=TCP localport=7901

The echo port is now open. Please test again.

pause
