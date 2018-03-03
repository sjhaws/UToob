Rails.application.routes.draw do
  root "movies#index"

  resources :movies

  devise_for :users, controllers: {
    registration: 'users/registrations'
  }
end
