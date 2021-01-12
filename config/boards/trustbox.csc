# Scalys Trustbox
BOARD_NAME="Scalys Trustbox"
BOARDFAMILY="qoriq"
BOOTCONFIG_DEFAULT="trustbox_qspi_defconfig"
[[ $SECUREBOOT = yes ]] && BOOTCONFIG="trustbox_qspi_secureboot_defconfig" || BOOTCONFIG=${BOOTCONFIG_DEFAULT}
KERNEL_TARGET="current"
IMAGE_PARTITION_TABLE="gpt"


ROOTPWD=root
INSTALL_ZSH=no
AUFS="no"
CRYPTODEV="yes"
FORCE_BOOTSCRIPT_UPDATE="yes"
