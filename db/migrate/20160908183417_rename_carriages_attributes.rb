class RenameCarriagesAttributes < ActiveRecord::Migration[5.0]
  def change
    rename_column :carriages, :wagon_type, :carriage_type
  end
end
