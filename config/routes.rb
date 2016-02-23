Rails.application.routes.draw do
  resources :users
  get 'auth/:provder/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

end
