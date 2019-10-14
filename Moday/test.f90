program test
  ! Example program to print the number of days in each month
  implicit none
  integer  :: month
  
  interface
     function moday(month)
       integer  :: moday
     end function moday
  end interface

  do month = 1, 12
     print *, moday(month)
  enddo

end program test
