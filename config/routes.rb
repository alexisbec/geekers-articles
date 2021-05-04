# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %i[new create show index]
  resources :sessions, only: %i[new create destroy]
  resources :categories, only: %i[index show new create]
  resources :articles do
    post '/vote/', to: 'votes#create'
    delete '/vote/', to: 'votes#destroy'
  end

  root 'articles#index'
end
