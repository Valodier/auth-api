Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #Users
  post "/users" => "users#create"
  get "/users/:id" => "users#show"

  #Session
  post "/sessions" => "sessions#create"
end
