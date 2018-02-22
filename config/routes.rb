Rails.application.routes.draw do
  get 'fronts/Hospital'

  get 'fronts/Community'

  resources :hospitals
  resources :client_titles
  resources :communities
  root to: 'visitors#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    invitations: 'users/invitations',
  }

  namespace :admin do
    resources :users
  end
end
