Rails.application.routes.draw do
  root to: 'currencies#index'
  post '/update', to: 'currencies#update'
  post '/calculate', to: 'currencies#calculate'

  resources :currencies, only: [:index, :show]
end
