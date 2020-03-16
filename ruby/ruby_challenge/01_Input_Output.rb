# Input Output

# Write a program that asks a user for their name and their age, and responds
# as shown here, letting the user know how long it will be until they are 100 years old:
# Program is run and outputs: "What is your name?"User inputs: "Tom"Program outputs: "Hi Tom! 
# How old are you?"User inputs: 40Program outputs: "Wow! You are 40 years old. In 60 years, you will be 100!"

def get_details
	#Your code here
	print "What is your name? "
	name = gets.chomp
	print "Hi #{name}! How old are you? "
	age = gets.chomp.to_i
	puts "Wow! You are #{age} years old. In #{100-age} years, you will be 100!"
end

get_details