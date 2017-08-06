class MenuController < ApplicationController
  def index
    @sections = Section.all
    @foods = FoodItem.all
    specialities_section = Section.find_by(name: :Specialities)
    @specialities = specialities_section.food_items
    
    if params[:section]
      section = Section.find_by(name: params[:section])
      @food_items = section.food_items
    else
      @food_items = @specialities
    end
    
  end
end
