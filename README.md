# Julia - fortran Unit Testing Interface Test

This is a scratch project to test using Julia's native `ccall` to interface with fortran code (like fates).


## References

https://stackoverflow.com/questions/28414749/correctly-building-fortran-libraries-and-using-them-to-build-applications
https://docs.oracle.com/cd/E19957-01/805-4940/6j4m1u7ov/index.html
https://docs.julialang.org/en/v1/manual/calling-c-and-fortran-code/#Fortran-Wrapper-Example-1
https://craftofcoding.wordpress.com/2017/02/26/calling-fortran-from-julia-i/
https://craftofcoding.wordpress.com/2017/03/01/calling-fortran-from-julia-ii/

## To Do

[ ] Figure out how to 'stack' modules that use other modules
[ ]

## Log

*03/27/2020*: Managed to create library using just the single module file containing the `addfuction` function and to call that function using ccall (from the julia CLI).  Note that writing procedures within `contains` sections of module files means that the function to be called has that module file name prepending to the function name (i.e. `interfracetestmod_MOD_addfunction`).