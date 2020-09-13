Rails.application.routes.draw do
  root to: 'currencies#index'
  post '/update', to: 'currencies#update'

  resources :currencies, only: [:index, :show]
end
