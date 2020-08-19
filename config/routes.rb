Rails.application.routes.draw do
  resources :characters
  resources :users, only: [:create]
  post "login", to: "authentication#login"
end
