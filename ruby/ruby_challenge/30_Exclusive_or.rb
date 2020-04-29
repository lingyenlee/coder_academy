require_relative("29_deci_to_binary")

def exclusive_or(num1, num2)
    # your code here
    # convert number to binary

    b1 = decimal_to_binary(num1)
    b2 = decimal_to_binary(num2)
    
    b2 = if b1.length > b2.length 
        b2.rjust(diff, '1')
    end
    puts "b1 is #{b1}."
    puts "b2 is #{b2}."

    # puts b1.length
    # for i in 0..b1.length

    # end
    # b1.each_char do |c|
    #     if c
    # end
    # puts b1.class 
    # puts b1[0]
    # puts b1[2]
end

exclusive_or(100,9)