# Larger Than Life

# Create a method that takes an array as it's argument and returns every number 
# that is larger than every number that follows it.
# E.g. larger_than_life([3, 13, 11, 2, 1, 9, 5]), should return [13, 11, 9, 5]      
# (As 13 is larger than 11, 2, 1, 9 and 5, whilst 2 is bigger than 1, but is not bigger than 9)
# E.g. larger_than_life([-30, 13, -11, 2, 1, 9, 12]), should return [13, 12]
# E.g. larger_than_life([1, 2, 3, 4, 5]), should return [5]

def larger_than_life(nums)
    
    nums = nums.uniq
    temp_arr = []
    large_numbers = []
    0.upto(nums.length-1) do |i|
        temp_arr = nums[i..-1]
        if nums[i] == temp_arr.max 
            large_numbers.push(nums[i])
        end
    end
   
    return large_numbers.to_s
end

# test cases
puts larger_than_life([3, 13, 11, 2, 1, 9, 5]) #should return [13, 11, 9, 5]
puts larger_than_life([-30, 13, -11, 2, 1, 9, 12]) #[13, 12]
puts larger_than_life([1, 2, 3, 4, 5]) #[5]
puts larger_than_life([2, 2, 2, 2]) #[2]