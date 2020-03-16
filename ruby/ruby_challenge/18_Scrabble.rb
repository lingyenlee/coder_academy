# The year is 2021, and theres been a new version of scrabble created. This version is much more simple. 
# The points are scored according to the letters position in the alphabet. a = 1. b = 2, c = 3....etc. 
# With the highest word winning that round.Create a method that will receive a string of one or many words, separated by a space, 
# and returns the highest scoring word. If two words score the same, return the one that appears first.
# You will only receive lowercase alphanumeric characters (a-z).

# E.g. word_ranking('hi there'), should return 'there'

# As 'hi' is worth 17, whilst 'there' is worth 56, so 'there' is returned

# E.g. word_ranking('reshow the shower') -> 'reshow'

def word_ranking(str)
    
    # return empty string if it it empty 
    if str.length == 0
        return str
    # else split str to an array of words
    else
     word_arr = str.split(" ")
    end
    
    # map each letter to a score
   letter_score = {}
   letters = [*("a".."z")]
   letters.each.with_index do |x, index|
        letter_score[x] = index + 1
   end
#    return letter_score

# calculate each word
   word_score = {}

  
   word_arr.each do |x|
       score = x.chars.collect {|letter| letter_score[letter] }.reduce(&:+)
       word_score[x] = score
   end

   return word_score.key(word_score.values.max)

end

# puts word_ranking('hi there')
# puts word_ranking('reshow the shower')
puts word_ranking("")