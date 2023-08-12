Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  root "foods#index"
  
  resources :foods
  resources :recipes do
    resources :recipe_foods, only: [:new, :create, :edit, :update, :destroy]
  end

  get '/public_recipes', to: 'recipes#public_recipes'
  get '/general_shopping_lists', to: 'general_shopping_lists#index'
  
  resources :users
  resources :recipe_foods

  resources :foods do
    resources :recipe_foods
  end

  resources :recipes do
    resources :recipe_foods
  end

end
