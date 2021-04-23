Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :categories, only: [:show, :index]
  resources :articles
  resources :votes, only: [:create, :destroy]

  root 'articles#index'
end
