Rails.application.routes.draw do

  root 'cars#index'

  resources :cars,  only: [:index, :new, :create, :destroy]
  resources :bikes, only: [:index, :new, :create, :destroy]
end
