# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding data..."
#Admin.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password  )
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password  )
=begin
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
        admin_id: rand(1..10),
        images: "https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
    )
end
=end

puts "Done Seeding Data..."