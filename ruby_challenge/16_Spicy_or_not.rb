# You will be given two ordered arrays. One array, will have 'S' and 'N' 
# (where S means spicy and N means not spicy). The other array will be the price of the dish. 
# The arrays will always be the same length.You will pay for all spicy meals, 
# whilst you and your friend will split the non-spicy dishes. Return an ordered array of your owing 
# and your friends owing.Note: Regardless of whether you are given an int or a float, always return a float 

def spicy_food(spice_arr, price_arr)
    #Your code here
    my_payment = 0.0
    friend_payment = 0.0

    spice_arr.each_with_index.map do |x, index|
        if x == 'S'
            my_payment += price_arr[index]
        else
            my_payment += price_arr[index]/2.0
            friend_payment += price_arr[index]/2.0
        end
    end

    return [my_payment, friend_payment].to_s
end

puts spicy_food(['S', 'N', 'N', 'S'], [12, 18, 17, 15]) # return [44.5, 17.5]

puts spicy_food(['N'], [23]) # return[11.5, 11.5]

puts spicy_food(['S', 'S', 'S', 'S', 'N'], [15, 14, 19, 23, 20]) # return [81.0, 10.0]

puts spicy_food([], []) # return [0.0, 0.0]