Rails.application.routes.draw do
  resources :posts

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'

  }
  root 'home_pages#homepage'
  get 'homepage', to: 'home_pages#homepage'
  get 'dashboard', to: 'home_pages#dashboard'

end
