Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_for :clients

  match 'preferences', to: 'preferences#show', via: :get
  match 'preferences/new', to: 'preferences#new', via: :get
  match 'add_preference', to: 'preferences#create', via: [:post]
  match 'remove_preference', to: 'preferences#destroy', via: [:delete]
  match 'client/:id/logo', to: 'static_pages#logo', via: :get, as: "client_logo"
  match 'client/:id/savelogo', to: 'static_pages#savelogo', via: :post, as: "save_logo"

  match 'user_email', to: 'static_pages#user_mail', via: :get


  resources :events

  root 'static_pages#home'

  match '/about', to: 'static_pages#about', via: 'get'

end
