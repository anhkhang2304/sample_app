Rails.application.routes.draw do
  get "sessions/new"

  root "static_pages#home"
  get "users/new"
  get "static_pages/home"
  get "static_pages/home"
  get "static_pages/about"
  get "static_pages/help"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  post "/signup",  to: "users#create"
  resources :users
  resources :account_activations, only: [:edit]
end
