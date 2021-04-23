Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :categories, only: [:show, :index]
  resources :articles do
    post '/vote/', to: 'votes#create'
    delete '/vote/', to: 'votes#destroy'
  end

  root 'articles#index'
end
