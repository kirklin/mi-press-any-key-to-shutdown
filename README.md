# 修复小米手机连接电脑时 "press any key to shutdown" 错误的解决方案

## 问题描述

### 问题症状
在小米手机进入 Fastboot 模式并连接至电脑时，手机屏幕左上角显示 "press any key to shutdown" 提示，同时电脑未能正确识别设备。

### 错误信息
小米手机连接至电脑时，出现 "press any key to shutdown" 错误。

## 解决方案

1. **更换 USB 端口**
   - 尝试使用电脑上的 USB 2.0 端口连接手机，通常可以解决此问题。
   - 如果电脑缺乏 USB 2.0 端口，可以考虑使用 USB 集线器连接。

2. **批处理文件方式**
   - 如果上述方法未能解决问题，请尝试以下步骤：
     - 将下面的内容保存为 `.bat` 批处理文件。
     - 以管理员权限运行批处理文件。
     - 运行完成后，再次连接手机，问题应当得到解决。

```batch
@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\usbflags\18D1D00D0100" /v "osvc" /t REG_BINARY /d "0000" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\usbflags\18D1D00D0100" /v "SkipContainerIdQuery" /t REG_BINARY /d "01000000" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\usbflags\18D1D00D0100" /v "SkipBOSDescriptorQuery" /t REG_BINARY /d "01000000" /f
pause
```
