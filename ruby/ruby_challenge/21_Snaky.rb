# Summer is rolling around, snakes are back out and about. Only now, they can take human form. 
# The one way to find out whether or not you are talking to a snake is the way they pronounce their s's. 
# They tend to hold them for a ssplit ssecond too long.

# Write a method where, given a string as an argument, you return true whether the person is a snake, 
# or false if they are not. Someone is a snake if they have 2 or more s's together in one of the words 
# they say (Case insensitive).

def is_it_a_snake(str)
    #your code here

    arr = str.downcase.split("")
    arr.each_with_index do |x, i|
        if (x == 's') && (arr[i+1] == 's')
            return true
        end
    end
    return false
end



 puts is_it_a_snake("Ssay what?! I'n no snake") # should return true, as 'Ssay' had 2 or more s's in a row

  puts is_it_a_snake("Something sseems a little ssuspect") # should return true, as 'sseems' and 'ssuspect' had 2 or more s's in a row

 puts is_it_a_snake("Hello there Samantha") # should return false

puts is_it_a_snake("Sometimes, I just love saying words with an 's' in them") # should return false, as sometimes has 2 s's, but they are not next to each other