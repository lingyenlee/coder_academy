class MessageView
    def welcome()
        puts "Welcome to the Chat app!"
    end
    
    def set_message(message)
        puts message  
    end
    
    def get_message()
        print "Enter message: "
        message = gets.chomp
        return message
    end
end
