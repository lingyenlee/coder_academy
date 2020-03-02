# 1. Complete the following code for a check_password method that returns true if 
# the password_guess matches correct_password and false otherwise.

# def check_password(password_guess)
#     correct_password = "wordpass"
#     if correct_password == password_guess
#         return "You guess correctly!"
#     else
#         return "Wrong guess!"
#     end
# end

# puts check_password("wordpass")

# 2. Modify the previous method so the user can input a password guess from the command-line
# def check_password(password_guess)
#     print "Your guess: "
#     response = gets.chomp
#     if response == password_guess
#         return "You guess correctly!"
#     else
#         return "Wrong guess! The word is #{password_guess}"
#     end
# end

# puts check_password("wordpass")


# 3. Build a calculator program in the command-line. When the program starts it should ask the user for 
# two numbers and an operation (+, -, / or *), and print out the answer.

# def simple_calculator
#     print "Enter first number: "
#     num1 = gets.chomp.to_i
#     print "Enter second number: "
#     num2 = gets.chomp.to_i

#     print "Enter an operation (+, -, / or *): "
#     action = gets.chomp

#     case action
#     when "+"
#         return num1 + num2
#     when "-"
#         return num1 - num2
#     when "*"
#         return num1 * num2
#     when "/"
#         return num1.to_f / num2.to_f
#     else
#         return "Invalid operation"
#     end
# end

# puts simple_calculator

# 4. A word/phrase or number is called a palindrome if it reads forward and backward in the same way. 
# For example, the numbers 5, 121, 3443, and 123454321 are palindromes, as well as the words/phrases “Madam”, 
# “pullup” and “top spot”. Write a method that takes as an argument a string or number and returns true 
# if it is a palindrome; otherwise, it returns false.

def panlindrome(input)
    if input.class == Integer
        input = input.to_s
    end
    input = input.delete(" ")
    reverse_input = input.reverse

    if input == reverse_input
        return "It is a panlindrome"
    else 
        return "It is not a panlindrome"
    end
end

puts panlindrome(123454321)

# 5. Modify the calculator program from 3 to accept a single string from the user representing the math 
# problem they want to solve (ex. “1 + 4", or “6 / 3”), instead of separately asking them for each piece of data.

def solve_math
    print "Enter 2 numbers with an operation (+, -, / or *): "
    
end