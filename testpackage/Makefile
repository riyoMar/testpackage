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
  MAINTAINER:=Your Name <you@example.com>
endef

define Package/mypackage/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) ./files/usr/bin/hello.sh $(1)/usr/bin/hello.sh
endef

# Optional: include postinst script
define Package/mypackage/postinst
#!/bin/sh
echo "Post-install: hello.sh has been installed!"
endef

$(eval $(call BuildPackage,mypackage))
