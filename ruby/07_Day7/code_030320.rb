# Symbols

# # difference betwn string and 
# my_string = "hello"
# my_string2 = "hello"

# # symbol can't have space
# my_symbol = :hello
# my_symbol2 = :hello

# # memory - 

# # string store in difference place even have the same text
# puts my_string.object_id
# puts my_string2.object_id

# # for symbols - store in the same place with the text
# puts my_symbol.object_id
# puts my_symbol2.object_id

# hashes
# map country abb to get their own names
# store data as key-value pair 

# if use string, it is stored at 2 separate locations
# abbreviation = {
#     'us' => 'United States of America',
#     'au' => 'Australia',
#     'es' => 'Spain'
# }

# puts abbreviation['us']

# # if use symbols it is only store in one location
# abbreviation = {
#     :us => 'United States of America',
#     :au => 'Australia',
#     :es => 'Spain'
# }

# puts abbreviation[:us]

# # write a program to map food names to their number of colories
# foods = {
#     :pizza => 200,
#     :fries => 500,
#     :burger => 1050
# }

# puts foods[:pizza]

# puts foods.has_key?(:pizza)
# puts foods.keys
# puts foods.values

# puts "=============="
# foods.each{ |k, v| puts k, v}



# Convert the following data table into a ruby hash using the item_name as the keys
#      item_name       price
#   --------------------------
#      tooth paste     3.99
#      cheese          5.00
#      bread           7.50
#      oatmeal         12.00
#      sugar           2.99
#
# Now write a method which acceps a list of item names and calculates the total cost



def price(items)
    foods = {
        :toothpaste => 3.99,
        :cheese => 5.00,
        :bread => 7.50,
        :oatmeal => 12.00,
        :sugar => 2.99,
        # "tortillas" => 5.99
    }

    total_price = 0

    for item in items
        #  total_price = total_price + foods.has_key?(item) ? foods[item] : 0
        # puts item
        total_price = total_price + foods[item]
    end

    return total_price
end


puts price([:toothpaste, :cheese])





def calories_in(list_of_foods)

    food_calories = {
        "pizza" => 200,
        "fries" => 500,
        "burger" => 1050
    }

    total_calories = 0

    for food in list_of_foods
        if food_calories.has_key?(food)
            total_calories = total_calories + food_calories[food]
        end
    end
    return total_calories

end

puts calories_in(["pizza", "burger"])


# count the number of times each word shows up in a phrase
# for the phrase "Mike Mike mike one one two three mike"
# def num_times(phrase)
#     words = phrase.downcase.split(" ")
#     # puts words.to_s
#     word_counter = {}
#     for word in words
#         if word_counter.has_key?(word)
#             word_counter[word] += 1
#         else
#             word_counter[word] = 1
#         end
#     end
#     return word_counter
# end

# puts num_times("Mike Mike mike one one two three mike")


# write a program which prints out all the test grades with a note indicating
# if they passed or failed. Any score under 70 is a failure
# bonus: write the program using iterators and blocks

# test_grades = [50, 90, 85, 46, 82, 99, 10]

# # for grade in test_grades
# #     puts grade < 70 ? "You fail - #{grade}" : "You pass - #{grade}"
# # end

# test_grades.each { |grade| puts grade < 70 ? "You fail - #{grade}" : "You pass - #{grade}" }

# # for multiple lines replace {} with do end
# test_grades.each do |grade|
#     puts "something"
# end

# # write a program that iterates through the capital cities has below and
# # prints out the keys and values

# capital_cities = {
#     :nsw => "Sydney",
#     :vic => "Melbourne",
#     :qld => "Brisbane"
# }

# capital_cities.each do |key, value|
#     puts "#{key} => #{value}"
# end

# # loop through each with number of iterations
# favourite_candy = ["twix", "skittles", "m&ms"]

# favourite_candy.each_with_index do |candy, i|
#     puts "#{i} - i like #{candy}"
# end



# On your own look up the .map function and use it to write the following 
# program:
#

# Write a method called `capitalizer` which takes as an argument an array
# of strings, and returns a copy of the array with all strings capitalized

# words = ['apple', 'orange', 'kiwi', 'banana']

# def capitalizer(arr)
#     cap_words = arr.map do |x|
#         x.upcase
#     end
#     return cap_words
# end

# puts capitalizer(words)

fruits = ['banana','pineapple', 'orange', 'pear']
x = fruits.sort
puts x

b = fruits.sort do |fruit1, fruit2|
    fruit1.length <=> fruit2.length
end

puts "b #{b}"

longest = fruits.inject do |memo, fruit|
    if fruit.length > memo.length
        fruit
    else 
        memo
    end
end
puts "longest word in fruits is #{longest}"

mesh = fruits.inject("") do |memo, fruit|
    memo << fruit[0]
end

puts mesh

y = fruits.map do |fruit|
    if fruit == 'pear'
        fruit.upcase
    end
end

puts y.to_s

puts (1..5).inject {|acc, n| acc + n}

# def sum_numbers(numbers)
#     # numbers.reduce(0) { |acc, i| i+acc }
#     numbers.inject {|acc, n| acc + n}
# end

# puts sum_numbers([1, 1, 1])
# puts sum_numbers([5, 100, 2, 0, -120, 13])
# puts sum_numbers([])

# array = [5,8,3,6,8,1]

# x = array.sort {|x1, x2| x2 <=> x1}
# puts x