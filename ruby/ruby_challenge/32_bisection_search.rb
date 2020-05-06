low = 0
high = 100
ans = ((low+high)/2).to_i

puts "Please think of a number between 0 and 100!"
while true
   puts "Is your secret number #{ans}?"
   puts "Enter 'h' to indicate the guess is too high. Enter 'l' to indicate the guess if too low. Enter 'c' to indicate I guessed correctly."
   guess = gets.chomp

   if guess == "h"
       high = ans
   elsif guess == "l"
       low = ans
   elsif guess == "c"
       puts "Game over. Your secret number was #{ans}."
       break
   else
       puts "Sorry, I did not understand your input."
   end
   ans = ((low+high)/2).to_i
end