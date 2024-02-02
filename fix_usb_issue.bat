@echo off
rem 禁用 USB 设备的特定查询标志
rem 注册表路径：HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\usbflags\18D1D00D0100

rem 设置 "osvc" 项的值为 0000（禁用服务端验证）
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\usbflags\18D1D00D0100" /v "osvc" /t REG_BINARY /d "0000" /f

rem 设置 "SkipContainerIdQuery" 项的值为 01000000（跳过容器 ID 查询）
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\usbflags\18D1D00D0100" /v "SkipContainerIdQuery" /t REG_BINARY /d "01000000" /f

rem 设置 "SkipBOSDescriptorQuery" 项的值为 01000000（跳过 BOS 描述符查询）
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\usbflags\18D1D00D0100" /v "SkipBOSDescriptorQuery" /t REG_BINARY /d "01000000" /f

rem 暂停脚本的执行，等待用户按下任意键继续
pause
