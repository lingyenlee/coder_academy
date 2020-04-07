require_relative("../Model/OrderModel")
require_relative("../View/OrderView")

class OrderController
	
	def initialize()
		@model = OrderModel.new
		@view= OrderView.new
	end
	
	def new
		order = @view.receive_order
        @model.create(order)
        return "Your order is #{@model.orders[0]}."
	end
end

order1 = OrderController.new()
puts order1.new