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
CXX = clang++
CFIFLAGS = -flto -fvisibility=hidden -fno-sanitize-trap=all 
CXXFALGS = -Weverything -Werror -pedantic -Wno-c++98-compat -Wno-weak-vtables \
	-std=c++11 -O0 -fvisibility=hidden -flto -fno-sanitize-trap=all 
OBJ = led.o LiquidCrystal.o syringePump.o util.o

# all : syringe syringe_cfi vcall vcall_cfi functionPointer clean 
all: functionPointer functionPointer_cfi clean

functionPointer.o:functionPointer.c
	$(CC) -c functionPointer.c

# vcall.o: vcall.cpp
# 	$(CXX) -c vcall.cpp

# led.o: lib/led.h

# LiquidCrystal.o: lib/LiquidCrystal.h

# syringePump.o: lib/LiquidCrystal.h lib/util.h lib/led.h

# util.o: lib/util.h

# syringe: $(OBJ)
# 	@echo Compiling $@
# 	$(CC) $(CFIFLAGS) -o syringe $(OBJ)

# syringe_cfi: $(OBJ)
# 	@echo Compiling $@
# 	$(CC) -fsanitize=cfi $(CFIFLAGS) -o syringe_cfi $(OBJ)

# vcall_cfi: vcall.o
# 	$(CXX) $(CXXFALGS) -fsanitize=cfi-vcall -o vcall_cfi vcall.o

# vcall: vcall.o
# 	$(CXX) $(CXXFALGS) -o vcall vcall.o

functionPointer: functionPointer.o
	$(CC) $(CFIFLAGS) -o functionPointer functionPointer.o

functionPointer_cfi: functionPointer.o
	$(CC) $(CFIFLAGS) -fsanitize=cfi -o functionPointer functionPointer.o

.PHONY : clean

clean:
	rm -f *.o