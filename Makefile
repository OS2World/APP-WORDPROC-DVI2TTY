# Makefile for dvi2tty and disdvi       23/01/89   M.J.E. Mol
#
# For BSD Unix use the following CFLAGS definition
# CFLAGS = -Dstrchr=index
#
# This Makefile does not work for MSDOS. Make your 
# own one, or compile by hand.
#
# However, it has been modified to run on OS/2 2.x and above using emx,
# Eberhard Mattes' port of gcc. 
# Stefan A. Deutscher, 24-May-1995, sad@utkux.utk.edu
#
CFLAGS = -s -O
CC = gcc
EXE = .exe

all:	dvi2tty disdvi

clean:
	del dvi2tty.o dvistuff.o

dvi2tty: dvi2tty.o dvistuff.o
	$(CC) $(CFLAGS) -o dvi2tty$(EXE) dvi2tty.o dvistuff.o

disdvi: disdvi.c commands.h
	$(CC) $(CFLAGS) -o disdvi$(EXE) disdvi.c

dvi2tty.o: dvi2tty.c dvi2tty.h

dvistuff.o: dvistuff.c dvi2tty.h commands.h

# and that's it.
