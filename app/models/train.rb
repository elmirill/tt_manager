class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: "RailwayStation", foreign_key: :current_station_id
  has_many :tickets
  has_many :wagons

  validates :number, presence: true

  def lower_places(type)
    total_places = 0
    self.wagons.where(wagon_type: type).each do |w|
      total_places +=  w.lower_places
    end
    total_places
  end

  def upper_places(type)
    total_places = 0
    self.wagons.where(wagon_type: type).each do |w|
      total_places +=  w.upper_places
    end
    total_places
  end

end
