# How to get a string
# En close your characters in "" or """ """ !
s1 = "\nI am a string."
println(s1)
s2 = """I am also a string."""
println(s2)

#=
One difference of single and triple quotes is that,
in the latter case, you can use quotation marks within
your string.
=#
println("""\nLook, Mom, no "errors" !!!\n""")

# Note that '' define a character, but NOT a string !
println(typeof('a'))



# Sting interpolation
name = "Jane"
num_fingers = 10
num_toes = 10

println("\nHello, my name is $name")
println("I have $num_fingers fingers and $num_toes toes.")
println("That is $(num_fingers + num_toes) digits in all!!\n")

# Below are three ways we can concatenate strings!
# The first way is to use the 'string()' function.
# 'string()' converts non-string inputs to strings.
s3 = "\nHow many cats ";
s4 = "is too many cats?\n";
cats = 10

println(string(s3, s4))

# the second way
println(s3*s4)

# the third way
println("$s3$s4")



# Exercises
# 1. Create a string that say "hi" 1000 times.
hi = repeat("hi", 1000)
@assert hi == "hihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihihi"

#= 2. Declare two variables:
    a = 3
    b = 4
 and use them to create two strings:
    "3+4"
    "7"
and store the results in c and d respectively.
=#
a = 3
b = 4
c = string(3, "+", 4)
println(c)
d = string(a+b)
println(d)

@assert c == "3+4"
@assert d == "7"
