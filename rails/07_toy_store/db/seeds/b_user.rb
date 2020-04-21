
for i in 1..15
    User.create(
        email: "#{Faker::Name.first_name}@toy_store.com",
        password: Faker::Alphanumeric.alphanumeric(number: 10, min_alpha:3,min_numeric:3)
    )
    puts "User #{i} created."
end