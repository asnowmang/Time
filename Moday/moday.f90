function moday(i)
  implicit none
  ! Program to calculate days in each month
  integer  :: moday
  integer  :: i

  if (i == 2) then                          ! February
     moday = 28
  elseif (mod(i, 2) == 0 .and. i < 8) then  ! January
     moday = 30                             ! through
  elseif (mod(i, 2) /= 0 .and. i < 8) then  ! July
     moday = 31
  elseif (mod(i, 2) == 0) then              ! August
     moday = 31                             ! through
  else                                      ! December
     moday = 30
  endif
  
end function moday
