Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  resources :restaurants do
    resources :reviews, only: %i[index new create]
  end
  resources :reviews, only: %i[show edit update destroy]
end
