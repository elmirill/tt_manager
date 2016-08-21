class ChangePlacesDefaultInWagons < ActiveRecord::Migration[5.0]
  def change
    change_column :wagons, :lower_places, :integer, default: 0
    change_column :wagons, :upper_places, :integer, default: 0
  end
end
