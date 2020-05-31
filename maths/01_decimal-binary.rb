def decimal_to_binary (decimal)
    # your code here
    # 1. set a base case when the quotient becomes 0
    # 2. define an empty string
    # 3. while the quotient is not 0, get the remainder 
    # 4. convert remainder to string and add to the binary string
    # 4. get the quotient with the number dividing by 2
    # 5. continue until the quotient becomes 0
    # 6. return the binary string
     
    result = ""
    while decimal > 1
        result += (decimal % 2).to_s
        decimal = decimal / 2
    end
    result += decimal.to_s
    return result.reverse
    
end
