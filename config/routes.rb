Rails.application.routes.draw do
  get "home" => "home#index"

  get "unity" => "home#unity"
  post "new_carbon" => "home#new_carbon"
  post "new_calc" => "home#new_calc"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
