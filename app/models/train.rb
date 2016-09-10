class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: "RailwayStation", foreign_key: :current_station_id
  has_many :tickets
  has_many :carriages

  validates :number, presence: true

  def count_places(carriage_type, places_type)
    total_places = 0
    carriages.where(type: carriage_type).each do |c|
      places = "#{places_type}_places".to_sym
      total_places += c.send(places)
    end
    total_places
  end
end
