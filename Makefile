# lsupnp Makefile 

CC = gcc
CFLAGS = -g -O0 -Wall -std=gnu99
LDFLAGS = -g

LIBSRC = utils.c
LIBOBJ = $(LIBSRC:%.c=%.o)

all: upnp-discover

lsupnp: lsupnp.o $(LIBOBJ)
	$(CC) $(LDFLAGS) $(LIBOBJ) upnp-discover.o -o upnp-discover

clean:
	rm -f $(LIBOBJ) upnp-discover.o upnp-discover

.PHONY: clean

