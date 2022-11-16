# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
monamour = { name: 'Monamour', address: 'Putney', category: 'French'}
sticks_n_sushi = { name: 'Sticks n Sushi', address: 'Victoria', category: 'Japanese' }
manekkenpis = { name: 'Manekkenpis', address: 'Bermondsey', category: 'Belgian', phone_number: '07974782028' }
kung_food = { name: 'Kung Food', address: 'Aldgate', category: 'Chinese', phone_number: '07830431810' }
franco_manca = { name: 'Franco Manca', address: 'Waterloo', category: 'Italian' }

[monamour, sticks_n_sushi, manekkenpis, kung_food, franco_manca].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
