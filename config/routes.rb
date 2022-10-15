Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root to: 'lists#index'
  resources :movies, only: [:index]
  resources :lists, only: [:index, :show, :new, :create]
end
