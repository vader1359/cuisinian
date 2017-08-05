# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Add sections to the database
section_names = [:Breakfast, :Lunch, :Dinner, :Drink, :Specialities]
section_names.each do |name|
  section = Section.create(name: name)
  if section.persisted?
    puts "#{name} section added OK"
  else
    puts "#{name} has not been added"
  end
end

# Add food items to correct Section in Database
specialities = [
{
name: "Salmonian",
price: 99,
description: "Grilled salmon fillets with a sweet Iano mustard glaze.",
section_id: 5,
image_url: "https://static.pexels.com/photos/46239/salmon-dish-food-meal-46239.jpeg"

},

{
name: "Salmonian",
price: 99,
description: "High quality bluberries from Iano",
section_id: 5,
image_url: "https://static.pexels.com/photos/8688/food-blueberries-blueberry.jpg"
},

{
name: "Lemonian",
price: 99,
description: "Rice with grilled fish and lemon soup",
section_id: 5,
image_url: "https://static.pexels.com/photos/8758/food-dinner-lemon-rice.jpg"
},

{
name: "Beefian",
price: 99,
description: "Barbecue Beef cooked with Iano leaf",
section_id: 5,
image_url: "https://static.pexels.com/photos/410648/pexels-photo-410648.jpeg"
}

]

breakfasts = [
{
name: "Sandwichian",
price: 9,
description: "Healthy Iano Sandwich with salad",
section_id: 1,
image_url: "https://static.pexels.com/photos/5506/bread-food-salad-sandwich.jpg"

},

{
name: "Burgerian",
price: 9,
description: "Iano Beef with vegetables",
section_id: 1,
image_url: "https://static.pexels.com/photos/161519/abstract-barbecue-barbeque-bbq-161519.jpeg"
},

{
name: "Noodian",
price: 9,
description: "Cheap instant noodian",
section_id: 1,
image_url: "https://static.pexels.com/photos/162993/food-thai-spicy-asian-162993.jpeg"
},

{
name: "Sushian",
price: 9,
description: "Sushian for the poor",
section_id: 1,
image_url: "https://static.pexels.com/photos/359993/pexels-photo-359993.jpeg"
}
]

lunches = [
{
name: "Prawnian",
price: 18,
description: "Prawn with Iano carrots",
section_id: 2,
image_url: "https://static.pexels.com/photos/37405/food-prawn-asian.jpg"

},

{
name: "Breadian",
price: 18,
description: "Bread with Iano fruits",
section_id: 2,
image_url: "https://static.pexels.com/photos/86753/pexels-photo-86753.jpeg"
},

{
name: "Pankian",
price: 18,
description: "Pancake with iano rasberry",
section_id: 2,
image_url: "https://static.pexels.com/photos/315718/pexels-photo-315718.jpeg"
},

{
name: "Pizzian",
price: 18,
description: "Iano cheap pizza ",
section_id: 2,
image_url: "https://static.pexels.com/photos/7658/food-pizza-box-chalkboard.jpg"
}
]

dinners = [
{
name: "Chickian",
price: 36,
description: "Chiken grilled in Iano's style",
section_id: 3,
image_url: "https://static.pexels.com/photos/161640/abstract-barbecue-barbeque-bbq-161640.jpeg"

},

{
name: "Brocolian",
price: 36,
description: "Brocoli from Iano's village",
section_id: 3,
image_url: "https://static.pexels.com/photos/8817/food-dinner-pasta-broccoli.jpg"
},

{
name: "Meatian",
price: 36,
description: "Meat with Iano's vegetables",
section_id: 3,
image_url: "https://static.pexels.com/photos/39634/pexels-photo-39634.jpeg"
},

{
name: "Fishian",
price: 36,
description: "Fresh fish from Iano's dead sea",
section_id: 3,
image_url: "https://static.pexels.com/photos/262973/pexels-photo-262973.jpeg"
}
]

drinks = [
{
name: "Sodian",
price: 72,
description: "Expensive soda that Ian likes",
section_id: 4,
image_url: "https://static.pexels.com/photos/109275/pexels-photo-109275.jpeg"

},

{
name: "Winian",
price: 72,
description: "Fake wine Ian made",
section_id: 4,
image_url: "https://static.pexels.com/photos/40592/brandy-alcohol-smoke-fire-40592.jpeg"
},

{
name: "Lemonian",
price: 72,
description: "Luxury lemonade from the internet",
section_id: 4,
image_url: "https://static.pexels.com/photos/158821/mineral-water-lime-ice-mint-158821.jpeg"
},

{
name: "Cockian",
price: 72,
description: "Cheap alcohol from Iano city",
section_id: 4,
image_url: "https://static.pexels.com/photos/298719/pexels-photo-298719.jpeg"
}
]

specialities.each do |food|
  food_item = FoodItem.new(
  name: food[:name], 
  price: food[:price], 
  description: food[:description], 
  section_id: food[:section_id], 
  image_url: food[:image_url])
  
  food_item.save()
end

breakfasts.each do |food|
  food_item = FoodItem.new(
  name: food[:name], 
  price: food[:price], 
  description: food[:description], 
  section_id: food[:section_id], 
  image_url: food[:image_url])
  
  food_item.save()
end

lunches.each do |food|
  food_item = FoodItem.new(
  name: food[:name], 
  price: food[:price], 
  description: food[:description], 
  section_id: food[:section_id], 
  image_url: food[:image_url])
  
  food_item.save()
end

dinners.each do |food|
  food_item = FoodItem.new(
  name: food[:name], 
  price: food[:price], 
  description: food[:description], 
  section_id: food[:section_id], 
  image_url: food[:image_url])
  
  food_item.save()
end

