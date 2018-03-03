Rails.application.routes.draw do
  root "movies#index"

  resources :movies

  # resources :users do
  #   resources :playlists
  # end

  devise_for :users, controllers: {
    registration: 'users/registrations'
  }

  scope 'movies/:movie_id', as: 'movie' do
    resources :comments, only: [:new, :create, :edit, :update, :destroy]
  end
  scope 'movies/:movie_id', as: 'movie' do
    resources :playlists, only: [:new, :create, :edit, :update, :destroy]
  end

end
