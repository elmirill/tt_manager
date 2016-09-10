class AddTypeAndOtherColumnsToCarriages < ActiveRecord::Migration[5.0]
  def change
    add_column :carriages, :type, :string
    remove_column :carriages, :carriage_type
    add_column :carriages, :side_upper_places, :integer, default: 0
    add_column :carriages, :side_lower_places, :integer, default: 0
    add_column :carriages, :seating_places, :integer, default: 0
  end
end
