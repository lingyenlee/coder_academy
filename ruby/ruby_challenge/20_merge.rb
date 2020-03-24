# Create a method that takes two arrays as it's arguments, and combines them by taking elements from each array in turn.

# Note: The arrays may be of different lengths. 

# E.g. with_our_powers_combined(["a", "b", "c", "d", "e"], [1, 2, 3, 4, 5]), should return ["a", 1, "b", 2, "c", 3, "d", 4, "e", 5]

# E.g. with_our_powers_combined([1, 2, 3], ["a", "b", "c", "d", "e", "f"]), should return [1, "a", 2, "b", 3, "c", "d", "e", "f"]

# E.g. with_our_powers_combined([], []), should return []

def with_our_powers_combined(arr1, arr2)
    
    merge_arr = []
    if arr1.length == arr2.length
        arr1.zip(arr2).each do |x,y|
            merge_arr.push(x,y)
        end
    else 
        arr1.zip(arr2).each do |x,y|
            merge_arr.push(x,y)
           
        end
        for x in arr2[arr1.length..-1]
        merge_arr.push(x)
        end
    end
   
    return merge_arr.to_s

end

puts with_our_powers_combined(["a", "b", "c", "d", "e"], [1, 2, 3, 4, 5]) # should return ["a", 1, "b", 2, "c", 3, "d", 4, "e", 5]
puts with_our_powers_combined([1, 2, 3], ["a", "b", "c", "d", "e", "f"]) # should return [1, "a", 2, "b", 3, "c", "d", "e", "f"]
puts with_our_powers_combined([], []) # should return []