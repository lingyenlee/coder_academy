# Mexican Wave

# We all know the 'Mexican Wave' (Nope? Google it!)
# Create a method that takes a string, and turns it into a Mexican Wave. 
# Ignore spaces, and notice that everything else becomes down cased!
# E.g. mexican_wave("rabbit"), should return ["Rabbit", "rAbbit", "raBbit", "rabBit", "rabbIt", "rabbiT"]
# E.g. mexican_wave("Ole Ole Ole"), should return ["Ole ole ole", "oLe ole ole", "olE ole ole", "ole Ole ole", "ole oLe ole", "ole olE ole", "ole ole Ole", "ole ole oLe", "ole ole olE"]

# E.g. mexican_wave(""), should return []

def mexican_wave(str)
    
    new_arr = []
    i = 0
    while i < str.length
        arr = str.downcase.split("")
        # if it is not blank continue this block
        if arr[i] != " " 
            arr[i] = arr[i].upcase
            new_arr.push(arr.join)
            i+=1
        else
            # if it is a blank, jump to the next char
            i += 1
        end
    end
    return new_arr
   
end


puts mexican_wave("Rabbit")
puts mexican_wave("Ole Ole Ole")
puts mexican_wave("")
# def mexican_wave(str)
#     temp_arr = []
#         for i in (0..str.length - 1)
#             arr = str.downcase.split("")
#             if arr[i] != " "
#                 arr[i] = arr[i].upcase
#                 temp_arr.push(arr.join)
#             else
#                 next
#             end
#         end
#     return temp_arr
# end
