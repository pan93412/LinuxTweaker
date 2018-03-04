#!/usr/bin/env bash
echo "## Wayland2Xorg 工具 ##"
echo "請先使用 root 權限使用本工具"
session="`grep 'WaylandEnable' /etc/gdm3/daemon.conf`"
if [ "$session" == "WaylandEnable=false" ]; then
    echo "你已經更換過了。"
    exit 0
fi
read -p "按一下 Enter 以停用 Wayland"
cp /etc/gdm3/daemon.conf /etc/gdm3/daemon.conf-bak
sed -i 's/#WaylandEnable/WaylandEnable/g' /etc/gdm3/daemon.conf
echo "完成！"
sleep 5
reboot 
