###### CONDITIONALS REVIEW ########

puts 3 > 4                                         # false
puts   3 == 4                                      # false
puts 2 != 7 - 5                                    # false
puts "Hello" != "World"                            # true
puts "Dog"[1] == "God"[1]                          # true
puts "Flower"[4] != "Everest"[4]                   # false
puts "A Long String of Text".length > 5            # true
puts false && false                                # false
puts false || false                                # true
puts !true || false && true                        # false
puts (true && !(5 > 2 + 5) || !false) && 2 < 4     # true

puts "Hello".include?("He")                        # true
puts 16.even?                                      # true
puts true && true                                  # true

# GUESSING GAME ###################################
# Modify the following if statement to tell the user
# if their guess is higher or lower than the correct answer
guess = 7
correct_answer = 10

if guess == correct_answer
    puts "You guess correctly!"
elsif guess < correct_answer
    puts "Guess Higher"
else
    puts "Guess Lower"
end

# Do they have honors? ##################################
# Write a program that output's a student's semester award 
# (A student can only have one award):
#   Award qualifications:
#       Perfection Award    -> honors + perfect attendance       
#       Attendance Award    -> perfect attendance and no honors
#       Honors Award        -> honors and no perfect attendance

HONORS_GPA = 3.5            # The minimum GPA required for honors
gpa = 3.9
days_absent = 2

has_honors = gpa >= HONORS_GPA

if has_honors && days_absent == 0
    puts "Perfection Award"
elsif days_absent == 0
    puts "Perfect Attendance"
elsif has_honors
    puts "Honors Award"
else
    puts "No Award"
end 

# Can we fix your phone ###################################
# Write an if statement to tell the user whether or not their
# phone is eligible for service

os_version = 7.0
oldest_supported_iphone_version = 6.5
oldest_supported_android_version = 3.5
phone_type = 'android'

# TEST GRADER PROGRAM ##################################
# Write a program that, when given a test score from A-F
# outputs the following text depending on the grade
#   A -> Nice Job! Perfect score
#   B -> You did fine
#   C -> You should have studied more
#   D -> Dreadful
#   F -> YOU FAIL!

grade = 'T'

case grade
when 'A'
    puts "Nice Job! Perfect score"
when 'B'
    puts "You did fine"
when 'C'
    puts "You should have studied more"
when 'D'
    puts "Dreadful"
when 'F'
    puts 'YOU FAIL!'
else
    puts "INvalid  grader"
end

# HOGWARTS SORTING HAT ##################################
# Write a program that simulates the Hogwart's sorting hat
# given a student's most dominant trait, sort them in the correct house
#   Bravery             -> Gryffindor
#   Intelligence        -> Ravenclaw
#   Loyalty             -> Hufflepuff
#   Being a Death Eater -> Slytherin

trait = "Muggle studies"

case trait
when 'Bravery'
    puts "Gryffindor"
when 'Intelligence'
    puts "Ravenclaw"
when 'Loyalty'
    puts 'Hufflepuff'
when "Being a Death Eater"
    puts "Slytherin"
else
    puts "MUGGLE!"
end

# Write a program that populates a variable called approved_for_loan
# a person is approved for a loan when their credit score is > 800
# Challenge: Do it using a terinaray statement

credit_score = 850
approved_for_loan = nil

approved_for_loan = credit_score > 800 ? true : false

# Write a program that will transform a word using the following rules
# if the word has less than 5 letters, it will uppercase it
# if it has 5-10 letters will reverse it, otherwise lowercase it
# Store the transformed word in a variable called new_word

word = "apppPPPPpasdfsadf"
new_word = nil

if word.length < 5
    new_word = word.upcase
else
    new_word = word.reverse
end

new_word = (word.length < 5) ? word.upcase : word.length < 10 ? word.reverse : word.downcase

puts new_word

# Write a program that asks the user for their name,
# and then says hi to them
# Question: Why does it print a newline after the name?

print "Enter your name: "
name = gets.chomp
puts "Hello #{name}, you are cool"

# Write a program that asks the user for 2 numbers and prints the result
# of adding them

print "Enter first num: "
num1 = gets.chomp.to_f
print "Enter second num: "
num2 = gets.chomp.to_f
puts num1 + num2

# Write a program that outputs a square 
# +----+
# |    |
# +----+

puts "+----+"
puts "|    |"
puts "+----+"

# Now write a program that outputs three squares
# one on top of the other
# +----+
# |    |
# +----+
# +----+
# |    |
# +----+
# +----+
# |    |
# +----+

def draw_square
    draw_line
    puts "|    |"
    draw_line
end

def draw_line
    puts "+____+"
end

draw_square()

def draw_line
    puts "+-------+"
end
draw_square()
draw_square()


# Here comes the Sun? Nah... Here comes methods
# Use method's to reduce the repeated code in this song


def chorus
    puts "Here comes the sun, doo-doo-doo-doo, here comes the sun"
    puts "And I say it's all right"
end

def sun 
    puts "Moon, moon, moon, here it comes"

end

darling = "Little darling"

chorus()

puts "Little darling, it's been a long cold lonely winter"
puts "Little darling, it feels like years since it's been here"

chorus()

puts "Little darling, the smiles returning to the faces"
puts "Little darling, it seems like years since it's been here"

chorus()

sun()
sun()
sun()
sun()
sun()

puts "Little darling, I feel that ice is slowly melting"
puts "Little darling, it seems like years since it's been clear"

chorus()
chorus()

# Write a method that says "Hi Mike"


def say_hello
    puts "Hi Mike"
end

# Update the previous method to say "Hi [name]", where name is any name
# Question: What's the difference between parameters & arguments

def say_hello(name)
    puts "Hi #{name}"
end

print "Enter your name: "
username = gets.chomp

say_hello(username)
say_hello("Joe")
say_hello("Tom")

# Update the previous method to say "Hi [name], you are [age]"
# Question: do you need to use '()' when calling the method?

def say_hello(name, age)
    puts "Hi #{name}, you are #{age}"
end

say_hello("Mike", 90)

# Write a method that adds two numbers together and prints the result
# Question: What happens if you print the result of calling the method?


def adder(num1, num2)
    return num1 + num2
end

puts adder(4, 5)

# Write a method that sorts student's into Hogwarts houses
# and returns their new house name
# Question: what happens if you put the return keyword before the last line?
def sorting_hat(trait)
    house = "MUGGLE!"
    case trait
    when 'Bravery'
        house =  "Gryffindor"
    when 'Intelligence'
        house = "Ravenclaw"
    when 'Loyalty'
        house = 'Hufflepuff'
    when "Being a Death Eater"
        house = "Slytherin"
    end
    return house
end
puts sorting_hat("asdf")

# Go back to some of the programs we wrote previously and see if any of them
# can be made more re-usable with methods