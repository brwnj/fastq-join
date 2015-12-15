CC=gcc
CFLAGS=-Wall -Wno-unused-function -O2
PROG=fastq-join

all: $(PROG)

fastq-join: fastq-join.cpp fastq-lib.cpp fastq-lib.h
	$(CC) $(CFLAGS) $< fastq-lib.cpp -o $@

check:
	prove -j 4 tests

clean:
	rm -rf fastq-join tests/tmp/join*
