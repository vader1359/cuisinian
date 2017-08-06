

class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, :description, :image_url, presence: true
end
