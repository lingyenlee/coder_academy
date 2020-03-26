# A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of 
# digits it has. Confused? Hopefully these examples will help...

# 153 (3 digits)

# 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

# 1634 (4 digits)

# 1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634

# The Challenge

# Your code must return true or false depending upon whether the given number is a Narcissistic number. 
# The two examples above would return true. The example below would return false

# 24 (2 digits)

# 2^2 + 4^2  = 4 + 16 = 20


# N.b. Error checking for text strings or other invalid inputs is not required, 
# only valid integers will be passed into the function.

def narcissistic_number(num)
    
    # Your code here

    # split num into an array
    num_arr = num.digits

    # initialize the sum 
    sum_num = 0

    # use reduce to sum each num which is raised to power of the num length 
    sum_num = num_arr.reduce(0) do |total, num|
        total + (num ** num_arr.length)
    end

    # check if sum is equal to num 
    sum_num == num
end

puts narcissistic_number(24) #false
puts narcissistic_number(1634) #true
puts narcissistic_number(153) #true
