# Inheritance

# Build a class which models a Chef

# The Chef should have the following attributes

#     name

# And should also have the following functionality:

#     The ability to make chicken
#     The ability to make salad
#     The ability to make a special dish

class Chef
    attr_accessor :name

    def initialize(name)
        @name = name
        puts "Parent called"
    end

    def make_chicken
        puts "The chef makes chicken."
    end

    def make_salad
        puts "The chef makes salad."
    end

    def make_special_dish()
        puts "The chef makes a special dish"
   end
end

# my_chef = Chef.new("Lee")
# p my_chef.make_special_dish

# class ItalianChef
#     attr_accessor :name
    
#     def initialize(name)
#         @name = name
#     end

#     def make_chicken()
#         puts "The chef makes chicken"
#     end

#     def make_salad()
#         puts "The chef makes salad"
#     end

#     # only for italian chef
#     def make_pasta()
#         puts "The chef makes pasta"
#     end

#     def make_special_dish()
#         puts "The chef makes chicken parm"
#     end
# end

# my_italian_chef = ItalianChef.new("Rico")
# p my_italian_chef.make_pasta()

# Use Inheritance "<" so that the more specific Italian Chef inherits all the attributes and 
# functionality from the more general Chef.
class ItalianChef < Chef
    def make_pasta()
        puts "The chef makes pasta"
    end

    def make_special_dish()
        puts "The chef makes chicken parm"
    end
end

# my_italian_chef = ItalianChef.new("Lee")
# puts my_italian_chef.make_special_dish()

# Now, build a class that models a more specific type of Chef, an Italian Chef. The Italian Chef should be able to do everything
#  the normal chef does, but also make pasta, and their special dish should be Chicken Parm

class ItalianChef
    attr_accessor :name
    
        def initialize(name)
            @name = name
        end
    
        def make_chicken()
             puts "The chef makes chicken"
        end
    
        def make_salad()
             puts "The chef makes salad"
        end
    
         def make_pasta()
              puts "The chef makes pasta"
         end
    
         def make_special_dish()
              puts "The chef makes chicken parm"
         end
    end

#  Use Inheritance so that the more specific Italian Chef inherits all the attributes and functionality 
# from the more general Chef.

class ItalianChef < Chef
     def make_pasta()
          puts "The chef makes pasta"
     end

     def make_special_dish()
          puts "The chef makes chicken parm"
     end
end

# Create a class to model a Vehicle

# The Vehicle should have the following attributes:

#     Number of wheels
#     Number of km
#     Km of last service

# It should also be able to tell the user when they need service. Assume all vehicles need service every 5000km.

class Vehicle
    attr_accessor :num_wheels,:kms, :km_last_service

    def initialize(num_wheels, kms, km_last_service)
        @num_wheels = num_wheels
        @kms = kms
        @km_last_service = km_last_service
    end

    def needs_service?()
        return @kms - @km_last_service >= 5000
    end
end

# my_vehicle = Vehicle.new(4, 25000, 3000)
# puts my_vehicle.num_wheels
# puts my_vehicle.needs_service?

# Now create a more specific type of vehicle class Motorcycle. Assume all motorcycles have 2 wheels, 
# and also have an extra attribute "street_legal" which determines whether or not the motorcycle is able 
# to be driven on the street.

class Motorcycle < Vehicle
    attr_accessor :street_legal

    def initialize(street_legal, kms, km_last_service)
        @street_legal = street_legal
        # ask parent class to initialize the other attributes by passing them into super
        # give a default value to num_wheels
        super(2, kms, km_last_service)
    end

    # def street_legal?
    #     if street_legal == true
    #         return "The motorcycle is able to be driven on the street"
    #     else
    #         return "The The motorcycle is not able to be driven on the street "
    #     end
    # end
end

# my_motorcycle = Motorcycle.new(true, 4, 25000, 6000)
# puts "number of wheels in my motorcycle #{my_motorcycle.num_wheels()}"
# puts "Does my mototcycle needs service? #{my_motorcycle.needs_service?()}"

# Finally, create another specific type of vehicle, "EighteenWheeler". 
# Assume they all have 18 wheels, and also need to get serviced every 3000 km.

class EighteenWheeler < Vehicle
    def initialize(kms, km_last_service)
        # to pass in the default parameter for 18 wheeler
        super(18, kms, km_last_service)
    end

    def needs_service?()
        return @kms - @km_last_service >= 3000
    end
end

class EighteenWheeler < Vehicle
    def initialize(kms, km_last_service)
        super(18, kms, km_last_service)
    end

    def needs_service?()
        return @kms - @km_last_service >= 3000
    end
end

my_18wheeler = EighteenWheeler.new(4000, 500)
puts "Number of wheels #{my_18wheeler.num_wheels()}"
puts my_18wheeler.kms
puts my_18wheeler.km_last_service

puts "Does my 18-wheeler needs service? #{my_18wheeler.needs_service?()}"

