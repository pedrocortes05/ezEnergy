Rails.application.routes.draw do
  get "home" => "home#index"

  get "unity" => "home#unity"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
