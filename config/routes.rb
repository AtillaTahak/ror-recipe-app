Rails.application.routes.draw do
  devise_for :users
  root "foods#index"
  get '/inventories', to: 'inventories#index'
  get '/inventories/new', to: 'inventories#new'
  post '/inventories', to: 'inventories#create'
  get '/inventories/:id', to: 'inventories#show'
  delete '/inventories/:id', to: 'inventories#destroy'

  get '/inventories/:id/inventory_foods/new', to: 'inventory_foods#new'
  post '/inventories/:id/inventory_foods', to: 'inventory_foods#create'
  delete '/inventory_foods/:id', to: 'inventory_foods#destroy'
  resources :foods, only: %i[index show new create edit update destroy]
  resources :users
  resources :recipes, only: [:index, :show, :new, :create, :destroy, :update] do
    resources :recipe_foods, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :general_shopping_list, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
