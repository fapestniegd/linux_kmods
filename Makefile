#http://tldp.org/LDP/lkmpg/2.6/html/
ifeq ($(KERNELRELEASE),)

KERNELDIR ?= /opt/local/src/linux-source-2.6.32/
PWD := $(shell pwd)

.PHONY: build clean

build:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
else

$(info Building with KERNELRELEASE = ${KERNELRELEASE})
obj-m :=    hello-1.o
obj-m :=    hello-2.o
obj-m :=    hello-3.o
obj-m :=    hello-4.o
obj-m :=    hello-5.o
obj-m +=    startstop.o
startstop-objs := start.o stop.o
obj-m +=    chardev.o
obj-m +=    procfs1.o
obj-m +=    procfs2.o
obj-m +=    procfs3.o

endif
