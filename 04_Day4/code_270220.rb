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
puts number_siblings = 1
puts number_siblings.class
number_siblings = 1.to_s
puts number_siblings.class

# # * Use code to put your number of siblings on the screen
# puts "I have " + number_siblings.to_s + " brother."

# # * Use concatenation to pretty it up, E.g.: "Total Siblings: 3"
# puts "Total Siblings: " + number_siblings.to_s

# # * Use code to increase your number of siblings by one
# number_siblings += 1

# # * Use concatenation again to put your new number of siblings on the screen 
# puts "Total Siblings: " + number_siblings.to_s
    
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


x = 2

if not(x==1)
    puts "ok"
end

unless x==1 
    puts "ok"
else
    puts "not ok"
end

if 7 > 6
    puts "7 is greater than 6"
end

if "tiger" == "cat"
    puts "tiger equals cat"
elsif "hello" == "hello"
    puts "hello equals hello"
else
    puts "whatever"
end

if 7
    puts "hello there"
end

if "cool"
    puts "cool is truthy"
else
    puts "cool is falsey"
end

if nil
    puts "nil is truthy"
else
    puts "nil is falsey"
end

puts "this syntax is cool" if true
puts "Tall buildings" if false

x = 5

if x > 0 && (x % 3 == 0)
    puts "The number is positive and divisible by 3"
   # next
elsif x > 0 && (x % 3 !=0)
  # next
else
    puts "The number if zero or negative"
   # next
end

puts false && true # --> false
puts !false || true # ---> true
puts !(true && false) # ---> true
puts !(false || true) || ((true && false) || true) # --> true
puts false && false || true && (true || !(false && true)) || false # ---> true
puts true && true || !!false && (false && !!(!false || true)) || !false && true # --->true

# Integers can be specified in different notations in Ruby: decimal, hexadecimal, octal, and 
# binary. Decimal numbers are used normally, as we know them. Hexadecimal numbers are preceded 
# with 0x characters, octal with 0 character and binary with 0b characters.
puts 122
puts 0x7a
puts 0172
puts 0b1111010

baskets = 16
apples_in_basket = 24
total = baskets * apples_in_basket
puts "There are total of #{total} apples."

# Underscores in integers are ignored by the Ruby interpreter.
p 23482345629
p 23_482_345_629

p 23482345629 == 23_482_345_629


