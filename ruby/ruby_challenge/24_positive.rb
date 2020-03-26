# An Array is positive dominant if it contains more unique positive numbers than unique negative numbers. 

# Write a method that will take an array as it's argument, and will return true if the array is positive dominant, 
# or false if it is not.

# Note, you may receive some other data types in the arrays. These should be ignored.

def positive_dominant(arr)
    #Your code here
    arr_uniq = arr.uniq
    pos_arr = []
    neg_arr = []
    arr_uniq.map do |x|
        if x > 0
            pos_arr.push(x)
        else
            neg_arr.push(x)
        end
    end

    if pos_arr.length > neg_arr.length
        return true
    else
        return false
    end

end


puts positive_dominant([5, 99, -3, -8, 832, -3, -8]) # should return true (as there are 3 unique positive numbers, and only 2 unique negative numbers)
puts positive_dominant([2, 2, 2, -5, 2, 2, 2, -3]) # should return false
puts positive_dominant([2, 4, 6, -6, -4, -2]) # should return false

puts positive_dominant(["String", 34, true]) # should return true