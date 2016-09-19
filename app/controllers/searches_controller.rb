class SearchesController < ApplicationController
  before_action :get_stations

  def new
    @departure = params[:search][:departure]
    @arrival = params[:search][:arrival]
    @trains = Search.get_trains(@departure, @arrival)
    render 'show'
  end

  def show

  end

  private

  def get_stations
    @stations = RailwayStation.all
  end
end
