Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  root "foods#index"

 
  
  
  resources :recipes
  resources :foods

  get '/public_recipes', to: 'recipes#public_recipes'
  get '/general_shopping_list', to: 'general_shopping_list#index'
  
  resources :users do
    resources :foods do
      resources :recipe_foods
    end
    resources :recipes do
      resources :recipe_foods
    end
  end
end
