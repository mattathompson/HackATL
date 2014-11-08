Rails.application.routes.draw do

  devise_for :users
  devise_for :clients

  match 'preferences', to: 'preferences#show', via: :get
  match 'preferences/new', to: 'preferences#new', via: :get
  match 'add_preference', to: 'preferences#create', via: [:post]
  match 'remove_preference', to: 'preferences#destroy', via: [:delete]


  resources :events

  root 'static_pages#home'

end
