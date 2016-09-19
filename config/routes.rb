Rails.application.routes.draw do
  root 'welcome#home'

  resource :search, only: [:new, :show]

  resources :routes
  resources :tickets
  resources :trains do
    resources :carriages, except: :index, shallow: true
  end
  resources :railway_stations do
    patch :update_position, on: :member
    patch :update_arrival, on: :member
    patch :update_departure, on: :member
  end

  %i(business_carriages coupe_carriages economy_carriages seating_carriages).each do |c|
    resources c, controller: :carriages
  end
end
