
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