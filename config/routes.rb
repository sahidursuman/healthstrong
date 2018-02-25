Rails.application.routes.draw do
  get 'dashboard/index'

  get 'fronts/Hospital'

  get 'fronts/Community'

  resources :hospitals, path: 'hospital-in-home-referral' do
    collection do
      get :success
    end
  end
  resources :client_titles

  resources :communities, path: 'community-referral' do
    collection do
      get :success
    end
  end

  root to: 'visitors#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    invitations: 'users/invitations',
  }

  namespace :admin do
    resources :users
    resources :hospitals
    resources :communities
  end
end
