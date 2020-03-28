r = 2
s = 3
ccall((:__interfacetestmodcalledfunc_MOD_addfunction,"imcf.so"),Float32,(Ref{Float32},Ref{Float32}),r,s) == 24.0