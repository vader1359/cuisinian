

class FoodItem < ApplicationRecord
  belongs_to :section
  has_many :line_items, dependent: :destroy
  validates :name, :description, :image_url, presence: true
end
