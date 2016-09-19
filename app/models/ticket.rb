class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :train
  belongs_to :departure_station, class_name: "RailwayStation", foreign_key: :departure_id
  belongs_to :arrival_station, class_name: "RailwayStation", foreign_key: :arrival_id

  validates :number, :name, :passport, presence: true

  before_validation :set_number, on: :create

  def train_number
    Train.find(train_id).number
  end

  def departure_time
    Search.get_time(train_id, departure_id, "departure")
  end

  def arrival_time
    Search.get_time(train_id, arrival_id, "arrival")
  end

  def departure_title
    RailwayStation.find(departure_id).title
  end

  def arrival_title
    RailwayStation.find(arrival_id).title
  end

  private

  def set_number
    max_number = Ticket.maximum(:number)
    self.number = max_number.nil? ? 1 : max_number + 1
  end
end
