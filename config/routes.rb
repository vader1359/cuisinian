Rails.application.routes.draw do
  get 'sections/name'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "contact" => "home#contact"
  get "welcome" => "home#welcome"
  
  root "home#menu"
end
