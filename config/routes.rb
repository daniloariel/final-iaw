Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'home#home'
  get 'home', to: 'home#home'

  get 'users/:id', to: 'user#user'

  get 'users/:id/new', to: 'home#new'
  post 'users/:id', to: 'home#create'

  get 'users/:id/edit', to: 'home#edit'
  patch 'users/:id',  to: 'home#update'
  put 'users/:id',  to: 'home#update'

end
