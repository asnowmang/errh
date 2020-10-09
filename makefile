fc = gfortran
in = bubblesort.f90 errh.f90
out = bs
flags = -Wall -Wextra -O3

all: $(in)
	$(fc) $(flags) $(in) -o $(out)
