Rails.application.routes.draw do
  resources :posts

  devise_for :users
    root 'home_pages#homepage'
    get 'homepage', to: 'home_pages#homepage'
    get 'dashboard', to: 'home_pages#dashboard'

end
