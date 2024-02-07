Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Lists
  get "/lists", to: "lists#index"
  get "/lists/new", to: "lists#new", as: :new_list
  post "/lists", to: "lists#create"
  get "/lists/:id", to: "lists#show", as: :list
  get "/lists/:list_id/bookmarks/new", to: "bookmarks#new", as: :new_list_bookmark
  post "/lists/:list_id/bookmarks", to: "bookmarks#create", as: :list_bookmarks

  # Bookmarks
  delete "/bookmarks/:id", to: "bookmarks#destroy", as: :bookmark

  # Reviews
  delete "/reviews/:id", to: "reviews#destroy", as: :review
end
