Rails.application.routes.draw do
  get 'customer/index'
  get 'customer/alphabetized'
  get 'customer/missing_email'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :customer, only: %i[index show]

  root to: 'customer#index'
end
