Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Index = ALL instance
  # Show = ONE instance
  # get '/restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # post '/restaurants', to: 'restaurants#create'


  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # get "restaurants/:id/edit", to: "restaurants#edit"
  # patch "restaurants/:id", to: "restaurants#update"
  # delete "restaurants/:id", to: "restaurants#destroy"
  resources :restaurants
end
