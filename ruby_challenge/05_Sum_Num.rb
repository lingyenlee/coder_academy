# Sum Numbers of An Array

# Write a method that will take an array of Numbers as an argument, and will return the sum of those numbers. 
# Try doing this with a loop first, then see if you can find a method in the ruby docs 
# (https://ruby-doc.org/core-2.6/Array.html) that can do this for you.
# E.g. sum_numbers([1, 1, 1]) should return 3
# E.g. sum_numbers([5, 100, 2, 0, -120, 13]) should return 0
# E.g. sum_numbers([]) should return 0

# def sum_numbers(numbers)
#     count = 0
#     numbers.each do |i|
#         count += i
#     end
#     return count
# end

def sum_numbers(numbers)
    # numbers.reduce(0) { |acc, i| i+acc }
    numbers.inject {|acc, n| acc + n}
end

puts sum_numbers([1, 1, 1])
puts sum_numbers([5, 100, 2, 0, -120, 13])
puts sum_numbers([])

