# 1. Write a case statement which prints a specific text emoji based on an emotional word
#     - “Happy” should print :)
#     - “Sad” should print :(
#     - “Bored” should print :|
#     - “Silly” should print :p
#     - Any other word should print $)

mood = "Bored"

case mood
when "Happy"
    puts ":)"
when "Sad"
    puts ":("
when "Bored"
    puts":|"
when "Silly"
    puts ":p"
else
    puts "$)"
end


