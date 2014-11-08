Rails.application.routes.draw do

  devise_for :users
  devise_for :clients

  get 'preferences', to: 'preferences#show'
  match 'preferences/new', to: 'preferences#new', via: :get
  match 'add_preference', to: 'preferences#create', via: [:post]
  match 'remove_preference', to: 'preferences#destroy', via: [:delete]

  root 'static_pages#home'

  match '/about', to: 'static_pages#about', via: 'get'

end
