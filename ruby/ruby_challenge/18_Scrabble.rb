# The year is 2021, and theres been a new version of scrabble created. This version is much more simple. 
# The points are scored according to the letters position in the alphabet. a = 1. b = 2, c = 3....etc. 
# With the highest word winning that round.Create a method that will receive a string of one or many words, separated by a space, 
# and returns the highest scoring word. If two words score the same, return the one that appears first.
# You will only receive lowercase alphanumeric characters (a-z).

# E.g. word_ranking('hi there'), should return 'there'

# As 'hi' is worth 17, whilst 'there' is worth 56, so 'there' is returned

# E.g. word_ranking('reshow the shower') -> 'reshow'

def word_ranking(str)
    #Your code here
    word_arr = str.split(" ")
puts word_arr 

   letter_score = {}
   letters = [*("a".."z")]
   puts letters.to_s
   letters.each.with_index do |x, index|
        letter_score[x] = index + 1
   end
   return letter_score

#    word_score = word_arr.map do |x|
 

#    end

end

puts word_ranking('hi there')