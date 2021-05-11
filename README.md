# errh
A simple Fortran 90 error handling subroutine that records iostat as ierr. Merely have an if statement check ierr. If it doesn't equal zero, call errh while passing ierr and ioerrmsg.
## Usage
#### During reads/writes
    read(10, *, ierr, ioerrmsg)
#### Calling errh
    call errh(ierr, ioerrmsg)
