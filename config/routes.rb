Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resource :session, only: [:new, :create]
  resources :bands do # This generates a /bands/:band_id/albums route.
    resources :albums, only: [:new]
  end
  resources :albums
end
