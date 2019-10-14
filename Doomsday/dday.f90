program dday
  implicit none
  ! Doomsday algorithm
  ! Calculates day of week for given date
  integer  :: year, anchor, day
  integer  :: last
  
  print *, "Year:"
  read (*,*) year
  
  ! Find year's anchor day
  if (year > 1799 .and. year < 1900) then      ! 1800 - 1899
     anchor = 5  ! Friday
  elseif (year > 1899 .and. year < 2000) then  ! 1900 - 1999
     anchor = 3  ! Wednesday
  elseif (year > 1999 .and. year < 2100) then  ! 2000 - 2099
     anchor = 2  ! Tuesday
  elseif (year > 2099 .and. year < 2200) then  ! 2100 - 2199
     anchor = 0  ! Sunday
  endif

  ! Isolate last two digits of year
  last = mod(year, 100)

  ! Print year's doomsday
     if (mod(last, 2) /= 0) then
        last = last + 11
     endif

     print *, 7 - mod(last / 2, 7)

end program dday
