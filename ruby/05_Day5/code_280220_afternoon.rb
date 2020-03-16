# 1. Write a case statement which prints a specific text emoji based on an emotional word
#     - “Happy” should print :)
#     - “Sad” should print :(
#     - “Bored” should print :|
#     - “Silly” should print :p
#     - Any other word should print $)

mood = "Bored"

case mood
when "Happy"
    puts ":)"
when "Sad"
    puts ":("
when "Bored"
    puts":|"
when "Silly"
    puts ":p"
else
    puts "$)"
end


# 2. Write a method called ‘smile’ which prints out a smile emoji
# -smile() should print :)

def smile()
    puts ":)"
end

smile()

# 3. Combine the last two questions into a method called get_emoji that accepts as an argument an 
# emotion string from above (Happy, Sad, etc), and returns the correct emoji.

def smile(mood)
    case mood
    when "Happy"
        return ":)"
    when "Sad"
        return ":("
    when "Bored"
        return ":|"
    when "Silly"
        return ":p"
    else
        return "$)"
    end
end

puts smile("Silly")

# Write a method called max which takes 3 numbers as arguments and returns the largest of the three
# -max(4, 8, 2) should return 8

def max(num1, num2, num3)
    if num1 > num2 && num1 > num3
        return "#{num1} is the maximum."
    elsif num2 > num1 && num2 > num3
        return "#{num2} is the maximum."
    else
        return "#{num3} is the maximum."
    end
end

puts max(3,18,20)

# 5. Write a method called character_at that returns the character at a given index in a string. It should take
# Two arguments, the first is a string of text, the second is the index of the character you want to get.
# -character_at("Hello", 1) should return e
# -character_at("abcde", 2) should return c

def character_at(text, index)
    return text[index]
end

puts character_at("Hello", 1)
puts character_at("abcde", 2)

# 6. Different numbers have different ending in them when counting off
# - 0th
# - 1st
# - 2nd
# - 3rd
# - 4th
# - 5th …If you look above you’ll notice that 1, 2, and 3 all have different endings.
# Write a method called add_ending that takes as an argument a number and returns it 
# formatted as a string with an ending like above.
# - add_ending(1) should return 1st
# - add_ending(2) should return 2nd
# - add_ending(6) should return 6th

def add_ending(num)
    case num
    when 1
        return "#{1}st"
    when 2
        return "#{2}nd"
    when 3
        return "#{3}rd"
    else
        return "#{num}th"
    end
end

puts add_ending(0)
puts add_ending(1)
puts add_ending(2)
puts add_ending(3)
puts add_ending(4)
puts add_ending(99)

# 7. Write a method called min which takes 4 numbers as arguments and returns the smallest of the 4
# -min(200, 9, 60, -40) should return -40

def min(num1, num2, num3, num4)
    all_num = [num1, num2, num3, num4]
    return all_num.min
end

puts min(200, 9, 60, -40)

# 8. Use case statements and methods to recreate the app in the Gif.
#     - *Just to reiterate. Use case statements and your own methods*


def banking
    # The app starts with a balance of 100$
    $balance = 100
    # The app must greet you and ask what type of transaction to make (deposit, withdraw or check balance).
    puts "Welcome to the Coder Academy banking app"
    puts "Your balance is $#{$balance}"
    puts "What type of transactions would you like to make? deposit, withdraw or check balance"
  
# Deposits should ask how much you wish to deposit and increase your balance by that amount.
# Withdraws should ask how much you wish to withdraw and increase your balance by that amount.
# Check balance should simply tell you what your balance is.
    
    type = gets.chomp

    def deposit()
        puts "How much would you like to deposit? "
        amount = gets.chomp
        # $balance = 100
        $balance += amount.to_i
        return "Your new balance is #{$balance}"
    end

    def withdraw()
        print "How much would you like to withdraw? "
        amount = gets.chomp
        # balance = 100
        $balance -= amount.to_i
        return "Your new balance is #{$balance}"
    end

    def check()
        # balance = 100
        return "Your balance is #{$balance}"
    end

    # Split out each case into its own method
    case type
    when "deposit"
        deposit()
    when "withdraw"
        withdraw()
    when "check balance" 
        check()
    else
        return "You have entered an invalid operation."
    end

end

puts banking
