module interfacetestMod
    ! This module contains the routine that utilizes a function as an input argument.  Note that it doesn't not 'use' 
    ! the module that includes the function arguments.  I think you can use the interface to overload the type of
    ! functions the routine can use.

    implicit none
    private ! make private by default

    public :: calledroutine ! make routine public

    contains 
        subroutine calledroutine(interfacefunction,x,y,out)
            ! This routine would be similar to a routine found in another module

            real, intent(in)  :: x, y
            real, intent(out) :: out

            ! Interface block is necessary to call the specific function as an argument to this routine.  Making this 
            ! public makes the interface public too.
            interface
                function interfacefunction(x,y) result (z)
                    ! Only need to specify the kind and intent of the variables.  As such you need to go look at source function
                    real, intent(in) :: x,y ! must have intent
                    real :: z ! Don't need an intent if using 'result' as here
                end function
            end interface

            out = interfacefunction(x,y) + x + y   

        end subroutine calledroutine
end module interfacetestMod