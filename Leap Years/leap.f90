function leap (year)
  implicit none
  ! Logical function that determines whether or not the input is a leap year
  ! Leap years have a 400 year cycle. Every 4th year is a leap year unless it's a centennial
  ! Every centennial is skipped unless the year is divisible by 400, e.g. 1600, 2000.

  logical  :: leap
  integer  :: year
  
  if (mod(year, 400) == 0) then
     leap = .true.
  elseif (mod(year, 100) == 0) then
     leap = .false.
  elseif (mod(year, 4) == 0) then
     leap = .true.
  else
     leap = .false.
  endif

end function leap
