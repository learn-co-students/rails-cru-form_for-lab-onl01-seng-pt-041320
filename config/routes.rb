Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists
  get 'artists/:id/edit', to: 'artists#edit'

  resources :genres
  get 'genres/:id/edit', to: 'genres#edit'

  resources :songs
  get 'songs/:id/edit', to: 'songs#edit'
end
