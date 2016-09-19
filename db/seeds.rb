# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

RailwayStation.delete_all
Route.delete_all
RailwayStationsRoute.delete_all
Carriage.delete_all
Train.delete_all
Ticket.delete_all
User.delete_all

stations = ["New York Central", "Wyatt Junction", "Oakdale", "Barnesville", "Marshville", "Silver Springs"]
stations.each do |s|
  RailwayStation.create(title: s)
end
