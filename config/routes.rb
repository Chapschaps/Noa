Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :animals do
    resources :reviews, only: [:create]
    resources :bookings, only: [:new, :create]
    get '/confirmation', to: 'animals#booking_confirmation', as: 'confirmation'
  end
  resources :bookings, only: [:show]
  resources :users, except: [:index, :show] do
  resources :bookings, only: [:index, :edit, :update, :destroy]
  end

  get '/dashboard', to: 'users#dashboard', as: 'dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
