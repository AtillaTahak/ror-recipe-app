Rails.application.routes.draw do
  resources :inventories
  devise_for :users
  root "foods#index"
  resources :foods, only: %i[index show new create edit update destroy]
  resources :users
  resources :recipes, only: [:index, :show, :new, :create, :destroy, :update] do
    resources :recipe_foods, only: [:new, :create, :edit, :update, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
