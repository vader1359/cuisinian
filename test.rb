# require 'rmagick'
# include Magick
# puts image = Magick::ImageList.new("https://static.pexels.com/photos/5506/bread-food-salad-sandwich.jpg")

# crop = image.crop!(CenterGravity, 308, 337)
# crop.write('./app/assets/images/food_images/test_cropped.jpg')

<div class="specialities-item-img even">
            <img src="assets/food_images/<%= food_item.name %>.jpg" alt="<%= food_item.name %>">
          </div>

          <div class="specialities-item-img even">
            <img src="assets/food_images/<%= food_item.name %>.jpg" alt="<%= food_item.name %>">
          </div>