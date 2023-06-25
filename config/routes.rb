Rails.application.routes.draw do
  root 'ingredients#index'
  
  resources :recipes
  resources :ingredients
  resources :grocery_lists
end
