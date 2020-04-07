class Order

	attr_accessor :item, :id
	
	def initialize(item, id)
		@item = item
		@id = id
	end
end

class OrderModel
	
	attr_reader :orders
	
	def initialize()
		@orders = []
	end
	
	def update_order(id, new_item)
		for order in orders
			if order.id == id
				order.item = new_item
			end
		end
	end

	# save the order - for to a database
	def create(value)
		@orders.push(value)
	end
end

# order1 = OrderModel.new
# order1.create(Order.new("chocolate", "0"))
# order1.create(Order.new("milk", "1"))

# puts order1.orders[0].item
# puts order1.orders[1].item
