# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Add sections to the database
section_names = [:Breakfast, :Lunch, :Dinner, :Drink]
section_names.each do |name|
  section = Section.create(name: name)
  if section.persisted?
    puts "#{name} section added OK"
  else
    puts "#{name} has not been added"
  end
end

# Add food items to correct Section in Database
breakfast_foods = [
{
name: "egg",
price: 100_000,
description: "Really delicious",
section_id: 1,
image_url: "http://loremflickr.com/320/240/egg"

},

{
name: "bread",
price: 10_000,
description: "Really delicious and terrible",
section_id: 1,
image_url: "http://loremflickr.com/320/240/bread"
},

{
name: "banana",
price: 10_000,
description: "Hate it",
section_id: 1,
image_url: "http://loremflickr.com/320/240/banana"
},

{
name: "hamburger",
price: 10_000,
description: "Nice fast food",
section_id: 1,
image_url: "http://loremflickr.com/320/240/hamburger"
}

]

breakfast_foods.each do |food|
  food_item = FoodItem.new(
  name: food[:name], 
  price: food[:price], 
  description: food[:description], 
  section_id: food[:section_id], 
  image_url: food[:image_url])

  food_item.save()
end

