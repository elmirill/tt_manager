class RailwayStation < ApplicationRecord
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains, foreign_key: :current_station_id

  validates :title, presence: true

  scope :ordered, -> { order("railway_stations_routes.position") }

  def update_position(route, position)
    station_route = station_route(route)
    station_route.update(position: position) if station_route
  end

  def update_arrival(route, arrival)
    station_route = station_route(route)
    station_route.update(arrival: arrival) if station_route
  end

  def update_departure(route, departure)
    station_route = station_route(route)
    station_route.update(departure: departure) if station_route
  end

  def current_position(route)
    station_route(route).try(:position)
  end

  def current_arrival(route)
    station_route(route).arrival.strftime("%H:%M") if station_route(route).try(:arrival)
  end

  def current_departure(route)
    station_route(route).departure.strftime("%H:%M") if station_route(route).try(:departure)
  end

  private

  def station_route(route)
    station_route ||= railway_stations_routes.where(route: route).first
  end
end
