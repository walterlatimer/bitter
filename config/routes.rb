Rails.application.routes.draw do

  root "complaints#index"

  get "register", to: "users#new"
  resources :users, except: [:new]
  resources :complaints
  
end
