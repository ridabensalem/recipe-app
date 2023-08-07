Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "foods#index"
  
  resources :users do
    resources :foods do
      resources :recipe_foods
    end
    resources :recipes do
      resources :recipe_foods
    end
  end
end
