Rails.application.routes.draw do
  get 'addresses/index'

  get 'addresses/show'

  get 'addresses/new'

  get 'addresses/create'

  get 'addresses/edit'

  get 'addresses/update'

  get 'addresses/destroy'

  devise_for :users

  resources :site, only: [:index]
  root "site#index"

  resources :users

  resources :addresses
  
end
