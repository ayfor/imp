Rails.application.routes.draw do
  root 'ingredients#index'

  resources :recipes, :ingredients, :grocery_lists

  get '/ingredients/create_request', to: 'ingredients#create_request'
end
