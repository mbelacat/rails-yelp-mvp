Rails.application.routes.draw do
#get "restaurants", to: "restaurants#index"
#post "restaurants", to: "restaurants#create"
#get "restaurants/new", to:"restaurants#new", as: :new
#get "reviews/new", to:"review#new"
#post "reviews", to:"review#create"
#get "restaurants/:id", to:"restaurants#show", as: :task
#get "restaurants/:id/edit", to:"restaurants#edit", as: :edit
  resources :restaurants do
   resources :reviews, only: [ :new, :create]
  end
end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

