program bubblesort
  implicit none
  integer  :: nums(10)
  integer  :: n, t, ierr, sorted
  character(len=100)  :: ioerrmsg

! Initialize error subroutine  
  interface
     subroutine errh(ierr, ioerrmsg)
       integer, intent(in)  :: ierr
       character(len=100), intent(in)  :: ioerrmsg
     end subroutine errh
  end interface

! Parse input to array
  open(12, file="nums", status="old", form="formatted", iostat=ierr, err=9, iomsg=ioerrmsg)

  do n = 1, 10
     read(12, *, iostat=ierr, iomsg=ioerrmsg) nums(n)
     
     if (ierr .ne. 0) then
        goto 9
     else
        continue
     endif
  enddo

  close(12)

! Sort
  sorted = 0
  do while (sorted .lt. 9)
     do n = 2, 10
        if (nums(n - 1) .gt. nums(n)) then
           t = nums(n)
           nums(n) = nums(n - 1)
           nums(n - 1) = t
           sorted = 0
        else
           sorted = sorted + 1
        endif
     enddo
  enddo

! Print sorted numbers
  do n = 1, 10
     print 68, nums(n)
68   format(I3)
  enddo

9 call errh(ierr, ioerrmsg)

end program bubblesort
