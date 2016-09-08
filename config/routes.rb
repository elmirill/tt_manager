Rails.application.routes.draw do
  root 'welcome#home'

  resources :routes
  resources :trains
  resources :railway_stations
  resources :wagons
end
