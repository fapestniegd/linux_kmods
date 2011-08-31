obj-m := allocator.o
KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

default:
$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

clean:
	/bin/rm allocator.ko allocator.mod.c allocator.mod.o allocator.o Kconfig modules.order Module.symvers .*
