class AddDestinationStationIdToTickets < ActiveRecord::Migration[5.0]
  def change
    add_reference :tickets, :arrival_station, foreign_key: true
  end
end
