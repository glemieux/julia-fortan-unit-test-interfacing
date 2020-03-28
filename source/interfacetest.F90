include 'interfacetestMod.F90'
include 'interfacetestModcalledfunc.F90'
program interfacetest
    ! This is a simple interface testing program that was written to check my understanding of interfaces in fortran.
    ! I will attempt to build a library out of the interface modules to produce a similar output via Julia
    
    ! contains the calledroutine that uses functions as args
    use interfacetestMod 

    ! contains simple functions to be used by the routine
    use interfacetestModcalledfunc, only : afunc => addfunction
    use interfacetestModcalledfunc, only : bfunc => multiplyfunction

    implicit none

    real :: a = 4.0, b = 5.0
    real :: c_add, c_multi

    ! Try out calling routine with two different function arguments
    call calledroutine(afunc,a,b,c_add)
    call calledroutine(bfunc,a,b,c_multi)

    print *, 'c_add=a+b+a+b=',c_add
    print *, 'c_muli=a*b+a+b=',c_multi

 end program interfacetest