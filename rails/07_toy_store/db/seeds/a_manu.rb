for i in 1..7
    Manufacturer.create(
        name: Faker::FunnyName.name,
        location: Faker::Address.street_address
    )
    puts "Manufacturer #{i} created."
end