# Write a class called Fish
# Create 3 fish from finding nemo  eg Dory Marlin Nemo
# They need color, no of fins, a charactaristic and function to get the 
# fish to say a line from the movie. (Google it)
# Make the fish as unique as possible and expand the mini project as far as you can. 
# eg What about sharks and startfish?


class Fish
    attr_accessor :name, :color, :num_fins, :charactaristic, :line

    def initialize(name, color, num_fins, charactaristic, line)
        @name = name
        @color = color
        @num_fins = num_fins
        @charactaristic = charactaristic
        @line = line
    end

    def speak()
        return "#{name} says - #{line}"
    end
end

fish1 = Fish.new("Dory", "Blue", 2, "Forgetful", "When life gets you down, you know what you gotta do? Just keep swimming.")
fish2 = Fish.new("Nemo", "Orange", 4, "Friendly","It's my dad. He took on a shark!")
fish3 = Fish.new("Marlin", "Orange", 4, "Protective", "If this is some kind of joke, it's not funny! And I know funny! I'm a clown fish!")
p fish1.speak
p fish2.speak
p fish3.speak