TARGET ?= 1024

build:
	@echo "----------------------------------------"
	@echo "- Building the source...               -"
	@echo "----------------------------------------"
	cc 	-o out.0 src/mmd_serial.c
	cc -O1 	-o out.1 src/mmd_serial.c
	cc -O2 	-o out.2 src/mmd_serial.c
	cc -O3 	-o out.3 src/mmd_serial.c

run:
	@echo "----------------------------------------"
	@echo "- Time the program...                  -"
	@echo "----------------------------------------"
	@echo " No optimization: "
	@time ./out.0 $(TARGET) | awk -F ' ' '{print $3}'
	@ls -la | grep "out.0"
	@echo "----------------------------------------"
	@echo " O1 optimization: "
	@time ./out.1 $(TARGET) | awk -F ' ' '{print $3}'
	@ls -la | grep "out.1"
	@echo "----------------------------------------"
	@echo " O2 optimization: "
	@time ./out.2 $(TARGET) | awk -F ' ' '{print $3}'
	@ls -la | grep "out.2"
	@echo "----------------------------------------"
	@echo " O3 optimization: "
	@time ./out.3 $(TARGET) | awk -F ' ' '{print $3}'
	@ls -la | grep "out.3"
	@echo "----------------------------------------"

clean:
	rm out.*
