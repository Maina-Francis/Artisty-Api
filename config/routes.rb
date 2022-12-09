Rails.application.routes.draw do

  resources :admins
  resources :posts
  resources :users, only: [:index, :create, :show, :destroy]
 post "/signup", to: "admins#signup"
 post "/login", to: "admins#login"
 delete "/signout", to: "admins#signout"
 post "/admins/:id/add_user", to: "admins#add_user"
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
