Rails.application.routes.draw do
  resource :sections, only: [:show] do
    resource :dishes
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "contact" => "home#contact"
  get "welcome" => "home#welcome"
  
  root "sections#show"
end
