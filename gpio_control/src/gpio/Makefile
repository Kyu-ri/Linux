# Makefile for GPIO

LD_OBJ     = ../../obj
BIN        = ./bin
OBJ        = ./obj
SRC        = ./src
HDR        = ./hdr

CC         =  gcc
DEFINES    =  
OPT        = -O
DEBUG_OPT  = -DDEBUG
CFLAGS     = $(DEFINES) $(OPT) 
LD_OPTS    =

INCLUDES   = -I$(HDR) -I../ -I../../hdr/ -I/util/include -I/util/X11/include
LIBS       = -lm -lbcm2835 -lwiringpi

SRCS       = $(SRC)/HIL_gpio.c \
			 $(SRC)/dev_gpio.c \
			 $(SRC)/bcm_gpio.c \
			 $(SRC)/wiringpi_gpio.c 

OBJS       = $(OBJ)/HIL_gpio.o \
			 $(OBJ)/dev_gpio.o \
			 $(OBJ)/bcm_gpio.o \
			 $(OBJ)/wiringpi_gpio.o 

all: $(OBJS) $(SRCS) Makefile
	ld $(LD_OPTS) -r -o $(LD_OBJ)/gpio.o $(OBJS)

$(OBJ)/%.o:$(SRC)/%.c
	${CC} ${CFLAGS} $(INCLUDES) -c $(SRC)/${*F}.c -o $(OBJ)/${*F}.o

clean:
	rm -f *.a $(OBJS)

depend:
	makedepend -- $(CFLAGS) $(INCLUDES) -- $(SRCS) 
