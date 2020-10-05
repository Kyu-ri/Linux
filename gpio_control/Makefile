########################################
# 
########################################

CC           = cc
OPT          = -g -v -save-temps
DEFINES      = 
DEBUG_OPT    = -DDEBUG -DDISPLAY 
CFLAGS       = $(DEFINES) $(OPT) $(DEBUG_OPT)
LD_OPT       =

LIB_PATH     =

LIBS         = -L$(LIB_PATH) -lm -lbcm2835 -lwiringPi

SRC          = ./src
OBJ          = ./obj
HDR          = ./hdr
BIN          = ./bin

MAIN         = $(SRC)/main
GPIO		 = $(SRC)/gpio
UTIL		 = $(SRC)/util

full: Makefile $(SRCS)
	(cd $(UTIL); $(MAKE) "CC=$(CC)" "CFLAGS = $(CFLAGS)")
	(cd $(GPIO); $(MAKE) "CC=$(CC)" "CFLAGS = $(CFLAGS)")
	(cd $(MAIN); $(MAKE) "CC=$(CC)" "CFLAGS = $(CFLAGS)")
	$(CC) $(OBJ)/*.o $(CFLAGS) -o program $(LIBS)

full_clean:
	(cd $(MAIN); $(MAKE) clean)
	(cd $(UTIL); $(MAKE) clean)
	(cd $(GPIO); $(MAKE) clean)
	rm -f $(OBJ)/*.o program

clean:
	rm -f program $(OBJ)/*

tags:
	ctags -R ./

depend:
	(cd $(MAIN); $(MAKE) "CC=$(CC)" "CFLAGS = $(CFLAGS)" depend)
	(cd $(GPIO); $(MAKE) "CC=$(CC)" "CFLAGS = $(CFLAGS)" depend)
	(cd $(UTIL); $(MAKE) "CC=$(CC)" "CFLAGS = $(CFLAGS)" depend)
