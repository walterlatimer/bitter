Rails.application.routes.draw do

  root "complaints#index"

  get "register", to: "users#new"
  resources :users, except: [:new]


  get "login", to: "sessions#new"
  get "logout", to: "sessions#destroy"
  resources :sessions, only: [:create, :destroy]

  resources :complaints
  
end
