p (true && !(5 > 2 + 5) ||| !false) && 2 < 4     # true

while true
    print "What's your name: "
    name = gets.chomp
    if name == 'exit'
        return false
    else
        puts "Hello #{name}"
    end
end