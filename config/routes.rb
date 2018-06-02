Rails.application.routes.draw do
  get 'top_designers/show'
  get 'top_designers/new'
  get 'top_designers/edit'
  devise_for :users
  resources :clients
  resources :designers

  root to: "top_designers#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
