# Display Letters and Count

# Write a method that will take a string as an argument, and will return the count of each letter 
# as a hash. Make sure to ignore whitespace!
# E.g. count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, o=>1}
# E.g. count_letters("Thats The Ticket") should return {"T"=>3, "h"=>2, "a"=>1, "t"=>2, "s"=>1, "e"=>2, "i"=>1, "c"=>1, "k"=>1}
# E.g. count_letters("") should return {}

def count_letters(string)

    # initialize an empty hash 
    counter = {}
    
    # split each char of string into an array 
    string = string.split("")
    puts "split string into array: #{string}"
    
    # remove empty string 
    string = string.reject {|x| x == " " }
    # string = string.filter {|x| x != " "}
    # string = string.delete_if {|x| x == " "}
    #  string = string.keep_if {|x| x != " "}
    puts "after remove empty string: #{string}"
    
    # map each element in the array into the counter
    string.map do |x|

        # if counter has the key, then add 1 to the key
        if counter.has_key?(x)
            counter[x] += 1
         # else if counter does not have the key, create a key with a count
        else
            counter[x] = 1
        end
    end
    # return the keys/values in the counter
    return counter
end

puts count_letters("hello")
puts count_letters("Thats The Ticket")
puts count_letters("")