list_of_names = [ nil,"Liam Rogers",
"Kaden Hanson",
"Marquise Everett",
"Graham Barker",
"Giovani Hanna",
"Pickles The Corgi",
"Tatiana Nunez",
"Jazlene Johnson",
"Sheldon Navarro",
"Kiersten Barajas",
"Camilla Martin",
"Pickles The Corgi",
"Moses Gill",
"Silas Bowers",
"Orlando Wilkinson",
"Jaida Lambert",
"Naomi Day",
"Maximilian Greene",
"Ryder Patton",
"Noah Pearson",
"Sofia Howard",
nil,
"Heaven Giles",
"Peter Wyatt",
"Destiney Hanson",
"Colten Ali",
"Ashley Wade",
"Zachary Rubio",
"Layla Gross",
"Jaslene Hodges",
"George Mata",
"Helen Branch",
"Jaydan Gray",
nil,
"Tristin Wilson",
"Dale Baxter",
"Kaleigh Rogers",
"Vincent Rhodes",
"Matilda Jackson",
"Arturo Stone",
"Chaya Dodson",
"Malcolm Meadows",
"Pickles The Corgi",
"Davion Santos",
"Kian Brown",
"Dustin Wong",
"Lorena Baird",
"Franklin Chaney",
"Dahlia Hernandez",
"Brycen Levine",
"Brylee Glass",
"Sean Howe",
"Joey Coleman"
]

# # print out how many names there are.
# new_list = list_of_names.reject { |name| name.nil? }
# puts "length: #{new_list.length}"

# # print out the 2nd name in the list.
# puts "2nd name on list is #{list_of_names[1]}"

# # Check of the array includes the name “Sofia Howard”
# puts "Is Sofia Howard on the list? #{list_of_names.include?("Sofia Howard")}"

# # Check of the array includes the name “Maquise Everett”
# puts "Is Maquise Everett on the list? #{list_of_names.include?("Maquise Everett")}"

# # Add your name to the beginning of the array
# list_of_names.unshift("Lee")
# puts list_of_names

# # Add your name to the end of the array
# list_of_names.push("Lee")

# # Insert the name “Dave Grohl” at index 30
# list_of_names.insert(30, "Dave Grohl")
# puts list_of_names

# # Remove and return the last element of the array.
# puts "last element is #{list_of_names.pop}"


# # delete the name at index 27
# puts "name deleted at index 27 is #{list_of_names.delete_at(27)}"

# # remove all nil and 0 values from the array
# new_list_names = list_of_names.reject{|name| name.nil? || 0}

# # Sort the array in alphabetical order
# puts new_list.sort

# # remove all non unique names from the array.
# puts new_list.uniq.sort

# Count how many elements are in the array
# def how_many_elements(list_of_names)
#     #your code here
#     count = 0
#     for i in list_of_names
#         count += 1
#     end
#     return count
# end

# puts how_many_elements(list_of_names)

# replace “Layla Gross” with your name.

# def remove_layla_gross(list_of_names)
#     #your code here
#     count = 0
#     for i in list_of_names
#         count += 1
#         list_of_names[count] = 'Lee' if list_of_names[count] == "Layla Gross"
#     end
# end
# puts remove_layla_gross(list_of_names)

# Count how many times “Pickles The Corgi” is in the array.

# def how_many_corgis(list_of_names)
#     #your code here
#     count = 0
#     for i in list_of_names
#         if i == "Pickles The Corgi"
#             count += 1
#         end
#     end
#     return count
# end

# puts how_many_corgis(list_of_names)

# Remove all nil values from the array

# def remove_all_nil_values(list_of_names)
#     #your code here
#     no_value = [nil]
#     new_list = list_of_names - no_value
#     return new_list
# end

# puts remove_all_nil_values(list_of_names).to_s

# 1. Write a method called render_box(x, y) which accepts two parameters x and y 
# which define a width and height respectively of a box that is to be drawn on the screen. 
# The method should output the box of the desired size.eg.
# render_box(1, 1) => *render_box(5, 2) =>   *****
#                                     *****render_box(4, 5) =>  ****
#                                    ****
#                                    ****
#                                    ****
#                                    ****

# def render_box(x)
#      0.upto(x) do
        
        
#         print '*'
#     end
# end

# puts render_box(5)