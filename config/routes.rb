Rails.application.routes.draw do
#get "/restaurants", to: "restaurants#index"

#get "restaurants/new", to: "restaurants#new", as: :new_restaurant
#post "restaurants", to: "restaurants#create"

#get "/restaurant/:id", to: "restaurants#show", as: :restaurant

  resources :restaurants, only: [:new, :create, :show, :index] do
    resources :reviews, only: [:new, :create]
  end
end
