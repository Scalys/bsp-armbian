pfe stop
ext4load mmc 0:1 $kernel_addr_r /boot/Image
ext4load mmc 0:1 $fdt_addr_r /boot/dtb/freescale/trustbox.dtb
mtdparts
setenv bootargs "console=ttyS0,115200 earlycon=uart8250,mmio,0x21c0500 lpj=250000 noinitrd root=/dev/mmcblk0p1 rootfstype=ext4 rw rootwait $mtdparts"
booti $kernel_addr_r - $fdt_addr_r

