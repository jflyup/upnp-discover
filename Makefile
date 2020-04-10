# lsupnp Makefile 

CC = gcc
CFLAGS = -g -O0 -Wall -std=gnu99
LDFLAGS = -g

LIBSRC = utils.c
LIBOBJ = $(LIBSRC:%.c=%.o)

all: upnp-discover

upnp-discover: upnp.o $(LIBOBJ)
	$(CC) $(LDFLAGS) $(LIBOBJ) upnp.o -o upnp-discover

clean:
	rm -f $(LIBOBJ) upnp.o upnp-discover

.PHONY: clean

