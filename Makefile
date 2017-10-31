KERNELDIR:=/home/david/raspi/linux
PWD:=$(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR)  M=$(PWD) modules
clean:
	$(MAKE) -C $(KERNELDIR)  M=$(PWD) modules clean
	rm -fr modules.order
obj-m += test_netlink_kmodule.o

