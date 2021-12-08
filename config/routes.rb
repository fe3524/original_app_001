Rails.application.routes.draw do
  root 'top#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_for :administrators, controllers: {
    sessions: 'administrators/sessions'
  }

end