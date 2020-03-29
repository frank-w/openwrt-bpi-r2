#
# Copyright (C) 2014-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define KernelPackage/mt6625l-bt
  SUBMENU:=Wireless Drivers
  TITLE:=Mediatek MT6625L Bluetooth support
  URL:=http://www.datasheetcafe.com/mt6625l-datasheet-chip-mediatek/
  KCONFIG:= \
	CONFIG_MTK_COMBO_BT=m \
	CONFIG_MTK_COMBO_BT_HCI=y
  DEPENDS:=@TARGET_mediatek +kmod-mt6625l-wlan-gen2
  FILES:= \
        $(LINUX_DIR)/drivers/misc/mediatek/connectivity/common/conn_soc/linux/pub/stp_chrdev_bt.ko
#  AUTOLOAD:=$(call AutoProbe,stp_chrdev_bt)
endef

define KernelPackage/mt6625l-bt/description
  Bluetooth support for Mediatek MT6625L connectivity chip module
endef

$(eval $(call KernelPackage,mt6625l-bt))

