class Carriage < ApplicationRecord
  belongs_to :train

  validates :number, presence: true
  validates :carriage_type, presence: true, numericality: { only_integer: true }
  validates :upper_places, numericality: { only_integer: true }
  validates :lower_places, numericality: { only_integer: true }
end
