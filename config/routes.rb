Rails.application.routes.draw do
  devise_for :users
  get 'locations/show'
  get 'top_designers/show'
  get 'top_designers/new'
  get 'top_designers/edit'

  resources :clients
  resources :designers
  resources :top_designers

  root 'top_designers#index'
  get '/locations/:location', to: 'locations#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
