Rails.application.routes.draw do
  devise_for :users
  resources :friends1s
  # resources :friends
  # get 'home/index'
  get 'home/about'
  # root 'home#index'
  root 'friends1s#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
