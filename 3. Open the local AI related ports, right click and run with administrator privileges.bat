chcp 65001

echo 请使用右键 ，用管理员权限运行。

netsh advfirewall firewall add rule name="Open Port 7900" dir=in action=allow protocol=TCP localport=7900

netsh advfirewall firewall add rule name="Open Port 7900" dir=in action=allow protocol=TCP localport=7901

echo 端口开放完毕，请再次测试。

pause
