class CreateJoinTableRailwayStationsRoutes < ActiveRecord::Migration[5.0]
  def change
    create_join_table :railway_stations, :routes do |t|
      # t.index [:railway_station_id, :route_id]
      # t.index [:route_id, :railway_station_id]
    end
  end
end
