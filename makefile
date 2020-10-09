SHELL	= /bin/sh
FC	= gfortran
FLAGS	= -Wall -Wextra -Wconversion -O3 -c
SOURCE	= src/errh.f90
TARGET	= errh.a
BINDIR	= /usr/local/lib/errh

all:
	$(FC) $(FLAGS) $(SOURCE)
	ar rcv $(TARGET) *.o
	ranlib $(TARGET)

install:
	install -d $(BINDIR)
	install README.md $(TARGET) $(BINDIR)

clean:
	-rm -f *.o $(TARGET)

uninstall:
	-rm -rf $(BINDIR)

