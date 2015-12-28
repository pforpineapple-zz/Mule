Rails.application.routes.draw do
  get 'portfolios/index'

  get 'portfolios/new'

  resources :portfolios
  root 'portfolios#index'

  get '/portfolios/show/:id', to: 'portfolios#show'

end
