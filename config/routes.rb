Rails.application.routes.draw do
  root 'application#index'

  resources :users
  resources :accounts
end
