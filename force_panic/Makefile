obj-m := force_panic.o
KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

default:
$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

clean:
	rm force_panic.ko  force_panic.mod.c  force_panic.mod.o  force_panic.o  modules.order  Module.symvers
