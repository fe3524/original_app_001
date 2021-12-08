Rails.application.routes.draw do
  root 'top#index'
  resources :administrator_posts
  resources :user_posts

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

end