Rails.application.routes.draw do
  # root "products#index" 
  get "/login", to: "users#login"
  post "/login", to: "users#login"
  get "/user/home", to: "users#home"
  resources :users
  resources :products
 
end
