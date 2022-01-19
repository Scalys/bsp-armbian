pfe stop

setenv kernel_addr_r 0x96000000

ext4load mmc 0:1 $kernel_addr_r /boot/Image
ext4load mmc 0:1 $fdt_addr_r /boot/trustbox.dtb

env exists secureboot && ext4load mmc 0:1 $fdtheader_addr_r /boot/trustbox_dtb.hdr 
env exists secureboot && esbc_validate $fdtheader_addr_r || esbc_halt;

env exists secureboot && ext4load mmc 0:1 $kernelheader_addr_r /boot/Image.hdr 
env exists secureboot && esbc_validate $kernelheader_addr_r || esbc_halt;

mtdparts
setenv bootargs "console=ttyS0,115200 earlycon=uart8250,mmio,0x21c0500 lpj=250000 noinitrd root=/dev/mmcblk0p1 rootfstype=ext4 rw rootwait $mtdparts"

booti $kernel_addr_r - $fdt_addr_r
