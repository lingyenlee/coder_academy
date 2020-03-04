# Pseudocode

=begin
Pseudocode
    for each ingredient in the ingredients list
        print the ingredient out onto the screen
=end

# ingredients = ["milk", "eggs", "sugar"]
# for ingredient in ingredients
#     puts ingredient
# end

=begin
    Pseudocode
        We have two piece of data, a guess and a correct answer
        if the guess is equal to the correct answer
            tell the user that they've guessed correctly
        otherwise if the guess is less than the correct answer
            tell the user to guess higher
        otherwise tell the user to guess lower
=end
    
# guess = 7
# correct_answer = 10
    
# if guess == correct_answer
#     puts "You guess correctly!"
# elsif guess < correct_answer
#     puts "Guess Higher"
# else
#     puts "Guess Lower"
# end

# Write a program which stores and keeps track of information about two books.

#     Book 1:
#         Harry Potter & the Deathly Hallows, by JK Rowling (759 pages)
#     Book 2:
#         Green Eggs & Ham, by Dr. Seuss (64 pages)


# use class to define the data type and structure

# class Book
#     # define the attributes of the book using attr_accessor
#     attr_accessor :name, :author, :num_pages

#     # using an initializer to create the book1 instead of individual define each attributes
#     # can pass parameters in the initializer: name, author, pages num
#     def initialize(book_name, book_author, num_pages)
#         @name = book_name
#         @author = book_author
#         @num_pages = num_pages
#         # p favourite_number
#         # puts "Initialize called"
#     end

#     # make the object more readable by redefining to_s inside the Book Class
#     def print_nice()
#         return "#{@name}, written by #{@author} #{@num_pages}"
#     end

#     def say_hi(person)
#         return "Hi Hello #{person}"
#     end
# end

# # anytime a the new method is call on the class Book, the initialize method is called
# book1 = Book.new("Harry Potter & the Deathly Hallows", "JK Rowling", 759)
# book2 = Book.new("Green Eggs & Ham", "Dr. Seuss", 59)

# puts book1.print_nice
# puts book2.print_nice
# puts book1.say_hi("JJ")



# create an instance of the object and using the dot notation to use the attr 

# book1 = Book.new
# book1.name = "Harry Potter & the Deathly Hallows"
# book1.author = "JK Rowling"
# book1.num_pages = 759

# book2 = Book.new
# book2.name = "Green Eggs & Ham"
# book2.author = "Dr. Seuss"
# book2.num_pages = 64

# p book1.name
# # p book2

# def get_book(book)
#     p book
# end

# get_book(book1)

# Use Object Orientationto create a Business class
=begin
what are the attributes?
name, email, phone, job, title
=end

# class BusinessCard
#     attr_accessor :name, :email, :phone, :job_title

#     def initialize(card_name, card_email, card_phone, card_job_title)
#         # puts "Hello"
#         @name = card_name
#         @email = card_email
#         @phone = card_phone
#         @job_title = card_job_title
#     end
# end

# my_card = BusinessCard.new("me", "joe@gmail.com", "102222", "Programmer")
# p my_card.name


# # Use Object Orientation to create a Student class. A student should have a
# # name, major & gpa - use an initializer

# class Student
#     attr_accessor :name, :major, :gpa

#     def initialize(name, major, gpa)
#         @name = name
#         @major = major
#         @gpa = gpa
#     end
# end

# student1 = Student.new("Joe", "Math", 4)

# p student1.name
# p student1.major
# p student1.gpa


# Creata a class


class Movie
    attr_accessor :title, :duration, :rating

    def initialize(title, duration, rating)
        @title = title
        @duration = duration
        @rating = rating
    end

    # modify the rating 
    # ruby creates a getting method- get the rating
    # Getter
    def rating
        return "rated #{@rating}"
    end
    # ruby creates a setting 
    # Setter
    def rating=(new_rating)
        @rating = ['G', 'PG', 'PG-13', 'R'].include?(new_rating) ? new_rating : "NR"
    end

end

dark_knight = Movie.new("The Dark Knight", 200, "J")

dark_knight.rating = "Y"

puts dark_knight.rating

# class Movie
#     attr_accessor :title, :duration, :rating
#     def initialize(title, duration, rating)
#         @title = title
#         @duration = duration
#         self.rating = rating
#     end

#     def rating=(new_rating)
#         @rating = ["G", "PG", "PG-13", "R"].include?(new_rating) ? new_rating : "NR"
#     end

#     def rating
#         return @rating
#     end
# end

# movie_with_invalid_rating = Movie.new("Dark Knight", 200, "Y")
# puts movie_with_invalid_rating.rating    # NR