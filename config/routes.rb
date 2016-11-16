Rails.application.routes.draw do
  get 'home/login'
  post 'home/login', to: "home#authenticate", as: :authenticate

  resources :users
  resources :bunnies
  root 'bunnies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
