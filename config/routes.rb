Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  root "foods#index"
  
  resources :foods, expect: [:update]
  resources :recipes, expect: [:update]
  resources :recipe_foods, expect: [:update]

  get '/public_recipes', to: 'recipes#public_recipes'

  get '/general_shopping_lists', to: 'general_shopping_lists#index'
  
  resources :users

  resources :foods do
    resources :recipe_foods
  end

  resources :recipes do
    resources :recipe_foods
  end
  resources :recipes do
    resources :recipe_foods, only: [:new, :create, :edit, :update, :destroy]
  end
  # get '/toggle_public_recipe', to: 'recipes#toggle_public_recipe'
  put '/recipes/:id/toggle_public_recipe', to: 'recipes#toggle_public_recipe', as: 'toggle_public_recipe'

end
