# Is It In The Array - Advanced
# Create a method that will take a string, an array, and an additional argument called strict, 
# and will return whether or not that string exists in the array. The additional argument, strict, 
# is a boolean argument.

#  If strict is true, is_it_in_the_array_advanced should care about LEtTeR cASinG

# If strict is false, is_it_in_the_array_advanced should not care about LEtTeR cASinG and 
# should return true for any match

# def is_it_in_the_array_advanced (string, array, strict)
#     # Your code here

#     string_down = string.downcase
#     array_down = array.map {|x| x.downcase}
   
#     if strict == true
#         array.each do |x|
#             if x == string
#                 return true
#             end
#         end
#         # false
#     else 
#         array_down.each do |x|
#             if x == string_down
#                 return true
#             end
#         end
#         # false
#     end
#     false
# end


# Optional
# Try completing this challenge without using any array helper methods, except for .each

def is_it_in_the_array_advanced (string, array, strict)
    return strict?
    array.include?(string)
    array.map{|s| s.downcase}.include?(string.downcase)
end


puts is_it_in_the_array_advanced("HeLLo", ["hi", "howdy", "HeLLo"], true) # should return true
puts is_it_in_the_array_advanced("DraKE", ["drAKe", "kanye", "yachty"], false) # should return false
