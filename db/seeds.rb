# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create stores if they don't exist
stores = [
  { name: 'Downtown Store', email: 'downtown@example.com', primary_contact: 'John Smith' },
  { name: 'Uptown Store', email: 'uptown@example.com', primary_contact: 'Jane Doe' }
].each do |store_attrs|
  Store.find_or_create_by!(name: store_attrs[:name]) do |store|
    store.assign_attributes(store_attrs)
  end
end

# Create bike types if they don't exist
['Mountain', 'Road', 'Hybrid', 'City'].each do |type_name|
  BikeType.find_or_create_by!(name: type_name)
end

# Create bike statuses if they don't exist
['Available', 'In Repair', 'Sold'].each do |status|
  BikeStatus.find_or_create_by!(name: status)
end
