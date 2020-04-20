# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..10
    Movie.create(
        title: Faker::Superhero.name,
        duration: Faker::Number.number(digits:3) 
    )
    puts "Created #{i} new records"
end