# 1) Calculate:
# * How many hours are in a year.

hr_in_a_year = 24 * 365
puts hr_in_a_year.to_s + ' hrs'

# * How many minutes are in a decade.

min_in_a_decade = 10 * 60 * hr_in_a_year
puts min_in_a_decade.to_s + ' min'

# * How many seconds old you are.
age_in_seconds = 4 * 60 * min_in_a_decade
puts age_in_seconds.to_s + ' sec'

# 2) Will the result be a float or an integer?
#     3.0 / 2
puts "type for 3.0/2 is " + (3.0/2).class.to_s

#     3 / 2.0
puts "type for 3/2.0 is " + (3/2.0).class.to_s

#     4 ** 2.0
puts "type for 4**2.0 is " + (4**2.0).class.to_s

#     4.1 % 2
puts "type for 4.1 % 2 is " + (4.1%2).class.to_s

#     Why is 4.1 % 2 => 0.099?
#         Google 'modulo' to find out
# 1/10 does not have a exact representation in binary floating point

# 3) Puts "Hello world!" onto the screen
puts "Hello world!"


#4)
# * Make a new variable called name
name = ""
# Set it's value to your name
name = "Ling"

# Use concatenation to put your name on the screen
puts "My name is " + name

# * Make a new variable called siblings
number_siblings = ""

# * Set it's value to the number of siblings you have
puts number_siblings.class
number_siblings = 1
puts number_siblings.class

# * Use code to put your number of siblings on the screen
puts "I have " + number_siblings.to_s + " brother."

# * Use concatenation to pretty it up, E.g.: "Total Siblings: 3"
puts "Total Siblings: " + number_siblings.to_s

# * Use code to increase your number of siblings by one
number_siblings += 1

# * Use concatenation again to put your new number of siblings on the screen 
puts "Total Siblings: " + number_siblings.to_s
    
# 5)
# Assign the height of the:
#     * eiffel tower
#     * big ben
#     * taj mahal
# to the three variables:
#     * eiffel_tower
#     * big_ben
#     * taj_mahal

eiffel_tower = 300
big_ben = 96
taj_mahal = 73

# Using these variables:
#     * calculate the height of all 3 landmarks added together, and
#     * store it in a variable called 'total_height'

total_height = eiffel_tower + big_ben + taj_mahal
puts "The total height of Eiffel tower, Big Ben, Taj Mahal is " + total_height.to_s + " metres."