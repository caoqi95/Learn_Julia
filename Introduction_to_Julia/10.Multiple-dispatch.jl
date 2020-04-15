#=
In this file, we'll explore multiple dispatch,
which is a key feature of Julia.

Multiple dispatch makes software generic and fast!
=#

# Specifying the types of our input arguments
# We have the option to tell Julia explicitly what types
# our input arguments are allowed to have.
# For example, let's write a function `foo` that only takes strings as inputs:
foo(x::String, y::String) = println("My inputs x and y are strings!")

foo("hello", "hi")

# but when the inputs are integer will get error:
# foo(3, 4)

# To get 'foo' to work on integer (Int) inputs, let's take ::Int onto our input
# arguments when we declare 'foo'.
foo(x::Int, y::Int) = println("My inputs x and y are integers!")
foo(2, 3)

# Now foo works on integers! But look, foo also still works when x and y are strings!
foo("hello", "hi")

#=
This is starting to get to the heart of multiple dispatch. When we declared

    foo(x::Int, y::Int) = println("My inputs x and y are both integers!")
we didn't overwrite or replace

    foo(y::String, y::String)
Instead, we just added an additional method to the generic function called foo.

A generic function is the abstract concept associated with a particular operation.

For example, the generic function + represents the concept of addition.

A method is a specific implementation of a generic function for particular argument types.

For example, + has methods that accept floating point numbers, integers, matrices, etc.

We can use the methods to see how many methods there are for foo.
=#
println(methods(foo))

#=
So, we now can call foo on integers or strings. When you call foo on a particular set of arguments, Julia will infer the types of the inputs and dispatch the appropriate method. This is multiple dispatch.

Multiple dispatch makes our code generic and fast. Our code can be generic and flexible because we can write code in terms of abstract operations such as addition and multiplication, rather than in terms of specific implementations. At the same time, our code runs quickly because Julia is able to call efficient methods for the relevant types.

To see which method is being dispatched when we call a generic function, we can use the @which macro:
=#
println(@which foo(3, 4))


#=
And we can continue to add other methods to our generic function foo. Let's add one that takes the abstract type Number, which includes subtypes such as Int, Float64, and other objects you would think of as numbers:
=#
foo(x::Number, y::Number) = println("My inputs x and y are numbers!")

foo(3.0, 4.0)

# We can also add a fallback, duck-typed method for 'foo' that takes inputs of any type:
foo(x, y) = println("I accept inputs of any type!")

v = rand(3)
foo(v, v)
