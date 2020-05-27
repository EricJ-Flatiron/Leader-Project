Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Standard resources and paths. Tyrants has all functions, Users can't be shown in index.
  resources :tyrants, only: [:edit,:update]
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]
  get "/comments", to: "comments#index"
  post "/comments", to: "comments#create"
  get "/ratings", to: "ratings#index"
  post "/ratings", to: "ratings#create"
  get "/tyrants", to: "tyrants#index"
  get "/tyrants/:id", to: "tyrants#show" do
   post "/ratings", to: "ratings#create"
   post "/comments", to: "comments#create"
  end
  #  get "/tyrants/:id/edit", to: "tyrants#edit", as: "tyrant"
  #  patch "/tyrants/:id", to: "tyrants#update" 
end
  # Need to create custom route for homepage to be index of tyrants display page

