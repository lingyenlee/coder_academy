# * Dynamic Greeting:
#   * Create a file called whats_the_time.rb
#   * Inside, create a variable called time
#   * Store a non-negative integer in that variable
#   * Use conditionals to say:
#     * “Good morning!” if it’s before 12
#     * “Good afternoon!” if it’s 12 or later
#     * “Thats not a time!” if it’s larger than 24

time = 22

if time >  24 || time < 0
    puts "That's not a time!"
elsif time < 12
    puts "Good morning!"
else
    puts "Good afternoon!"
end
