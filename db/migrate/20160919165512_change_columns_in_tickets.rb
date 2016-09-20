class ChangeColumnsInTickets < ActiveRecord::Migration[5.0]
  def change
    rename_column :tickets, :departure_station_id, :departure_id
    rename_column :tickets, :arrival_station_id, :arrival_id
  end
end
