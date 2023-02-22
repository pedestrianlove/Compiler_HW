build:
	cc 	-o out.0 src/mmd_serial.c
	cc -O1 	-o out.1 src/mmd_serial.c
	cc -O2 	-o out.2 src/mmd_serial.c
	cc -O3 	-o out.3 src/mmd_serial.c

run:
	time ./out.0
	time ./out.1
	time ./out.2
	time ./out.3

clean:
	rm out.*
