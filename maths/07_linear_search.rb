def linear_search(num_array, value)
    # loop through every number in the array
    for num in num_array
        if num == value
            return num_array.index(num)
        else 
            return nil
        end
    end
end

puts linear_search([*1..10], 11)