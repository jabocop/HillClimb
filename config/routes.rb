HillClimbHighscore::Application.routes.draw do
  
  resources :tracks, only: [:index,:new,:create]
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root :to => 'static_pages#home'
  match '/about',   to: 'static_pages#about'
  match '/signup', to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  
end
