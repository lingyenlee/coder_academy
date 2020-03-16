# Scope & Globals

$global_name = "Mike"
non_global_name = "Joe"
def print_names()
   puts $global_name
#    puts non_global_name  # This will cause an error
end

print_names()

# Write a program that stores the following food items in a grocery list and prints them out.
#   - Milk, Egggs, Cheese
# Challenge 1: Do it without creating multiple variables
# Challenge 2: Explore how the following methods effect the array
#   push, unshift, shift, pop, delete_at, insert, length
# Challenge 3: Allow the user to enter the three items manually

items = []
items.push(gets.chomp)
items.push(gets.chomp)
items.push(gets.chomp)

puts items

# Modify the above program so it let's the user enter their own comma separated grocery list
# Question: Could this list be separated by something other than commas?

list = gets.chomp.split('..')

puts list.to_s

# Write a method called `get_last` which takes as an argument a list of names
# and returns the last name in the list

def get_last(names)
    return names[names.length - 1]
end

my_name = ["Mike", "Joe"]
puts get_last(my_name)

# How could you store the current state of a tic-tac-toe game in code?
#     |X|O   
#    X|X|X
#     | |O        
# How can we put an "X" in middle right side

tic_tac_toe = [
    ["O", "X", "O"],
    ["O", "X", "X"],
    ["", "", "O"]
]
tic_tac_toe[0][0] = 'X'
puts tic_tac_toe.to_s

# Write a function called `middle_row_win` which takes as an argument a tic-tac-toe board (2d array) 
# like above and return true if X has won in that row.
# Bonus: modify the method to tell if either player (X or O) is winning

def middle_row_win(board)
    if board[1, 0] == 'X' && board[1, 1] == 'X' && board[1][2] == 'X'
        return true
    end
    return false
end

tic_tac_toe = [
    ["O", "X", "O"],
    ["X", "X", "X"],
    ["", "", "O"]
]
puts middle_row_win(tic_tac_toe)

# Memory
# What's the difference between an array and a variable?
# Question: What is an `object_id` and does it ever change?

name = "Mike"
new_name = name
puts name 
puts name.object_id
puts new_name
puts new_name.object_id
new_name = "Joe"

puts name 
puts name.object_id
puts new_name
puts new_name.object_id

# Modify the following code so that it continually ask's the user what their name is
# until they type "exit"

print "What's your name: "
name = gets.chomp

while name != "exit"
    puts "Hello #{name}"
    print "What's your name: "
    name = gets.chomp
end

# # Infinite Loop (BE CAREFUL)
while true
    puts "Hello World"
end

# Re-write the above code and restructure it so you don't repeat yourself
# Notice: how the order of instructions effects the simplicity of the loop 

name = ""

while name != "exit"
    print "What's your name: "
    name = gets.chomp
    puts "Hello #{name}"
end

# Modify the following guessing game code to allow the user to guess until they're succesful

guess = nil
correct_answer = 10

while guess != correct_answer
    print "Enter a guess: "
    guess = gets.chomp.to_i
    if guess < correct_answer
        puts "Guess Higher"
    elsif guess > correct_answer
        puts "Guess Lower"
    end
end   
puts "You guess correctly!"  

# CUPS OF WATER CHALLENGE
# Write a human program that uses a cup to fill a container with water
# Challenge: Can you write the program so it works on any container size?
# Challenge: Convert the human-program to a comptuer program 

jar_size = 5
jar_full = false
cups_added = 0

while !jar_full
    cups_added = cups_added + 1
    puts "Added another cup, total count: #{cups_added}"
    if cups_added == jar_size
        jar_full = true
    end
    # do something
end
puts "The jar is full"

# Question: What will the following code output?
# Question: How could we force the loop to stop?
# Question: How can you tell a loop to move onto the next iteration?

iterations = 0

while iterations < 10
    puts "Before Next"
    iterations += 1
    puts "Iteration #{iterations}"
end

# Write a method called `count_to_10` which prints out all the numbers between 1 and 10
# Challenge: Modify the method so that it can count to any number
# Challenge: Modify the method to use accept a start and end number

friends = ["Mike", "Joe", "Tom"]
i = 0

while i < friends.length
    i = i + 1
    puts friends[i]
end

for i in 0..friends.length - 1
    puts friends[i]
end

for asdf in friends
    puts asdf
end

# Complete the following method, by printing "Hi [friend name]" for each friend in the list
# Questiom: Can you do this without referencing each friend's index in the array?

def say_hi_to_friends(friends_list)
    for friend in friends_list
        puts "Hello #{friend}"
    end
end


# Complete the method for printing out a tic-tac-toe game

def print_tic_tac_toe_game(game_board)
    for row in game_board
        puts row.to_s
    end
end

print_tic_tac_toe_game([
    ["" , "X", "O"],
    ["X", "O", "" ],
    ["X", "O", "X"]
])