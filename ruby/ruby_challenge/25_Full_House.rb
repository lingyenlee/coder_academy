# aAplayer will receive 5 cards. A Full House occurs when a player gets 3 types of one card, 
# and 2 types of another.
# Create a method that will take a user's hand as an argument. The user's hand will always be an array of 
# 5 strings. The strings will be anything from "2", "3" ... all the way to the royals ... 
# "J", "Q", "K", "A". The royals will all be uppercase.

# Your method will simply return true, if the hand is a Full House, or false if it is not.

def full_house(players_hand)
    # Your code here
    counter = {}
    players_hand.map do |x|
        if counter.has_key?(x)
            counter[x] += 1
        else
            counter[x] = 1
        end
    end

    return counter.keys

puts full_house(["A", "A", "3", "3", "A"]) # should return true
# It returns true as the player received 3 X "A" and 2 X "3"

# puts full_house(["4", "A", "K", "4", "Q"])# should return false

# puts full_house(["4", "4", "K", "4", "4"])# should return false

# puts full_house(["J", "5", "J", "5", "J"])# should return true