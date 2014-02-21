% vi: set wm=3 ai:
file: readme.os2  for dvi2tty
date: 24-May-1995 (I believe)

dvi2tty is a dvi driver for (La)TeX generated dvi files which allows a
preview in text mode sessions (e.g. over telnet) or a rough print on
line printers. As a side effect, one can re-generate an ASCII version of
the original TeX file, even though all the fance formatting stuff
including formulae is, of course, mangled.

This is the OS/2 ``port'' of dvi2tty. Actually, there wasn't anything to
port, I just changed the makefile to use Eberhard Mattes' gcc port emx.
I used gcc version 2.6.3 (emx09 something).  The original makefile lives
on as makefile.unix (love that HPFS stuff!), including it's bugs. I have
just renamed it.  For all other things, see the other readme files and
the source code files.

This archive contains the *.exe files generated with the included
Makefile (which is the same as Makefile.os2), but if you want to
generate them yourself, the next lines tell you how to do it. They also
chat about installing dvi2tty and the docs --- so read on, anyway.

The files in this archive have been downloaded from CTAN (comprehensive
tex archive network) site ftp.shsu.edu. I forgot exactly where they
live, but since the site supports the site index feature, a

  cd ctan:
  quote site index dvi2tty*

should give you the location of the sources. Of course, you have to log
on by means of anonymous ftp first.  The sources compile with one
warning and I have no clue if it is worth bothering since they run quite
well:

  dvi2tty.c: In function `getpages':
  dvi2tty.c:452: warning: comparison between pointer and integer

To make the executable(s) just run

  make all

which will generate dvi2tty.exe and disdvi.exe -- whatever the latter
may be good for. You can also just run

  make dvi2tty

or
  make disdvi

to get one of the above. Then move (or copy) the *.exe file(s) to some
place in your path. I have it separate from the executables of Eberhard
Mattes' wonderful EmTeX distribution so that I don't remove it by
accident one day when updating, but it should be fine there, too, as
long as you use his remove utility program.  To get rid of the object
files you can run

  make clean

but looking at the makefile will make you blush -- it just calls delete. :-)
For all who don't have (gnu?) man installed, which lives on hobbes, I have
also put in a text version of the man page, dvi2tty.1, which is called
dvi2tty.doc.
After moving (copying) the documentation to where you like it to be
(dvi2tty.1 to \man\man1, or what ever your man path may be; or dvi2tty.doc
alternatively) you can remove the rest, except, maybe, the zip file.

A last note: dvi2tty uses, as is, a pager, if you define one in your
config.sys. I use less, a port of which is on most ftp sites for os/2 as
well. If you use in your config.sys

set pager=e:\bin\os2\less.exe -c

(or whereever your pager lives) you can smoothly scroll forward and abckward
with the ususal less commands. I don't know what it does if you don't have a
pager set at all, maybe it looks in the path for one, maybe not. Also, I
don't know if it uses more if it doesn't find less. But I'd get less in any
case -- scrolling back is just too nice every now and then.


Now you are ready to use it! Just type

  dvi2tty filename.dvi

and you'll see your file. You probably can omit the .dvi extension. To see
all the options just type

  dvi2tty

and it will let you know.


Disclaimer: This stuff is as free as the original stuff was, so check the
  other readme files, sources, etc. There is no warranty of any sort nor any
  liability from my side for anything you do with it. It is just as is. You
  use it at your own risk. If your toaster stops working -- too bad.

Have fun.                Stefan A. Deutscher, 24-May-1995, 
                         sad@utkux.utk.edu; (stefand@elphy.irz.hu-berlin.de)
