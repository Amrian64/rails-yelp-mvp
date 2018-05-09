Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "controller#action"
  # A visitor can see the list of all restaurants.
   resources :restaurants, only: [ :index, :new, :create, :show ] do
    resources :reviews, only: [ :new, :create ]

  end

end
  # end

  # get "restaurants" , to: "restaurants#index"

  # # He can add a new restaurant, and be redirected to the show view of that new restaurant.
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"

  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # # He can see the details of a restaurant, with all the reviews related to the restaurant.
  # # get "restaurants/:restaurant_id/reviews",  to: "reviews#index"
  # # GET "restaurants/38"

  # # He can add a new review to a restaurant
  # get "restaurants/:restaurant_id/reviews/new", to: "review#new"
  # post "restaurants/:id/reviews", to: "review#create"
