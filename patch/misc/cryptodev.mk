cryptodev-y = main.o ioctl.o cryptlib.o authenc.o zc.o util.o
obj-$(CONFIG_CRYPTODEV) += cryptodev.o
cflags-y += -I$(srctree)/$(src)

$(obj)/main.o: $(src)/version.h

$(src)/version.h:
	@echo "#define VERSION \"1.11\"" > $(src)/version.h
