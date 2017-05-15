Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users

  root 'pages#home'
  resources :watches do
    resources :rentals, only: [ :show, :create ]
  end
  resources :users, only: [:show, :edit, :update]
  get 'profile', to: 'pages#profile'
  get 'profile/edit', to: 'pages#edit_profile'
  get 'dashboard', to: 'pages#dashboard'
end
