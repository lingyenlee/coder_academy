# puts "Please enter a word/definition pair separated by a ':' "
# response = "The word is #{gets.chomp}"
# puts response

# userInput = gets.chomp

# index_of_colon = userInput.index(":")
# word = userInput.slice(0..index_of_colon + 1)
# definition = userInput.slice(index_of_colon + 1...userInput.length)


# puts word

puts "Please enter an equation: "

userInput = gets.chomp

index_of_operator = userInput.index("+")

first = userInput.slice(0..index_of_operator-1).strip.to_i
second = userInput.slice(index_of_operator+1...userInput.length).strip.to_i

puts first + second

