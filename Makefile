KERNEL_SOURCE := /lib/modules/$(shell uname -r)/source/usr

CPPFLAGS := -I/usr/include -D_GNU_SOURCE
CFLAGS := -g -Wall -W -Wextra -O2
LDFLAGS := $(CFLAGS)

all: notisys

notisys: notisys.o
notisys.c: /usr/include/linux/fanotify.h fanotify-syscalllib.h

clean:
	rm -f notisys notisys.o *.orig *.rej
