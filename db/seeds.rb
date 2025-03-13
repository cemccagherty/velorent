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
user = User.create!(
  email: "user@test.com",
  password: "123456"
)

bike_brands = ["Trek", "Giant", "Cannondale", "Specialized", "Bianchi", "Merida", "Scott", "Canyon"]
bike_types = ["Road", "Mountain", "Hybrid", "Electric", "BMX", "Gravel", "Folding"]
bike_colors = ["Red", "Blue", "Black", "Green", "White", "Yellow", "Orange", "Purple"]

puts "creating bikes"

10.times do
  Bike.create!(
    brand: bike_brands.sample,
    bike_type: bike_types.sample,
    year: rand(2015..2024),
    color: bike_colors.sample,
    user: user,
    price: 100
  )
end

puts "Creating orders"
5.times do
  Order.create!(
    user: user,
    bike: Bike.all.sample,
    status: [true, false].sample,
    rental_date: Date.today + rand(1..30).days,
    rental_date_end: Date.today + rand(31..60).days
  )
end

#    ---- second user ----

user_two = User.create!(
  email: "second_user@test.com",
  password: "keklmao"
)

10.times do
  Bike.create!(
    brand: bike_brands.sample,
    bike_type: bike_types.sample,
    year: rand(2015..2024),
    color: bike_colors.sample,
    user: user_two
  )
end


5.times do
  Order.create!(
    user: user_two,
    bike: Bike.all.sample,
    status: [true, false].sample,
    rental_date: Date.today + rand(1..30).days,
    rental_date_end: Date.today + rand(31..120).days
  )
end
