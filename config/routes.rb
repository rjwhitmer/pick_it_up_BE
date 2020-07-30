Rails.application.routes.draw do
  resources :user_events
  resources :users
  resources :sporting_events
  resources :parks
  post "login", to: "authentication#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
