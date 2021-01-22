# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: 'admin@example.com',
  password: '123qwe123',
  first_name: 'admin',
  last_name: 'example',
  is_admin: true
)

10.times do |user|
  User.create(
    email: "user#{user}@gmail.com",
    password: "password#{user}!",
    first_name: "User_#{user}",
    last_name: "User_#{user}",
    is_admin: false
  )
end

5.times do |trip|
  Trip.create(
    user_id: rand(1..10),
    title: "Trip_#{trip}",
    description: "Description_#{trip}",
    start_at: '12-12-2021',
    end_at: '16-12-2021',
    location: 'Trip-Location',
    lat: 50,
    lng: 50
  )
end
