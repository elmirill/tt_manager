class Route < ApplicationRecord
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes
  has_many :trains

  validates :title, presence: true

  before_validation :set_route_name

  private

  def set_route_name
    self.title = "#{railway_stations.first.title} — #{railway_stations.last.title}"
  end
end
