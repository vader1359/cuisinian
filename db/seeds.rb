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
  Section.create(name: name)
  puts "#{name} section added OK"
end