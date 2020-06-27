#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. 修改默认IP配置
sed -i 's/192.168.1.1/192.168.2.2/g' openwrt/package/base-files/files/bin/config_generate

#2. 修改默认登录密码
sed -i 's/root::0:0:99999:7:::/root:$1$6CWbO1jh$mGZ1whdJxPQJVpO4OFMnc.:18276:0:99999:7:::/g' openwrt/package/base-files/files/etc/shadow

#3. 修改时区配置
sed -i 's/UTC/CST-8/g' openwrt/package/base-files/files/bin/config_generate
