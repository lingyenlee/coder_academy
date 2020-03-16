# Write a method that will take an array and a string as it's arguments. 
# Return true if the string exists in the array. Otherwise return false.

def is_it_in_the_array(array, string)
   if array.include?(string)
       return true

   elsif array.length == 0 && string.empty?
       return false
   else
      return false
   end
end 

puts is_it_in_the_array([], "")

