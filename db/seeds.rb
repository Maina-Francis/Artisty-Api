# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding data..."
User.create!([{"first_name": "ken", "last_name": "kiogora", "email": "efrain@green.co", "password": "J89vScTiF38eOlU", "admin_id": 4}, 
    {"first_name": "dennis", "last_name": "Muriithi", "email": "gmail.cml", "password": "J89vScTiF3455", "admin_id": 3},
     {"first_name": "christine", "last_name": "chebet", "email": "chris@gmail", "password": "123chris", "admin_id": 1},
     {"first_name": "cheb", "last_name": "maina", "email": "cheb@gmail", "password": "123cheb", "admin_id": 2},
     {"first_name": "pauline", "last_name": "chepkorir", "email": "@gmail", "password": "cheb", "admin_id": 5},
     {"first_name": "susan", "last_name": "muthike", "email": "susan@gmail", "password": "pray", "admin_id": 6}

 ])

 Admin.create!([ {"first_name": "Edwin", "last_name": "mark", "email": "efrain@green.co", "password_digest": "J89vScTiF38eOlU"},
    {"first_name": "patriv", "last_name": "kai", "email": "efrain.co", "password_digest": "J89vScTiF"},
    {"first_name": "walker", "last_name": "john", "email": "walker.co", "password_digest": "J89"},
    {"first_name": "alvo", "last_name": "kiogo", "email": "alvo.co", "password_digest": "OlU"},
    {"first_name": "Kai", "last_name": "hervetz", "email": "kai.co", "password_digest": "xyz"},
    {"first_name": "kiago", "last_name": "eric", "email": "kiago.co", "password_digest": "kiago"},
    {"first_name": "kui", "last_name": "kamongo", "email": "kui.co", "password_digest": "mno"},
    {"first_name": "musa", "last_name": "muha", "email": "muha.co", "password_digest": "muha"}

 ])
#Admin.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password  )



#User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password  )
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