# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"
user_one_photo_file = URI.parse("https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS01hPPkdCBK7fP4Qx2EmUGETk_24JuLyuN06zEJ3FmazeoZ-gBvCJGmEJiSnGF2MGLMABIKN-TlF5Y26_Ctonq7Q").open

Order.destroy_all
Bike.destroy_all
User.destroy_all
puts "User created"
user_one = User.new(
  email: "user@test.com",
  password: "123456",
  username: "testuser" # Add username field
)
user_one.photo.attach(io: user_one_photo_file, filename: "cavendish.png", content_type: "image/png")
user_one.save!

user_two_photo_file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-kO6JR4FnFJrQpR-AP0flYN7XBLdtBFDRlQ&s").open

user_two = User.create!(
    email: "second_user@test.com",
    password: "keklmao",
    username: "secondtestuser" # Add username field
  )
user_two.photo.attach(io: user_two_photo_file, filename: "pogacar.png", content_type: "image/png")
user_two.save

users = [user_one, user_two]

puts "creating bikes"

bike = Bike.new(
  brand: "Trek",
  bike_type: "Road",
  year: rand(2015..2024),
  color: "Blue",
  user: users.sample,
  price: rand(15..150)
)
bike_photo_file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf50UYjZ7G_pXbBVLLkrVLl-o1MXwmQcsdXw&s").open
bike.photo.attach(io: bike_photo_file, filename: "bike_1.png", content_type: "image/png")
bike.save!

london_areas = ['Camden', 'Hackney', 'Kensington', 'Islington', 'Southwark', 'Westminster', 'Lambeth', 'Shoreditch', 'Brixton']

puts "creating bikes"

