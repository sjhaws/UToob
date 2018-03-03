Rails.application.routes.draw do
  root "movies#index"

  resources :movies

  devise_for :users, controllers: {
    registration: 'users/registrations'
  }

  scope 'movies/:movie_id', as: 'movie' do
    resources :comments, only: [:new, :create, :delete]
  end

end
