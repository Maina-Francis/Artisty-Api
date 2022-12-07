# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding data..."

5.times do 
    Admin.create(
        name: Faker::Name.name 
    )
end

10.times do 
    User.create(
        name: Faker::Name.name,
        admin_id: rand(1..5)
    )
end

20.times do 
    Post.create(
        description: Faker::Lorem.sentence(word_count: 5),
        likes: rand(1..50),
        user_id: rand(1..10),
        admin_id: rand(1..10)
    )
end
puts "Done Seeding Data..."