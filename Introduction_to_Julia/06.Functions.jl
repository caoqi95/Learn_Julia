#=
Topics:
    1. How to declare a function
    2. Duck-typing in Julia
    3. Mutating vs. non-mutating functions
    4. Some higher  order functions: map(), broadcast()
=#

# 1. How to declare a function
# 1) requires 'function' and 'end' keywords
function sayhi(name)
    println("Hi $name, it's great to see you!")
end
sayhi("caoqi95")


function f(x)
    x^2
end
println(f(4))

# 2) declare function in a single line
sayhi2(name) = println("Hi $name, it's great to see you!")
f2(x) = x^2
sayhi2("cao")
println(f2(5))

# 3) "anonymous" functions
sayhi3 = name -> println("Hi $name, it's great to see you!")
f3 = x -> x^2
sayhi3("qi")
println(f3(6))



# 2. Duck-typing in Julia
# "if it quacks like a duck, it's a duck."
# Julia functions will just work on whatever inputs make sense.
# For example, 'sayhi' works on the name of this minor tv character,
# written as an integer...
sayhi(55595742)

# And f will work on a matrix
A = rand(3, 3)
println(A)
println(f(A))

# f will also work on a string like "hi"
# because * is defined for string inputs as string concatenation
println(f("hi"))
# On the other hand, f will not work on a vector.
# Unlike A^2, which is well-defined, the meaning of
# v^2 for a vector v is not a well-defined algebraic operation.
# will get error:
# v = rand(3)
# f(v)



# 3. Mutating vs. non-mutating functions
# by convention, functions followed by ! alter their contents
# and functions lacking ! do not.
# For example, let's look at the difference betweent 'sort' and 'sort!':
v = [3, 5, 2]
println("sorted v: ", sort(v))
println("v: ", v)

# sort(v) returns a sorted array that contaions same elements as v,
# but v is left unchanged.

# On the other hand, when we run sort!(v), the contents of v are sorted
# within the array v.
println("sorted v: ", sort!(v))
println("v: ", v)




# 4. Some higher  order functions: map(), broadcast()

#= 1) map()
 map is a "higher-order" function in Julia that takes a function as one of
 its input arguments. map then applies that function to every element of
 the data structure you pass it. For example, executing:
 map(f, [1, 2, 3])

 will give you an output array where the function f has been applied to all
 elements of [1, 2, 3]
=#
ans = map(f, [1, 2, 3])
println(ans)

# We could pass to map an anonymous function rather than a named function,
# such as:
ans = map(x -> x^3, [1, 2, 3])
println(ans)


#= 2) broadcast()
broadcast is another higher-order function like map. broadcast is a
generalization of map, so it can do every thing map can do and more.
The syntax for calling broadcast is the same as for calling map.
=#
ans = broadcast(f, [1, 2, 3])
println(ans)


# some syntactic sugar for calling broadcast is to place a . betweent
# the name of the function you want to broadcast and it's input arguments.
# For example:
# broadcast(f, [1, 2, 3]) is the same as f.([1, 2, 3])
ans = f.([1, 2, 3])
println(ans)
@assert broadcast(f, [1, 2, 3]) == f.([1, 2, 3])

#=
Notice again how  difference this is from calling
    f([1, 2, 3])
we can square every element of a vector, but we can't square a vector!
To drive home the point, let's look at difference betweent
    f(A) and f.(A)
A is a matrix.
=#
A = [i + 3*j for j in 0:2, i in 1:3]
println(A)
println(f(A))

#= As before we see that for a matrix A
    f(A) = A^2 = A * A
=#

# On the other hand,
B = f.(A)
println(B)

# this result contains the squares of all elements of A.

# This dot syntax for broadcasting allows us to write relatively
# comlex compound elementwise expressions in a way that looks natural
# or closer to mathematical notation. For:
A .+ 2 .* f.(A) ./A

# instead of
broadcast(x -> x + 2 * f(x) / x, A)
