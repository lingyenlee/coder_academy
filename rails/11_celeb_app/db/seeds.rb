# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..10
    Celebrity.create(
        name: Faker::Artist.name,
        date_of_birth: Faker::Date.between(from: 80.years.ago, to: Date.today)
    )

    puts "Celebrity #{i} created."
end

for i in 1..10
    Address.create(
        city: Faker::Address.city,
        country: Faker::Address.country,
        celebrity_id: Faker::Number.unique.number(digits: 10)
    )

    puts "Address #{i} created."
end