# Scalys Trustbox 401
BOARD_NAME="Scalys Trustbox 401"
BOARDFAMILY="qoriq"
BOOTCONFIG_DEFAULT="trustbox-xl_tfa_defconfig"
[[ $SECUREBOOT = yes ]] && BOOTCONFIG="trustbox-xl_tfa_SECURE_BOOT_defconfig" || BOOTCONFIG=${BOOTCONFIG_DEFAULT}
KERNEL_TARGET="current"
IMAGE_PARTITION_TABLE="msdos"
OFFSET=32

BOOTSCRIPT="boot-trustbox-401.cmd:trustbox_xl_boot.cmd"

declare -A RCWPATH=( \
	["sd"]="trustbox-xl/NN_NNQNNPNP_3040_0506/rcw_1600_sdboot.bin" \
	["sd_sec"]="trustbox-xl/NN_NNQNNPNP_3040_0506/rcw_1600_sdboot_sben.bin"\
)

OPTEE_PLATFORM='ls1046ardb'

TFABOOT=yes
ATF_PLATFORM='ls1046trustboxxl'
ATF_BOOT_MODE='sd'

FMAN_UCODE='fsl_fman_ucode_ls1046_r1.0_106_4_18.bin'

ROOTPWD=root
INSTALL_ZSH=no
AUFS="no"
CRYPTODEV="yes"
FORCE_BOOTSCRIPT_UPDATE="yes"
