#CROSS_COMPILE=/home/bosch/arm-cross-compiler/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-
CROSS_COMPILE=
GCC=$(CROSS_COMPILE)gcc
CFLAGS= -Wall 
INPUT = writer.c
OUTPUT= writer
.SILENT: clean
default: $(INPUT)
	echo "Building writer"
	$(GCC) $(CFLAGS) $(INPUT) -o $(OUTPUT)

clean:
	if [ ! -e $(OUTPUT) ]; then
	else \
		rm $(OUTPUT); \
	fi