Rails.application.routes.draw do
  root to: 'albums#index'
  resources :albums do
    resources :songs
  end
  resources :artists do
    resources :albums
  end
  resources :albums do
    resources :artists
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
