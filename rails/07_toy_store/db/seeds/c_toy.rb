
for i in 1..50
    Toy.create(
        name: "Toy#{i}",
        description: "Toy#{i} is super safe",
        date_posted: Time.now,
        user_id: Faker::Number.between(from: 1, to: 15),
        manufacturer_id: Faker::Number.between(from: 1, to: 7)
    )
    puts "Toy #{i} created."
end