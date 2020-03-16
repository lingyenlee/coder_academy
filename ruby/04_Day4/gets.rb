
# * User input:
#   * A great way to make dynamic ruby apps, is to take user input
#   * Research ‘gets’ in ruby, and put it into practice
#   * Ask a user for their name:
#     -> “Hi friend. What is your name?” <-
#   * Use interpolation to greet the user:
#     -> “Hi there <user’s name>” <-
#   * Ask the user where they live:
#     -> “Which city do you live in? <-
#   * Use interpolation to show the user where they live:
#     -> “Ah, I see you live in <city name>” <-
#   * Ask the user for their favourite genre of music.
#     -> “Whats your favourite type of music? <-
#   * If they chose:
#     * Rock - “Fair call”
#     * Electro - “Yeah, nice one”
#     * Country - “Whoops, wrong choice”
#     * Anything else - “Each to their own”

puts "Hi friend, What is your name?"
name = gets.chomp
puts "Hi there #{name}"
puts "Which city do you live in?"
city = gets.chomp
puts "Ah, I see you live in #{city}"
puts "Whats your favourite type of music?"
music = gets.chomp.downcase
if music == "rock"
    puts "Fair call"
elsif music == "electro"
    puts "Yeah, nice one"
elsif music == "country"
    puts "Whoops, wrong choice"
else
    puts "Each to their own"
end