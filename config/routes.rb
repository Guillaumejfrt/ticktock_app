Rails.application.routes.draw do
  root 'watches#index'
  resources :watches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
