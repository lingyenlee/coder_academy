# Write a method that will take an array and a string as it's arguments. 
# Return true if the string exists in the array. Otherwise return false.

def is_it_in_the_array(array, string)

    array2 = string.split("")
  
    array2.each do |i|
       array.each do |j|
        if i != j
           return false
        else
            return true
     
end

puts is_it_in_the_array(["a", "b"], "abcd")
