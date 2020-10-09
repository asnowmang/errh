fc = gfortran
in = bubblesort.f90 errh.f90
out = bs
flags = -Wall -Wextra
bubblesort: $(in)
	$(fc) $(flags) $(in) -o $(out)
