class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :train
  belongs_to :departure_station, class_name: "RailwayStation", foreign_key: :departure_id
  belongs_to :arrival_station, class_name: "RailwayStation", foreign_key: :arrival_id

  validates :number, :name, :passport, presence: true

  before_validation :set_number, on: :create
end
