include $(TOPDIR)/rules.mk

PKG_NAME:=mypackage
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/mypackage
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=My First OPKG Package
  MAINTAINER:=Tester <tester@example.com>
endef

define Package/mypackage/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) ./files/usr/bin/hello.sh $(1)/usr/bin/hello.sh
endef

define Package/mypackage/postinst
#!/bin/sh
echo "Post-install: hello.sh has been installed!"
endef

define Package/mypackage/postrm
#!/bin/sh
echo "Post-remove: mypackage has been uninstalled!"
echo "Goodbye from hello.sh!"
exit 0
endef

$(eval $(call BuildPackage,mypackage))
