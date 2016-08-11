class AddDestinationStationIdToTickets < ActiveRecord::Migration[5.0]
  def change
    add_reference :tickets, :destination_station, foreign_key: true
  end
end
