# Scalys Trustbox 201
BOARD_NAME="Scalys Trustbox 201"
BOARDFAMILY="qoriq"
BOOTCONFIG_DEFAULT="trustbox-201_tfa_defconfig"
[[ $SECUREBOOT = yes ]] && BOOTCONFIG="trustbox-201_tfa_SECURE_BOOT_defconfig" || BOOTCONFIG=${BOOTCONFIG_DEFAULT}
KERNEL_TARGET="current"
SKIP_BOOTSPLASH="yes"
IMAGE_PARTITION_TABLE="msdos"
OFFSET=32

declare -A RCWPATH=( \
	["sd"]="trustsom_tbe201/N_SQPP_0x85BE/rcw_1500.bin" \
)

OPTEE_PLATFORM='trustsom_tbdconnect'

TFABOOT=yes
ATF_PLATFORM='ls1028trustsom'
ATF_BOOT_MODE='sd'

ROOTPWD=root
INSTALL_ZSH=no
AUFS="no"
CRYPTODEV="yes"
FORCE_BOOTSCRIPT_UPDATE="yes"
