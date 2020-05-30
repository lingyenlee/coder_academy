def binaryToDecimal(n)
    num = n
    dec_value = 0

    #initialize base value to 1, ie 2^0
    base = 1

    temp = num
    while temp != 0
        last_digit = temp % 10 # get the last digit of the input num
        temp = temp/10 #get the digit of the digit without last digit

        dec_value += last_digit * base
        base = base * 2
    end

    return dec_value

end