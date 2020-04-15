# 1. Packages
# The first time you use a package on a gievn Julia installation,
# you need to use the package manager to explicitly add it:

#=
using Pkg  # using a installed package
Pkg.add("Example")  # install a package
=#


# 2. Plotting
# using Pkg
# Pkg.add("Plots")
using Plots # using Plots package
gr() # using the GR backend

x = -3:0.1:3
f(x) = x^2
y = f.(x)

plot(x, y, label="line")
scatter!(x, y, label="points")


# subplot
p1 = plot(x, x)
p2 = plot(x, x.^2)
p3 = plot(x, x.^3)
p4 = plot(x, x.^4)
# create 2x2 subplots
plot(p1, p2, p3, p4, layout = (2, 2), legend = false)
# create 4x1 subplots
plot(p1, p2, p3, p4, layout = (4, 1), legend = false)
