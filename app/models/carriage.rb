class Carriage < ApplicationRecord
  belongs_to :train

  validates :number, presence: true
  validates :number, uniqueness: { scope: :train_id, message: "There's already a carriage with this number in this train." }

  before_validation :set_number

  scope :ordered, -> { order(:number) }
  scope :reverse_ordered, -> { order("number DESC") }

  def count_places
    total_places = {}
    places_types = %w(lower upper side_lower side_upper seating)
    places_types.each do |pt|
      place_type = "#{pt}_places".to_sym
      unless self.send(place_type).zero?
        total_places["#{pt}"] = self.send(place_type)
      end
    end
    total_places
  end

  private

  def set_number
    if train.carriages.empty?
      self.number = "1"
    else
      carriages_numbers = train.carriages.map { |c| c.number.to_i }
      self.number = (carriages_numbers.max + 1).to_s
    end
  end
end
