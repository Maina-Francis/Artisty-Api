Rails.application.routes.draw do

  resources :admins, only: [:index]
  resources :posts
  resources :users, only: [:index, :create, :show, :destroy]
 post "/signup", to: "admins#signup"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
