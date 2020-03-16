# scope and globals

# to access dog in the method need to use $
$dog = "German Shepherd"

def print_dog()
    puts $dog
end

print_dog()


# items = ["apple", "orange", "kiwi"]
# items.push(gets.chomp)
# items.push(gets.chomp)
# items.push(gets.chomp)

# puts items

# items = ["apple", "orange", "kiwi"]

# items.pop

# puts items

# list = gets.chomp.split(" ")
# puts list.to_s

def last_name(name_list)
    return name_list[ name_list.length - 1]
end

list = ['John', 'Jane', 'David', 'Ben', 'Ruby']
puts last_name(list)

# How to store the state of "X" in the bottom left corner
#  |X|0
# 0|X|X
#  | |0

# tic_tac_toe = [
#     ["", "X", "0"],
#     ["0", "X", "X"],
#     [" ", " ", "0"]
# ]

# puts tic_tac_toe[0].to_s
# tic_tac_toe[2][0] = "X"
# puts tic_tac_toe.to_s


def middle_row_win(tic_tac_toe)
    if (tic_tac_toe[1] == ["X", "X", "X"] && tic_tac_toe[1].include?("X"))
        return "X win!"
    elsif (tic_tac_toe[1] == ["0", "0", "0"] && tic_tac_toe[1].include?("0"))
        return "0 win!"
    else
        return "Sorry you didn't win"
    end

end

tic_tac_toe = [
        ["", "X", "0"],
        ["0", "0", "0"],
        [" ", " ", "0"]
    ]

puts middle_row_win(tic_tac_toe)

# name = "Mike"
# new_name = name
# new_name = 'Joe'

# list = ['Joe', 'Tom', 'Karen']
# puts name
# puts name.object_id

# puts new_name
# puts new_name.object_id
# puts list.object_id

friends = ['Joe', 'Tom', 'Karen']
new_friends = friends.map{|x| x}

new_friends[1] = "Claire"

puts friends.to_s
puts friends.object_id
puts new_friends.to_s
puts new_friends.object_id



# name= nil

# while name != "exit"
#     print "What's your name: "
#     name = gets.chomp
#     puts "Hello #{name}"
# end

jar_full = false
jar_size = 90
cups_added = 0

while !jar_full
    cups_added +=1
    puts "Added another cupper, total count: #{cups_added}"
    if cups_added == jar_size
        jar_full = true
    end
end
# puts "The jar is full"

1.upto(10) do |i|
    puts i
end