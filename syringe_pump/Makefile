# /* 
# Author: Claire Huo
# Date: Jul 1st, 2021
# */


# @Flags: 
# -fsanitize=cfi: Enable all CFI checks.
# -flto: Link time optimization.
# -fvisibility=hidden: Set default LTO visibility.
# -fno-sanitize-trap=all: Show descriptive error messages when CFI violation is detected.


CC = clang
CFIFLAGS = -fsanitize=cfi -flto -fvisibility=hidden -fno-sanitize-trap=all 
OBJ = led.o LiquidCrystal.o syringePump.o util.o

all : syringe syringe_cfi clean 

led.o: lib/led.h

LiquidCrystal.o: lib/LiquidCrystal.h

syringePump.o: lib/LiquidCrystal.h lib/util.h lib/led.h

util.o: lib/util.h

syringe: $(OBJ)
	@echo Compiling $@
	$(CC) -o syringe $(OBJ)

syringe_cfi: $(OBJ)
	@echo Compiling $@
	$(CC) $(CFIFLAGS) -o syringe_cfi $(OBJ)

.PHONY : clean

clean:
	rm -f *.o