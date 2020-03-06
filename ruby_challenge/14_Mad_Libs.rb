# In this program, we'll be building out an interactive Mad Libs game (https://en.wikipedia.org/wiki/Mad_Libs). 
# The game should ask the user to input a name, place, emotion and temperature, which will then be interspersed 
# into the following mad libs text.

# Step 1
# Out first step is to get the name, place, emotion, and temperature from the user. 
# Let's start with name

play_game = true

def get_word(prompt_text)
    print prompt_text
    response = gets.chomp
    return response
end

def display_rough_weather_madlib(name, place, emotion, temp_in_c, temp_in_f)
    print  "\nRough Weather \nA Mad Libs Letter \nDear #{name}, \nIt's been a rough winter here in #{place}, the weather has been absolutly crazy, yesterday the temperature was #{temp_in_c} degrees celsius, which for you would be #{temp_in_f} degrees fahrenheit!
    \nDespite all the crazy weather though, I've managed to stay #{emotion}, and am finally feeling like myself again!

    \nYours Truly
    \nTom Hanks
    \n"
end

while play_game
    # asks the user to enter a name
    name = get_word("Please enter a name: ").capitalize

    # asks user for a place
    place = get_word("Enter a place: ").capitalize

    # asks user for emotion
    emotion = get_word("How are you feeling? ")

    # ask user for temperature
    temperature =  get_word("Enter a number for temperature: ").to_i

    # convert temp to F
    f_temperature = (temperature * 1.8) + 32

    display_rough_weather_madlib(name, place, emotion, temperature, f_temperature)

    answer = get_word("Would you like to play again (y/n) ")
    if answer != 'y'
        return false
    end

end




# else
#     return play_game
# end

# mad_libs