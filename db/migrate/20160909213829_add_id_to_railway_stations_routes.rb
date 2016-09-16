class AddIdToRailwayStationsRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :railway_stations_routes, :id, :primary_key
  end
end
