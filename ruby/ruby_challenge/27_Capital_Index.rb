# Create a method that will take a single string as an argument, 
# and will return an ordered array containing the index of all capital letters.

# Return an empty array if no capitals are found. There may be some 
# special characters included.

def capital_index(str)
   
    #Your code here
    upper = [*'A'..'Z']
    capital = []
    str.each_char.with_index do |char, i|
        if upper.include?(char)
            capital.push(i)
        end
    end
    return capital.to_s
end

puts capital_index('rABbit') #return [1, 2, 5]
puts capital_index("lowercase") #return [ ]
puts capital_index("!@#HI!") #return [3,4]