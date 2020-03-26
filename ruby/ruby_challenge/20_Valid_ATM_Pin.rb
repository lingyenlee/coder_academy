#ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything 
#but exactly 4 digits or exactly 6 digits. Your task is to create a method that 
#takes a string and returns true if the PIN is valid and false if it's not.

def is_valid_PIN(pin)
# check if the pin is equal to the converted pin
  pin == "#{pin.to_i}"
  # if pin && (pin.length == 4 || pin.length ==6)
  #   return true
  # end
  # false
end

puts is_valid_PIN("1234") # should return true
puts is_valid_PIN("a234") # should return false
puts is_valid_PIN("123456")# should return true 
puts is_valid_PIN("234") 
puts is_valid_PIN("")

