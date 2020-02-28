puts "hello"
puts "Darth"
puts "a" + "b" + "c"
puts "Hello" * 3
puts "Darth " * 2 + " Vader" * 3.0
puts "Hello World"
puts "Olympics".reverse
puts "Olympics".upcase.reverse
puts "Olympics".class 

number_map = {
    1 => 'I',
    2 => 'II',
    3 => 'III',
    4 => 'IV',
    5 => 'V',
    6 => 'VI',
    7 => 'VII',
    8=> 'VIII',
    9=> 'IX',
    10=> 'X'
}
puts number_map[2]

cart = ['apple', 'banana', 'carrot']

unless cart.empty?
    puts "The first item is: #{cart[0]}"
end

x = 1
until x > 100
    puts x
    x = x * 2
end