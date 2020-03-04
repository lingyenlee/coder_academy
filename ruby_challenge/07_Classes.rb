# Build classes to model the following real world objects:
# - Car
# - Shoe
# - Shopping Cart
# For each real world object, try to think of the attributes that you would use to define 
# them and add those in as attributes in the class (ex. car might have color, num_doors, num_seats, etc). 
# For each class make initializers and play around with creating objects.

class Car
    
    attr_accessor :color, :make, :model, :num_doors, :price

    def initialize(make, model, color, num_doors, price)
        @color = color
        @make = make
        @model = model
        @num_doors = num_doors
        @price = price 
    end

    def show_car()
        return "Car: #{@make}, Color: #{@color}, Model: #{@model}, Number of doors: #{@num_doors}, Price: #{@price}."
    end
end

car1 = Car.new("Honda", "Civic", "Green", "4", "$20,000" )
puts car1.color

class Shoe
    attr_accessor :brand, :size, :type

    def initialize(brand, size, type)
        @brand = brand
        @size = size
        @type = type
    end
end

shoe1 = Shoe.new("Nike", 8, "Sports")

p shoe1.brand
p shoe1.size
p shoe1.type


