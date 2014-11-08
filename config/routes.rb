Rails.application.routes.draw do

  devise_for :users
  devise_for :clients

  root 'static_pages#home'

  match '/about', to: 'static_pages#about', via: 'get'

end
