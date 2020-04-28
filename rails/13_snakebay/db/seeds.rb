Snake.names.each do |name|
    Breed.create(name: name)
    puts "#{name} created"
end

# image_data = Rails.application.assets['images/hero.png'].

for i in 1..10
    l = Listing.create(
        title: Faker::Lorem.sentence(word_count: 3),
        breed_id: [*1..126].sample,
        description: Faker::Lorem.paragraph,
        sex: [0,1].sample,
        price: rand(1...2000),
        deposit: 10,
        city: Faker::Address.city,
        state: Faker::Address.state,
        date_of_birth: Faker::Date.between(from: 2.years.ago, to: 1.month.ago),
        diet: Faker::Food.description
    )
    # l.picture.attach(io: File.open(image_data),
    # l.picture.attach(io: File.open("storage/Jw/5c/Jw5cW7megtWJdUy4W1qvyQEE"),
    # filename: "file.png", content_type: "image/png")
    l.picture.attach(io: File.open(Rails.root.join("app/assets/images/hero.png")), 
    filename: "hero.png", content_type: "image/png")

    puts "listing #{i} created."
end
