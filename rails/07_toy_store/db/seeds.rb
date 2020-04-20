# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..20
    Toy.create(
        name: Faker::Creature::Animal.name,
        description: Faker::Quote.matz,
        date_posted: Faker::Date.between(from: 50.years.ago, to: Date.today),
        user: Faker::Name.unique.first_name
    )
    puts "Created #{i} new records"
end