class Search

  def self.get_trains(departure, arrival)
    if departure != arrival
      routes = Route.joins(:railway_stations).where(railway_stations: { id: departure }) & Route.joins(:railway_stations).where(railway_stations: { id: arrival })
      Train.where(route: routes)
    end
  end

end
