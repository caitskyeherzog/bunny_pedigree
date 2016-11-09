Rails.application.routes.draw do
  resources :bunnies
  root 'bunnies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
