def decimal_to_binary (decimal)
    # your code here
    # 1. divide decimal by 2
    # 2. get the quotient and save remainder to array
    # 3. divide the number by the quotient and 
    # 4. save the remainder to the front of the array
    # 5. continue until the quotient is 1 and save to front of array
    # 6. return the array of numbers by joining together
    
    q = decimal / 2
    r = decimal % 2
    
    # set a base case    
    if decimal/2 < 2
        return [r,q] 
    else
        return decimal_to_binary(decimal/2), r
    end
end

puts decimal_to_binary(7)