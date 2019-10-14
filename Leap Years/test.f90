program test
  implicit none
  integer       :: year
  
  interface                      ! Initiate function
     function leap(year)
       logical  :: leap
     end function leap
  end interface
  

  read (*,*) year
  print *, leap(year)

end program test
  
