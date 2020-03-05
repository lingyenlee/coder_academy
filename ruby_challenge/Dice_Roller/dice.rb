class Dice

    attr_accessor :value
    def initialize
       roll
    end

    def roll
        @value = get_a_value
    end

    def get_a_value
        rand(6) + 1
    end
end
