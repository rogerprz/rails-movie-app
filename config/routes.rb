Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movies, only: [:index, :show, :edit, :new]
  get 'movies/facebook-likes', to: 'movies#facebook_likes'
  resources :directors, only: [:index, :show, :edit, :new]

end
