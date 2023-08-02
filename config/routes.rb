Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts
  get "profile", to: "users#index"
  
  get "signup", to: "users#new"
  post "signup", to: "users#create"

  get "signin", to: "sessions#new"
  post "signin", to: "sessions#create"

  root to: 'posts#index'
end
