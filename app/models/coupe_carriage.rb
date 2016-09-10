class CoupeCarriage < Carriage
  validates :lower_places, :upper_places, presence: true
  validates :lower_places, :upper_places, numericality: { only_integer: true }
end
