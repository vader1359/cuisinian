Rails.application.routes.draw do

  resources :line_items

  post "carts/add"
  get "cart" => "carts#show"

  resources :food_items
  resources :sections
  resources :sections do
    end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "contact" => "home#contact"
  get "welcome" => "home#welcome"
  get "menu" => "menu#index"
  
  root "home#index"
end
