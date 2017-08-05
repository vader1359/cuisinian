require 'rmagick'
include Magick
puts image = Magick::ImageList.new("https://static.pexels.com/photos/5506/bread-food-salad-sandwich.jpg")

crop = image.crop!(CenterGravity, 308, 337)
crop.write('test_cropped.jpg')