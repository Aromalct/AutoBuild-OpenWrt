#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. 修改默认IP配置
sed -i 's/192.168.1.1/192.168.2.2/g' openwrt/package/base-files/files/bin/config_generate

#2. 修改system配置
sed -i 's/UTC/CST-8/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/Aroma-OpenWrt/g' openwrt/package/base-files/files/bin/config_generate





