Rails.application.routes.draw do
  resources :sightings
  get '/birds' => 'birds#index'
  get '/sightings' => 'sightings#index'
  get '/sightings/:id' => 'sightings#show'
end