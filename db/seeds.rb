# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy restaurants"
Restaurant.destroy_all
User.destroy_all

puts "create restaurants"

alex = User.create!(
  email:    "alex@gmail.com",
  password: "azerty",
)

Restaurant.create!(
  name:    "La Famille",
  address: "Lille Euratech",
  user:    alex,
)

Restaurant.create!(
  name:    "Alexens",
  address: "Lille Euratech",
  user:    alex,
)


puts "#{Restaurant.count} restaurants created"
puts "#{User.count} users created"
