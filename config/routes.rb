Rails.application.routes.draw do
  root 'welcome#home'

  resources :routes
  resources :trains
  resources :railway_stations
  resources :carriages
  %i(business_carriages coupe_carriages economy_carriages seating_carriages).each do |c|
    resources c, controller: :carriages
  end
end
