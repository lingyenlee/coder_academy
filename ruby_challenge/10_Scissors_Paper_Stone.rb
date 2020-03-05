# Scissors-Paper-Rock

# Create a class for a game of SPR. At a minimum, a user should be able to instantiate a new object 
# from the ScissorsPaperRock class. When a new object is created, it should have at least three instance variables:

# user_score, equal to 0 initially
# computer_score, equal to 0 initially
# score_required, equal to the value that gets passed through when initialised

# Through this object, they should be able to call the play method, 
# which will take them through a game. When play is called:
class ScissorsPaperRock
    attr_accessor :user_score, :computer_score, :score_required

    def initialize(user_score, computer_score, score_required)
        @user_score =  0
        @computer_score = 0 
        @score_required = score_required
        # p "initialized"
    end

    def user_choice=(user_choice)
        @user_choice = user_choice
    end

    def user_choice
        return @user_choice
    end

    def computer_choice=(computer_choice)
        @computer_choice = computer_choice
    end

    def computer_choice
        return @computer_choice
    end

    # Ask a user for their selection
    def play
        # print "\n Welcome to the game of Scissors-Paper-Rock"
        # print "\n Enter your name: "
        # user_name = gets.chomp
        until @user_score == @score_required || @computer_score  == @score_required
            print "\nHi, please select 's' for scissors, 'p' for paper or 'r' for rock. "
            options = ['s', 'p', 'r']

            # Display user selection:
            @user_choice = gets.chomp
            
            puts "User has selected #{user_choice}."
            # p user_choice

            # display the computer's randomised selection:
            options = ['s', 'p', 'r']
            @computer_choice = options.sample
            # p computer_choice
            puts "Computer has selected #{computer_choice}."

            result()
        end
        
        return @user_score > @computer_score ? (puts "Game over! you won!"): (puts "Game over! Computer won!")
    
    end

    def result
        # if the required score is not reached --> keep playing
        if user_choice == computer_choice
            puts "Draw"
        elsif (user_choice == 's' && computer_choice == 'p') || (user_choice == 'p' && computer_choice == 'r') || (user_choice == 'r' && computer_choice == 's')
            @user_score += 1
            puts "User wins - score is #{@user_score}"
        else
            @computer_score += 1
            puts "Computer wins - score is #{@computer_score}"
        end
    end
end


game1 = ScissorsPaperRock.new(0,0,3)

game1.play
