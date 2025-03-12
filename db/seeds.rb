# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Order.destroy_all
Bike.destroy_all
User.destroy_all
puts "User created"
User.create!(
  email: "user@test.com",
  password: "123456"
)
puts "crating bikes"
5.times do
  puts "single bike created"
  Bike.create!(
    brand: "thing",
    year: 2000,
    color: "green",
    user: User.first
  )
end
puts "creating order"
2.times do
  Order.create!(
    user: User.first,
    bike: Bike.first
  )
end
