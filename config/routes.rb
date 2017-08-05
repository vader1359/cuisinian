Rails.application.routes.draw do
  resource :sections, only: [:index] do
    resource :dishes
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "contact" => "home#contact"
  get "welcome" => "home#welcome"
  get "menu" => "menu#index"
  
  root "home#index"
end
