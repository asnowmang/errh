SHELL	= /bin/sh
FC	= gfortran
FLAGS	= -Wall -Wextra -Wconversion -O3
SOURCE	= bubblesort.f90 /usr/local/lib/errh/errh.a
TARGET	= bs

all:
	$(FC) $(FLAGS) $(SOURCE) -o $(TARGET)

clean:
	-rm -f $(TARGET)
