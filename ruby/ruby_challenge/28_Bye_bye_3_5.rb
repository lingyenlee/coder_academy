# Create a method called bye_bye_3_and_5 that takes a non-negative integer
# as it's argument. The method should return an array of numbers between 1 
# and the argument (inclusive) that are not divisible by 3 or 5.

def bye_bye_3_and_5(num)
    #Your code here
    if num < 0
        raise StandardError.new("Number should be non-negative")
    else
        num_array = [*1..num]
        not_d_3_5 = []
         num_array.each.map {|x| (x % 3 != 0 && x % 5 != 0) ? not_d_3_5.push(x) : nil }
        # num_array.each.map {|x| (x % 3 != 0 && x % 5 != 0) ? x : nil }
         return not_d_3_5.to_s
    end

end

puts bye_bye_3_and_5(4) #return [1, 2, 4]
puts bye_bye_3_and_5(5) # [1, 2, 4]
puts bye_bye_3_and_5(13) # [1, 2, 4, 7, 8, 11, 13]
puts bye_bye_3_and_5(0) # return []

