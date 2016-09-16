class RailwayStation < ApplicationRecord
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains, foreign_key: :current_station_id

  validates :title, presence: true

  # Is it okay to set a scope like this? Wouldn't it affect views without railway_stations_routes assotiation?
  scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.station_number") }
end
