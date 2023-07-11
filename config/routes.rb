Rails.application.routes.draw do
  root 'ingredients#index'
  
  resources :recipes, :ingredients, :grocery_lists

  get '/ingredients/create', to: 'ingredients#create'

end
