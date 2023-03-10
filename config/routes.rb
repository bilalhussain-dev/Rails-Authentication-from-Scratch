Rails.application.routes.draw do
  get 'pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#index"
  get "about", to: "pages#about"
  get "privacy-policy", to: "pages#privacy-policy"
  resources :articles


#   Signing up users
  get "signup", to: "users#new"
  resources :users, except: [:new]
  # post "users", to: "users#create"
end
