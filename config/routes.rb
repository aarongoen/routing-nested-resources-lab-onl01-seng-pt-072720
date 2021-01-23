Rails.application.routes.draw do
  resources :artists
    resources :songs, only: [:show, :index]
  resources :songs

  get '/artists/:id/songs', to: 'artists#songs_index'
end
