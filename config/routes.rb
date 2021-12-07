Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_for :administrators, controllers: {
    sessions: 'users/sessions'
  }

end