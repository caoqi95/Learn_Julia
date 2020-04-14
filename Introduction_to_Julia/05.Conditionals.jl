
N = 24

if (N % 3 == 0) && (N % 5 == 0) # `&&` means "AND"; % computes the remainder after division
    println("FizzBuzz")
elseif N % 3 == 0
    println("Fizz")
elseif N % 5 == 0
    println("Buzz")
else
    println(N)
end


# ternary operators
# a ? b : c
#= means:
    if a
        b
    else
        c
    end
=#
x = 23
y = 48
(x > y) ? x : y
