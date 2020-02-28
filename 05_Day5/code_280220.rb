grade = 'B'

case grade
when 'A'
    puts "Nice job! Perfect score."
when 'B'
    puts 'You did fine.'
when 'C'
    puts "You should have studied more"
when 'D'
    puts 'Dreadful'
when 'F'
    puts 'You Fail'
else
    puts 'Invalid grade'
end

trait = 'Being a Death Eater'

def sorting_hat(trait)
    house = nil
    case trait
    when 'Bravery'
        house = 'FGryffinder'
    when 'Intelligence'
        house = 'Ravenclaw'
    when 'Loyalty'
        house = 'Hufflepuff'
    when 'Being a Death Eater'
        house = "Slytherin"
    end
        return house
end

word = "ale"
new_word = nil

new_word = (word.length < 5) ? word.upcase : (word.length < 10 ? word.reverse : word.downcase )

puts new_word

# print "Enter your name: "
# name = gets.chomp.upcase
# puts "Hello #{name} how are you?"

# print "Enter first number: "
# num1 = gets.chomp.to_f
# print "Enter second number: "
# num2 = gets.chomp.to_f
# puts num1 + num2

def draw_square
    puts "+----+"
    puts "|    |"
    puts "+----+"
end




