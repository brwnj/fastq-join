CC=g++
CFLAGS=-O3 -I.

all: fastq-join

%: %.cpp fastq-lib.cpp fastq-lib.h
	$(CC) $(CFLAGS) $< fastq-lib.cpp -o $@

check:
	prove -j 4 tests

clean:
	rm -rf fastq-join tests/tmp/join*
