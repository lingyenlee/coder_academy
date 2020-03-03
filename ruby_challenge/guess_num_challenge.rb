# Guess a number between 1 to 10
# 3 chances to get

puts "What is your name?"
response = gets.chomp
puts "Hello, #{response}."
puts "We are going to play a guessing game."
puts "I will choose a random number between 1 and 10"
puts "and you will have three chances to guess it."
puts "Okay, I have my number."

my_number = rand(10) + 1
max_guess = 5

1.upto(max_guess) do |i|
    print "Guess #{i}: "
    your_guess = gets.chomp.to_i
    if your_guess == my_number
        puts "Congratulations! The number is #{my_number}. You guessed correctly!"
        break
    else 
        puts "Sorry. That wasn't it"
        if i == max_guess
            puts "That was your last guess."
            puts "My number was #{my_number}."
        end
    end
end

