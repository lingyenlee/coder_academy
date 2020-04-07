class Message
    attr_accessor :text, :id
    
    def initialize(text, id)
        @text = text
        @id = id
    end
end


class MessageModel
    attr_reader :messages
    
    def initialize()
        @messages = []
    end
    
    def update(id, updatedText)
        for message in @messages
            if message.id == id
                message.text = updatedText
            end
        end
    end
        
    def create(message)
        @messages.push(message)
    end
end

message_model = MessageModel.new
message_model.create(Message.new("Hello World", "0"))
puts message_model.messages[0].text
message_model.update("0", "This is updated text")
puts message_model.messages[0].text