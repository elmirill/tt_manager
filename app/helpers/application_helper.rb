module ApplicationHelper

  def get_station_time(train_id, station_id, type)
    type = "#{type}".to_sym
    train = Train.find(train_id)
    train.route.railway_stations_routes.where(railway_station_id: station_id).first.send(type).try(:strftime, "%H:%M")
  end

end
