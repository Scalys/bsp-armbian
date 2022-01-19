# Scalys Trustbox 101
BOARD_NAME="Scalys Trustbox 101"
BOARDFAMILY="qoriq"
BOOTCONFIG_DEFAULT="trustbox_qspi_defconfig"
[[ $SECUREBOOT = yes ]] && BOOTCONFIG="trustbox_qspi_secureboot_defconfig" || BOOTCONFIG=${BOOTCONFIG_DEFAULT}
KERNEL_TARGET="current"
IMAGE_PARTITION_TABLE="gpt"

BOOTSCRIPT="boot-trustbox-101.cmd:trustbox_boot.cmd"

OPTEE_PLATFORM='ls1012grapeboard'

ROOTPWD=root
INSTALL_ZSH=no
AUFS="no"
CRYPTODEV="yes"
FORCE_BOOTSCRIPT_UPDATE="yes"

