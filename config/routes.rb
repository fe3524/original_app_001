Rails.application.routes.draw do
  get 'mies/show'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  devise_for :administrators, controllers: {
    sessions: 'administrators/sessions',
    passwords: 'administrators/passwords',
    registrations: 'administrators/registrations'
  }

  root 'top#index'
  resources :administrator
  resources :user
  resources :post_pdf, only: :index

end