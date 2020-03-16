# 10.downto(0) do |i|
#     puts "00:00:#{'%02d' % i}"
#     sleep 1
#   end

#   comt = 10
# while (comt > 0)
#     sleep(1)
#     comt = comt - 1
#     puts comt
# end#while

# fin = Time.now 
# while Time.now < fin
#   puts fin - Time.now
#   sleep 1
# end

# t = Time.new(0)
# countdown_time_in_seconds = 20 # change this value

# countdown_time_in_seconds.downto(0) do |seconds|
#   puts (t + seconds).strftime('%H:%M:%S')
#   sleep 1
# end

# letter = [*"a".."z"]
# puts letter.to_s
# letter_array = letter.sample(7)


# # # puts letter_array.to_a.all_possibilities(2,7)
# puts (2..7).flat_map{|n| letter_array.combination(n).map(&:join)}

# puts letter_array.to_s
# require "tty-box"


# box = TTY::Box.success("Deploying application")
# box = TTY::Box.info("Deploying application")
# print box

# require 'tty-cursor'
# require 'tty-screen'

# @cursor = TTY::Cursor
# @size = TTY::Screen.size # => [height, width]
# @height = @size[0]
# @width = @size[1]

# def move_cursor_to_required_coordinates(text)
#   x = (@size[1] - text.length) / 2
#   y = (@size[0]) / 2
#   print @cursor.move_to(x, y)
# end

# def centered_text(text)
#   move_cursor_to_required_coordinates(text)
#   puts text
# end

# centered_text("welcome to the center")

word = "affordable"
array = word.split("")
puts array.to_s