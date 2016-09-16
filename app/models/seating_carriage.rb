class SeatingCarriage < Carriage
  validates :seating_places, presence: true
  validates :seating_places, numericality: { only_integer: true }
end
