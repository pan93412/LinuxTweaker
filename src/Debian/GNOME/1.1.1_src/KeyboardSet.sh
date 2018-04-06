#!/bin/bash
echo " # 中文鍵盤設定工具 # "
echo "請使用目前的使用者登入，勿使用 su / sudo 開啟！"
read -p "按任意鍵開始"
gsettings set org.gnome.desktop.input-sources sources "[('ibus', 'chewing')]"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Primary>space']"
echo "All done."