bike = Bike.new(
  brand: "Trek",
  bike_type: "Road",
  year: rand(2015..2024),
  color: "Red",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5rVzO3TjAF85eRT3JogpWEG1mCWh6LZ-R3w&s").open
bike.photo.attach(io: bike_photo_file, filename: "bike_2.png", content_type: "image/png")
bike.save!

bike = Bike.new(
  brand: "Trek",
  bike_type: "Road",
  year: rand(2015..2024),
  color: "Blue",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL4zo0Y_4jF9zS6EkiUdC8wUdoMj9bzfXmzw&s").open
bike.photo.attach(io: bike_photo_file, filename: "bike_3.png", content_type: "image/png")
bike.save!

bike = Bike.new(
  brand: "Trek",
  bike_type: "Mountain",
  year: rand(2015..2024),
  color: "Black",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://off.road.cc/sites/default/files/styles/970wide/public/thumbnails/image/2021_Trek_Slash_hero.jpg").open
bike.photo.attach(io: bike_photo_file, filename: "bike_4.png", content_type: "image/png")
bike.save!

bike = Bike.new(
  brand: "Specialized",
  bike_type: "Road",
  year: rand(2015..2024),
  color: "White",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxYN3d9xbt_60ZPsymd_DJWgPycCbK-xD-EQ&s").open
bike.photo.attach(io: bike_photo_file, filename: "bike_5.png", content_type: "image/png")
bike.save!

bike = Bike.new(
  brand: "Specialized",
  bike_type: "Mountain",
  year: rand(2015..2024),
  color: "Brown",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://www.atlasrideco.com/sites/default/files/styles/hero_header_narrow/public/2021-02/Specialized%20Enduro%20-%20MTB%20Beds.jpg?h=a1e1a043&itok=r6H7Ltn3").open
bike.photo.attach(io: bike_photo_file, filename: "bike_6.png", content_type: "image/png")
bike.save!

bike = Bike.new(
  brand: "Specialized",
  bike_type: "Mountain",
  year: rand(2015..2024),
  color: "Black",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJyxAJlQeDe-3EC3vuKOSfncED6NY1U65CM-3wFLjsHz6himpbSt_o0k0T92cBWharbW4&usqp=CAU").open
bike.photo.attach(io: bike_photo_file, filename: "bike_7.png", content_type: "image/png")
bike.save!

bike = Bike.new(
  brand: "Specialized",
  bike_type: "Mountain",
  year: rand(2015..2024),
  color: "Blue",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcLDTsMA-DMag8fzKxQUYKlbF9S8Ohlcnylw&s").open
bike.photo.attach(io: bike_photo_file, filename: "bike_8.png", content_type: "image/png")
bike.save!

bike = Bike.new(
  brand: "Ducati",
  bike_type: "Sport",
  year: rand(2015..2024),
  color: "Red",
  user: users.sample,
  price: 350,
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7MSvEL_iwjgm6pbOWu-ZBGNyP_0ICtluLyA&s").open
bike.photo.attach(io: bike_photo_file, filename: "bike_9.png", content_type: "image/png")
bike.save!

bike = Bike.new(
  brand: "Canyon",
  bike_type: "Mountain",
  year: rand(2015..2024),
  color: "White",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMuEDD9ORUhXBsEaYcneh-_0sGGlEnZFnp5g&s").open
bike.photo.attach(io: bike_photo_file, filename: "bike_10.png", content_type: "image/png")
bike.save!

bike = Bike.new(
  brand: "Canyon",
  bike_type: "Road",
  year: rand(2015..2024),
  color: "Black",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://mynextbike.co.uk/cdn/shop/files/media_additional_cugskzaw.jpg?v=1737412107").open
bike.photo.attach(io: bike_photo_file, filename: "bike_11.png", content_type: "image/png")
bike.save!

bike = Bike.new(
  brand: "Canyon",
  bike_type: "Road",
  year: rand(2015..2024),
  color: "Blue",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://img.redbull.com/images/c_limit,w_1500,h_1000/f_auto,q_auto/redbullcom/2023/8/31/qphhgy9bftjopzxhlrdt/canyon-endurance-bike-23").open
bike.photo.attach(io: bike_photo_file, filename: "bike_12.png", content_type: "image/png")
bike.save!

10.times do
  Bike.create!(
    brand: bike_brands.sample,
    bike_type: bike_types.sample,
    year: rand(2015..2024),
    color: bike_colors.sample,
    user: user_two,
    price: 100,
    area: london_areas.sample
  )
end

bike = Bike.new(
  brand: "Canyon",
  bike_type: "Road",
  year: rand(2015..2024),
  color: "Red",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC54SHEn_X8H_CiDVO-ulA9_1hkmgDPyhDkA&s").open
bike.photo.attach(io: bike_photo_file, filename: "bike_13.png", content_type: "image/png")
bike.save!

bike = Bike.new(
  brand: "Cannondale",
  bike_type: "Mountain",
  year: rand(2015..2024),
  color: "Black",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUAkDRDU7zjERkzc0-n0eyzgKrJq_xH0tsLg&s").open
bike.photo.attach(io: bike_photo_file, filename: "bike_14.png", content_type: "image/png")
bike.save!

bike = Bike.new(
  brand: "Cannondale",
  bike_type: "Mountain",
  year: rand(2015..2024),
  color: "Black",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStAK566ROhm_7TBIJLIG-72VW15EeNJt63LQ&s").open
bike.photo.attach(io: bike_photo_file, filename: "bike_15.png", content_type: "image/png")
bike.save!

bike = Bike.new(
  brand: "Cannondale",
  bike_type: "Mountain",
  year: rand(2015..2024),
  color: "Green",
  user: users.sample,
  price: rand(15..150),
  area: london_areas.sample
)
bike_photo_file = URI.parse("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbz5i1PsRQHWe4tgrLAyMB6h1ARiBbTJTmpQ&s").open
bike.photo.attach(io: bike_photo_file, filename: "bike_16.png", content_type: "image/png")
bike.save!





puts "Creating orders"
10.times do
  Order.create!(
    user: users.sample,
    bike: Bike.all.sample,
    status: ["pending", "confirmed"].sample,
    rental_date: Date.today + rand(1..30).days,
    rental_date_end: Date.today + rand(31..60).days
  )
end
