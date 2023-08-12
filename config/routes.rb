Rails.application.routes.draw do
  root 'ingredients#index'

  get '/ingredients/create_request', to: 'ingredients#create_request'

  resources :recipes, :ingredients, :grocery_lists
end
