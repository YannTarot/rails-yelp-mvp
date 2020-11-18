# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
mcdonald = { name: "McDonald", address: "18 rue du Fast food, Nantes", phone_number: "06459876462" ,category: "belgian" }
pizza_yolo =  { name: "Pizza Yolo", address: "4 boulevard Pepperoni, Bordeaux", phone_number: "0746589548", category: "italian" }
sakura = { name: "Sakura", address: "65 rue du Wasabi, Paris", phone_number: "06329784265", category: "japanese" }
luigi_pasta =  { name: "Luigi's pasta", address: "45 avenue de la Sauce Bolognaise, Rennes", phone_number: "0648794614", category: "italian" }
kaboul_kebab =  { name: "Kaboul Kebab", address: "98 rue Sauce Samourai, Lyon", phone_number: "0612345678", category: "french" }


[ mcdonald, pizza_yolo, sakura, luigi_pasta, kaboul_kebab].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
