class OrderView
	
	def welcome_message
		puts "Welcome!"
	end
	
	def receive_order
		puts "Please place your order."
		
		response = gets.chomp
		return response
		# return "Your order is #{response}."
	end

end