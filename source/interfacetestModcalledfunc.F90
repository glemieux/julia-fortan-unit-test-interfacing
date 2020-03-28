module interfacetestModcalledfunc
    ! This module contains simple test functions

    implicit none
    private ! make private by default

    public :: addfunction, multiplyfunction

    contains
        function addfunction(r,s) result(t)
            real, intent(in) :: r,s ! use intent to avoid warning from compiler
            real :: t
            t = r + s        
        end function addfunction

        function multiplyfunction(r,s) result(t)
            real, intent(in) :: r,s ! use intent to avoid warning from compiler
            real :: t
            t = r * s        
        end function multiplyfunction

end module interfacetestModcalledfunc