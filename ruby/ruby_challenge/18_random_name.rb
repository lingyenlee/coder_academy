require ("whirly")

all_the_humans = [
    "Aaron Lewis",
    "Adam Payne",
    "Andrew Tran",
    "Anh Nguyen",
    "Ashley Bridges",
    "Christopher Morris",
    "Vicky Pham",
    "Esther Csoke",
    "Evelyn Paplauskas",
    "Gary Ho",
    "Gregory Martin",
    "Harrison Powell",
    "Harry Buisman",
    "Hoang Hai Ho",
    "Hugh Greethead",
    "Jacob Colyvan",
    "Jeremy Wu",
    "Linda Ojinnaka",
    "Ling Yen Lee",
    "Martin Kennedy",
    "Martin Valdivia",
    "Matthew Molloy",
    "Morgan Webb",
    "Morgan Batterham",
    "Nikki Waelkens",
    "Oliver Mason",
    "Patricia Pavia",
    "Rederyck Vazquez",
    "Rose Hernandez",
    "Ross Baker",
    "Ryan Cook",
    "Vincent Lieu",
    "Gini Thomas",
    "Wendy Doan",
    "Wilkins Cheng"]

first_name = all_the_humans.map {|x| x.partition(" ").first}
Whirly.start do
    system("clear")
    Whirly.status = "Choosing..."
    sleep 2
    Whirly.status = "The lucky person is #{first_name.sample}"
    sleep 1
end

# Whirly.start
#   system("clear")
#       Whirly.status = "Choosing..."
#       sleep 1
#       Whirly.status = "The lucky name is #{first_name.sample}"
#       sleep 1
# Whirly.stop