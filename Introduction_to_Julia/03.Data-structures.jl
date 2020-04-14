#= Types of data structures covered:
    1. Tuples
    2. Dictionaries
    3. Arrays
=#

# 1. Tuples
#= We can create a tuple by enclosing an ordered collection
of elements in ( ):
Syntax:
    (item1, item2, ...)
=#
myfavoriteanimals = ("cats", "dogs", "pandas")
println(myfavoriteanimals)

# we can index into this tuple
println(myfavoriteanimals[1])

# but since tuples are immutable, we can't update it:
# myfavoriteanimals[1] = "otters"

# Named Tuples
#= Syntax:
    (name1 = item1, name2 = item2, ...)
=#
myfavoriteanimals = (bird="penguins", mammal = "cat", marsupial="sugargliders")
println(myfavoriteanimals)

# Like the regular Tuples, NamedTuples are ordered, so we can
# retrieve their elements via indexing:
println(myfavoriteanimals[1])

# They alos add the special ability to access values by their name:
println(myfavoriteanimals.bird)



#= 2. Dictionaries
    Syntax:
        Dict(key1 => value1, key2 => value2, ...)
=#
myphonebook = Dict("Jenny" => "867-5307", "Ghostbusters" => "555-2368")
println(myphonebook)
println(myphonebook["Jenny"])
# add
myphonebook["Kramer"] = "555-FILK"
println(myphonebook)
# delete
pop!(myphonebook, "Kramer")
println(myphonebook)




#= 3. Arrays
    Syntax:
        [item1, item2, ...]
=#
myfriends = ["Ted", "Robyn", "Barney"]
println(myfriends)

# push! = add an element to the end of an array
push!(myfriends, "Jack")
println(myfriends)

# pop! = remove the last element of an array
pop!(myfriends)
println(myfriends)
