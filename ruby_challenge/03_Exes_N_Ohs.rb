# Exes And Ohs

# This is a great question for interview prep, so let's not google it. Instead, try whiteboarding, 
# and thinking of your approach before coding. There are multiple approaches to this question, 
# so try to think of the most efficient one you can!

# Write a method that will take a string as an argument. The method will check this string, 
# and count the amount of 'x's and 'o's. It should return true if the amount of 'x's and 'o's are the same, 
# and should return false if they are different. It should also be case insensitive.E.g. exes_and_ohs("ooxx") 
# should return true E.g. exes_and_ohs("oOxXxoX") should return falseE.g. exes_and_ohs("zpzpzpp") 
# should return true

def exes_and_ohs(str)
    arr = str.downcase.split("")

    count_o = 0
    count_x = 0
    
    arr.each do |i|
        if i == "o"
            count_o += 1
        elsif
            i == "x"
            count_x += 1
        else
            return true
        end
    end

    return count_x == count_o

end

puts exes_and_ohs("oOxXxoX")
puts exes_and_ohs("zpzpzpp")
puts exes_and_ohs("ooxx")

# arr = ['a', 'b', 'c']

# arr.each do |i|
#     puts i
# end