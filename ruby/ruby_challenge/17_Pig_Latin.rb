# What is pig latin? Pig latin takes the first letter of every word, moves it to the end of the word and adds an ‘ay’ after it. 
# For example, "the quick brown fox" becomes "hetay uickqay rownbay oxfay".
# Write a method that translates a text to Pig Latin.
# E.g. pig_latin("Sydney or Melbourne or Brisbane are possible destinations") should return "ydneySay roay elbourneMay roay risbaneBay reaay ossiblepay estinationsday"
# E.g. pig_latin("A") should return "Aay"
# E.g. pig_latin("") should return ""

def pig_latin(string)
    # Your code goes here
    arr = string.split(" ")

    pig_latin = []
    arr.map do |x|
        if arr.length == 1
            return x[0] + "ay"
        else
            
            word = x[1..-1] + x[0] + "ay"
            pig_latin.push(word)
        end
        
    end
    return pig_latin.join(" ")
end 

puts pig_latin("A")
puts pig_latin("Sydney or Melbourne or Brisbane are possible destinations")
puts pig_latin("")