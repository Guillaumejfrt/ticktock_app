Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users

  root 'pages#home'
  resources :watches do
    resources :rentals, only: [ :show, :create ]
  end
  resources :users, only: [:show, :edit, :update]
  # get 'pages/profile', to: 'pages#profile'
end
