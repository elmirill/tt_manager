class EconomyCarriage < Carriage
  validates :lower_places, :upper_places, :side_lower_places, :side_upper_places,
            presence: true
  validates :lower_places, :upper_places, :side_lower_places, :side_upper_places,
            numericality: { only_integer: true }
end
