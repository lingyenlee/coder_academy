# Write a method that takes an array and a string as arguments. 
# Return true if the string is found in the array only once. 
# Otherwise return false.

def included_once (array, string)
    # Your code here
    word_count = {}
    array.map do |x|
        y = x.strip
        if word_count.has_key?(y)
            word_count[y] += 1
        else
            word_count[y] = 1
        end
    end
    
    if word_count.has_key?(string) && word_count[string] == 1
        return true
    else
        return false
    end

  end


puts included_once(['hello', 'hi',' hi'], 'hi') #false
puts included_once(['hello', 'hi', 'hey'], 'hi') #true
puts included_once(['hello', 'hey', 'hey'], 'hi') #false
puts included_once(['hello', 'hi', 'hey', 'HI'], 'hi') #true