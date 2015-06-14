Rails.application.routes.draw do

  root "complaints#index"

  get "register", to: "users#new"
  resources :users, except: [:new]


  get "login", to: "sessions#new"

  resources :complaints
  
end
