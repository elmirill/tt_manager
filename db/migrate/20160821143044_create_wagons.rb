class CreateWagons < ActiveRecord::Migration[5.0]
  def change
    create_table :wagons do |t|
      t.references :train, foreign_key: true
      t.integer :type
      t.integer :upper_places
      t.integer :lower_places

      t.timestamps
    end
  end
end
