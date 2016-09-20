Rails.application.routes.draw do
  resources :clients
  resources :sitters
  devise_for :users
  get 'profile', to: 'users#profile'
  get 'users/sign_out', to: 'users#profile'
  get	'sitters/show_client/:id', to: 'sitters#show_client', as: 'show_client'

  root to: 'users#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
