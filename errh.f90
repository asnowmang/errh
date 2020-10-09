!! Implementation example
!! Place in main file before calling subroutine

! interface
!    subroutine errh(ierr)
!      integer, intent(in)  :: ierr
!    end subroutine errh
! end interface
  
subroutine errh(ierr)
  implicit none
  integer, intent(in)  :: ierr
  integer  :: intierr

! Not sure if case can do logic so fix that beforehand
! Also prints initial error message  
  if (ierr .eq. 0) then
     continue
  elseif (ierr .lt. 0) then
     intierr = -1
     print 69, "Error: ", ierr
  else
     intierr = ierr
     print 69, "Error: ", ierr
  endif

! Describes error  
  select case(intierr)
  case(-1)
     print 70, "Unexpected EOF."
  case(0)
     continue
  case(2)
     print 70, "Unexpected EOF."
  case(6)
     print 70, "File not found."
  case(10)
     print 71, "Read error."
  case(11)
     print 72, "write error."
  case(12)
     print 71, "Read error."
  case(13)
     print 72, "write error."
  case(142)
     print 73, "Error when closing file."
  case default
     print 68, "Unknown."
  end select
  
68 format(A8)
69 format(A7, I3)
70 format(A15)
71 format(A11)
72 format(A12)
73 format(A24)
  
end subroutine errh
