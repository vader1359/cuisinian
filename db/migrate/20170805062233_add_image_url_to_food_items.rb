class AddImageUrlToFoodItems < ActiveRecord::Migration[5.1]
  def change
    add_column :food_items, :image_url, :string
  end
end
