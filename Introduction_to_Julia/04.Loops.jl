# 1. while loop

myfriends = ["Ted", "Robyn", "Barney", "Lily", "Marshall"]

let i = 0
    while i <= length(myfriends)
        friend = myfriends[i]
        println("Hi $friend, it's great to see you!")
        i += 1
    end
end


# 2. for loop
for n in 1:10
    println(n)
end

# Note that the index is start at 1 not 0 in Julia


# 3. array comprehension
c = [i+j for i in 1:5, j in 1:5]
