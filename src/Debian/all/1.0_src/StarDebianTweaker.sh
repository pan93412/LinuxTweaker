#!/bin/bash
echo "+----------------------+"
echo "|  Star Debian Tweaker |"
echo "+----------------------+"
echo "Star Debian Tweaker"
echo "依照個人的習慣來製作的 Debian 系統優化程序。"
echo "版本： 1.0 通用版本"
echo "請先使用 su 或者是 sudo 開啟這個 sh 檔案"
read -p "  --> 按任意鍵繼續！"
echo "正在增加 unstable 軟體源 ..."
apt install software-properties-common -y
add-apt-repository "deb http://ftp.tw.debian.org/debian unstable main non-free contrib"
apt update
echo "正在更新系統 ..."
apt full-upgrade -y
echo "正在更新 Firefox..."
apt install firefox firefox-l10n-zh-tw -y
apt purge firefox-esr firefox-esr-l10n-zh-tw -y
echo "正在將輸入法更換爲 ibus ..."
sleep 5
apt purge scim -y
apt install ibus ibus-chewing -y
echo "正在安裝媒體解碼器 ..."
apt install gstreamer1* -y
echo "正在清理系統 ..."
apt purge software-properties-common -y
apt autoremove --purge -y
apt autoclean
echo "五秒後自動重啟系統 :)"
sleep 5
reboot
