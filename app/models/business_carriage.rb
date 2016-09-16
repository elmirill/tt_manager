class BusinessCarriage < Carriage
  validates :lower_places, presence: true
  validates :lower_places, numericality: { only_integer: true }
end
