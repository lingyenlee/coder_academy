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

def convert_to_base5(integer)

    return 10 if integer == 5
    return integer.to_s if integer <5

    result = []
    while integer > 5
      result<< integer % 5
      integer /= 5
    end

    result << integer
    
    result.reverse.join
end
  

#puts decimal_to_binary(14)