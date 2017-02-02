Rails.application.routes.draw do
  root to: 'pages#index'

  get 'pages/index'

  resources :users, only: [:new, :create]
  resources :user_sessions, only: [:new, :create, :destroy]

  get '/sign_in', to: 'user_sessions#new', as: :sign_in
  get '/sign_up', to: 'users#new', as: :sign_up
  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
end
