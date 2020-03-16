# ==============Q1======================
# p (true && !(5 > 2 + 5) || !false) && 2 < 4     # true

# ==============Q2======================
# Write a program that simulates a bouncer at a bar. If the person is over 18 
# print "Come in an enjoy a drink!", otherwise tell them to "Go away! Come back in [x] years" 
# where x is the number of year until they turn 18

# age = 10
# if age >= 18
#     puts "Come in an enjoy a drink!"
# else
#     puts "Go away! Come back in #{18 - age} years"
# end

# ==============Q3======================
# Write a program which tells the user what the weather is like according to the following temperature descriptions.

#     if temp is >= 30 -> "It's a hot one out there!"
#     if temp is >= 15 -> "It's a nice moderate day"
#     if temp is >= 0 -> "It's a bit chilly"
#     if temp < 0 -> "It's freezing!"

# HOT = 30        # Constant
# MODERATE = 15   # Constant
# COLD = 0        # Constant
# temp = 22
# temp = -6

# if temp >= HOT
#     puts "It's a hot one out there!"
# elsif temp >= MODERATE && temp < HOT
#     puts "It's a nice moderate day"
# elsif temp >= COLD && temp < MODERATE
#     puts "It's a bit chilly"
# else
#     puts "It's freezing!"
# end

# ==============Q4======================

# Write a program that keeps track of 2 boolean variables is_subscriber and is_active about a user, 
# and displays the correct message to them highlighted below

#     issubscriber + isactive -> "You're an active subscriber"
#     is_subscriber -> "Thanks for subscribing, now start using the site"
#     is_active -> "You use the site a lot, would you like to subscribe?"
#     neither -> "Please subscribe and use the site"

# This code should run, but it doesn't work correctly in one case...

# is_subscriber = false;
# is_active = false;

# if is_subscriber && is_active
#     puts "You're an active subscriber"
# elsif is_subscriber && !is_active
#     puts "Thanks for subscribing, now start using the site"
# elsif !is_subscriber && is_active
#     puts "You use the site a lot, would you like to subscribe?"
# else
#     puts "Please subscribe and use the site"
# end

# ==============Q5======================
# Test Grader

# Write a program that, when given a test score from A-F outputs the following text depending on the grade

#     A -> Nice Job! Perfect score
#     B -> You did fine
#     C -> You should have studied more
#     D -> Dreadful
#     F -> YOU FAIL!

# case grade
# when 'A'
#     puts "You got an A, perfect!"
# when 'B'
#     puts "You got an B, that's pretty good"
# when 'C'
#     puts "You got an C, you should have studied more"
# when 'D'
#     puts "You got an D, what a Disappointment"
# when 'F'
#     puts "You FAIL!!!!"
# end

# # test cases
# grade = 'A'
# grade = 'B'
# grade = 'C'
# grade = 'D'
# grade = 'F'

# ==============Q6======================

# Do they have honors?
# Write a program that output's a student's semester award (A student can only have one award):
# Award qualifications

#     Perfection Award -> honors + perfect attendance
#     Attendance Award -> perfect attendance and no honors
#     Honors Award -> honors and no perfect attendance

# This code should run, but it's missing somethings...

# HONORS_GPA = 3.5            # The minimum GPA required for honors
# gpa = 4
# days_absent = 0

# has_honors = gpa >= HONORS_GPA

# if has_honors && days_absent == 0
#     puts "Perfection Award"
# elsif days_absent == 0
#     puts "Perfect Attendance"
# elsif has_honors
#     puts "Honors Award"
# else
#     puts "No Award"
# end 

# ==============Q7======================
# Can we fix your phone

# Write an if statement to tell the user whether or not their phone is eligible for service. 
# A phone is eligible for service if it's operating system version is one of the versions supported. 
# Assume the oldest iphone os version in 6.5, and the oldest supported android version is 3.5.

# os_version = 7.0
# oldest_supported_iphone_version = 6.5
# oldest_supported_android_version = 3.5
# phone_type = 'android'

# if phone_type == 'android' && os_version >= oldest_supported_android_version
#     puts "We can fix your android v#{os_version}"
# elsif phone_type == 'iphone' && os_version >= oldest_supported_iphone_version
#     puts "We can fix your iphone v#{os_version}"
# else
#     puts "We can't fix your phone, sorry"
# end

# ==============Q8======================
# Hogwarts Sorting Hat

# Write a program that simulates the Hogwart's sorting hat given a student's most dominant trait, 
# sort them in the correct house

#     Bravery -> Gryffindor
#     Intelligence -> Ravenclaw
#     Loyalty -> Hufflepuff
#     Being a Death Eater -> Slytherin

# This program should not run, but even if you get it running, there's something else wrong...

# trait = "Muggle studies"

# case trait
# when 'Being a Death Eater'
#     puts "Slytherin"
# when 'Intelligence'
#     puts "Ravenclaw"
# when 'Loyalty'
#     puts 'Hufflepuff'
# when 'Bravery'
#     puts "Gryffindor"
# else
#     puts "MUGGLE!"
# end

# ==============Q9======================
# Word Transform Write a program that will transform a word using the following rules

#     if the word has less than 5 letters, it will uppercase it
#     if it has 5-10 letters will reverse it
#     otherwise lowercase it

# Store the transformed word in a variable called new_word

# This program should not run, but even if you get it running, there's something else wrong...

# word = "appleton"

# new_word = (word.length < 5) ? word.upcase : (word.length < 10 && word.length >=5 ? word.reverse : word.downcase)

# puts new_word

# ==============Q10======================

