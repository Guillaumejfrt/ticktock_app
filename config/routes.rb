Rails.application.routes.draw do

  get 'pages/profile'

  devise_for :users
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Attachinary::Engine => "/attachinary"

  resources :watches

end
