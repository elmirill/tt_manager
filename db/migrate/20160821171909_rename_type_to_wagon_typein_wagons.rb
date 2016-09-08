class RenameTypeToWagonTypeinWagons < ActiveRecord::Migration[5.0]
  def change
    rename_column :wagons, :type, :wagon_type
  end
end
