Rails.application.routes.draw do
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  get '/shoes', to: 'shoes#all'
  resources :genres do
    resources :shoes
  end
  resources :shoes
  # resources :shoes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
