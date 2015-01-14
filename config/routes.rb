Rails.application.routes.draw do
  devise_for :users

  resources :site, only: [:index]
  root "site#index"

  resources :users do
    resources :addresses
  end
end
