#
# This Makefile serves two purposes:
# 1) If the user types "make" without having run "configure", we suggest running configure.
# 2) Our build system is written for GNU make, and makes liberal users of its features.
#    We therefore put it into "GNUmakefile", which is picked up by GNU make, but ignore by
#    other make versions, such as BSD make.
#    Thus, if the user has BSD make, it will run this Makefile instead -- and we inform
#    them that they need to use GNU make to compile GAP.
#
.DEFAULT:
	@if test -f GNUmakefile ; then \
	    echo "Please use GNU make to build GAP (try 'gmake' or 'gnumake')" ; \
	  else \
	    echo "You need to run ./configure before make (please refer to INSTALL for details)" ; \
	  fi
all: .DEFAULT