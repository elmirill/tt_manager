class AddDepartureStationIdToTickets < ActiveRecord::Migration[5.0]
  def change
    add_reference :tickets, :departure_station, foreign_key: true
  end
end
