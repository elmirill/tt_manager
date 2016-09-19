class Search < ApplicationRecord

  def self.get_trains(departure, arrival)
    # routes = Route.joins(:railway_stations).where("railway_stations.id = ? AND railway_stations.id = ?", departure, arrival)
    if departure != arrival
      routes = Route.joins(:railway_stations).where(railway_stations: { id: departure }) & Route.joins(:railway_stations).where(railway_stations: { id: arrival })
      Train.where(route: routes)
    end
  end

  def self.get_time(train_id, station_id, type)
    type = "#{type}".to_sym
    train = Train.find(train_id)
    train.route.railway_stations_routes.where(railway_station_id: station_id).first.send(type).try(:strftime, "%H:%M")
  end

end
