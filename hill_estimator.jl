# Ivonne Blaurock
# powered by Julia 0.6.1
# ------------------------------------------------------
# HILL TAIL ESTIMATOR
# ------------------------------------------------------


function hill(x::Vector{Float64})
    lx=length(x)
    x=sort(abs.(x))
    ly=Int(round(0.1*lx)) # fixed threshold of 10% 
    z=Vector{Float64}(ly)
    for k = 1 : ly
        z[k]=1/((1/k)*sum(log(x[lx-i+1])-log(x[lx-k]) for i in 1:k))
    end
    return z
end
