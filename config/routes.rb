Rails.application.routes.draw do
  root "movies#index"

  resources :movies

  resources :users do
    resources :playlists
  end

  devise_for :users, controllers: {
    registration: 'users/registrations'
  }
end
