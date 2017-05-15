Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  root 'pages#home'
  get 'profile', to: 'pages#profile'
  get 'profile/edit', to: 'pages#edit_profile'
  get 'dashboard', to: 'pages#dashboard'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  resources :watches do
    resources :rentals, only: [ :show, :create ]
  end

  resources :users, only: [ :update ]

end
