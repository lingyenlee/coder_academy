# Blanket patterns
# colors = "RRGGBBYYKK"
# output 20 rows
# on each row, shift the characters to the left by removing the first
# character and putting it at the end
# loops or iterator

#!/usr/bin/env ruby
colors = "RRGGBBYYKK"
i=0
lines = 15
while i < lines
    first_char = colors[0]
    new_colors= colors[1..-1].insert(-1, first_char)
    colors = new_colors
    i += 1
    puts new_colors
end

symbols = "-:[/][/][/]:-"
lines = 30

lines.times do |i|
    first_symbol = symbols[0]
    rest_symbols = symbols[1..-1]
    symbols = rest_symbols + first_symbol
    puts symbols
end







