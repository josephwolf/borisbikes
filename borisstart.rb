require './lib/bike_container.rb'
require './lib/bikeclass.rb'
require './lib/userclass.rb'
require './lib/dockclass.rb'
require './lib/garageclass.rb'
require './lib/vanclass.rb'

person = Person.new
bike = Bike.new
van = Van.new(capacity: 5)
station = Station.new(capacity: 20)
garage = Garage.new(capacity: 30) 