# Say Hi
# Write a program that asks the user for their name, and then says hi to them

# print "Enter your name: "
# name = gets.chomp
# puts "Hello #{name}, you are cool"

# ==============Q11======================
# Write a program that asks the user for 2 numbers and prints the result of adding them

# print "Enter first num: "
# num1 = gets.chomp.to_f
# print "Enter second num: "
# num2 = gets.chomp.to_f
# puts num1 + num2

# ==============Q12======================
# Squares Write a program that outputs three squares one on top of the other

# +----+
# |    |
# +----+
# +----+
# |    |
# +----+
# +----+
# |    |
# +----+

# def draw_square
#     puts "|       |"
#     draw_line
# end

# def draw_line
#     puts "+-------+"
# end
# draw_line()
# draw_square()
# draw_line()
# draw_square()
# draw_line()
# draw_square()

# ==============Q13======================
# Write a method called say_hi that accepts one parameter name, and then prints out Hi [name]!

# def say_hi(name)
#     puts "Hi #{name}"
# end

# say_hi(gets.chomp)

# ==============Q14======================
# Arrays
# Write a program which let's a user enter their own comma separated grocery list and stores 
# each item in an array called grocery_list

# grocery_list = gets.chomp.split(' ')
# puts grocery_list.to_s

# ==============Q15======================
# Write a method called get_last which takes as an argument a list of names and 
# returns the last name in the list

# def get_last(names)
#     return names[-1]
# end

# my_name = ["Mike", "Joe", "John"]
# puts get_last(my_name)

# ==============Q16======================
# How could you store the current state of a tic-tac-toe game in code?

#  |X|O   
# X|X|X
#  | |O  

# tic_tac_toe = [
#     ["", "X", "O"],
#     ["O", "X", "X"],
#     ["", "", "O"]
# ]
# tic_tac_toe[1][0] = 'X'
# puts tic_tac_toe.to_s

# ==============Q17======================
# Write a function called middle_row_win which takes as an argument a tic-tac-toe board (2d array) 
# like above and return true if X has won in that row.

# def middle_row_win(board)
#     if board[1][0] == 'X' && board[1][1] == 'X' && board[1][2] == 'X'
#         return true
#     end
#     return false
# end
# tic_tac_toe = [
#     ["O", "X", "O"],
#     ["X", "X", "X"],
#     ["", "", "O"]
# ]
# puts middle_row_win(tic_tac_toe)

# ==============Q18======================
# Write a program that continually asks the user what their name is and says hi to them until they type exit

# while true
#     print "What's your name: "
#     name = gets.chomp
#     if name == 'exit'
#         return false
#     else
#         puts "Hello #{name}"
#     end
# end

# ==============Q19======================
# Guessing Game (Dynamic)
# Write a guessing game program that continually tells the user to guess a number until they get it, 
# all the while telling them if they've guessed too high or too low.

# guess = nil
# correct_answer = 10

# while guess != correct_answer
#     print "Enter a guess: "
#     guess = gets.chomp.to_i
#     if guess < correct_answer
#         puts "Guess Higher"
#     elsif guess >= correct_answer
#         puts "Guess Lower"
#         next
#     end
# end   
# puts "You guess correctly!" 

# ==============Q20=========================
# Cups of water challenge!

# This code should run, but theres something wrong...
# jar_size = 5
# jar_full = false
# cups_added = 1

# while cups_added != jar_size
#     puts "Added another cup, total count: #{cups_added}"
#     cups_added += 1
# end
# puts "The jar is full"

# ==============Q21=========================
# Array Iteration
# Write a program which loops over a list of friends, saying hi to each of them

# friends = ["Mike", "Joe", "Tom"]
# using a while loop
# i = 0
# while i < friends.length
#     puts "Hi #{friends[i]}"
#     i = i + 1
# end

# using a for loop
# for i in 0..friends.length-1
#     puts "Hi #{friends[i]}"
# end

# or
# for friend in friends
#     puts "Hi #{friend}"
# end

# ==============Q21=========================
# Tic-Tac-Toe Printer

# Write a method for printing out a tic-tac-toe game

# def print_tic_tac_toe_game(game_board)
#     for row in game_board
#         puts row.to_s
#     end
# end

# print_tic_tac_toe_game([
#     ["" , "X", "O"],
#     ["X", "O", "" ],
#     ["X", "O", "X"]
# ])

# ==============Q22=========================
# Write a program that maps country abbreviations to their full names

#   us => United States of America
#   au => Australia
#   es => Spain

# def get_country(key)
#     abbreviations = {
#         :us => "United States of America",
#         :au => "Australia",
#         :es => "Spain"
#     }
#     return abbreviations[key]
# end
# puts get_country(:us)

# ==============Q23=========================
# Write a program to map food names to their number of calories

# eg:
#     pizza => 200
#     fries => 500
#     burger => 1050
# foods = {
#     :pizza => 200,
#     :fries => 500,
#     :burger => 1050
# }
# p foods[:pizza]

# ==============Q24=========================
# Write a program which prints out all the test grades with a note indicating if they passed 
# or failed. Any score under 70 is a failure

# test_grades = [50, 43, 85, 46, 82, 99, 10]

# test_grades.each do |grade|  
#     puts grade < 70 ? "You fail - #{grade}" : "You pass - #{grade}"
# end

# ==============Q25=========================
# Write a program that iterates through the capital cities hash below and prints out the keys and values.

capital_cities = {
    :nsw => "Sydney",
    :vic => "Melbourne",
    :qld => "Brisbane"
}

capital_cities.each {|key, value| puts "#{key} => #{value}"}

