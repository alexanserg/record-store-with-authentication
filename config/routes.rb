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


  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
