Rails.application.routes.draw do
  get 'memberships/create'
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "communities#index"

  resources :users,  only: [:index, :new, :create, :update]

  resources :communities, only: [:index, :new, :create, :update]

  resources :comments, only: [:index, :new, :create]

  resources :answers, only: [:index, :new, :create]

  resources :networks, only: [:index, :new, :create]

  resources :upvotes, only: [:index, :new, :create]

  resources :memberships, only: [:new, :create, :destroy]

  resources :roles, only: [:create]
   
  resources :posts, only: [:create, :index]

  resources :relationships, only: [:create]

  resources :saveposts, only: [:index, :create]
end