class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: "RailwayStation", foreign_key: :current_station_id
  has_many :tickets
  has_many :carriages

  validates :number, presence: true

  def lower_places(type)
    count_places(type, "lower")
  end

  def upper_places(type)
    count_places(type, "upper")
  end

  private

  def count_places(carriage_type, places_type)
    total_places = 0
    self.carriages.where(carriage_type: carriage_type).each do |w|
      places = "#{places_type}_places".to_sym
      total_places += w.send(places)
    end
    total_places
  end

end
