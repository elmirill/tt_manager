class AddReverseOrderedToTrains < ActiveRecord::Migration[5.0]
  def change
    add_column :trains, :reverse_ordered, :boolean, null: false, default: false
  end
end
