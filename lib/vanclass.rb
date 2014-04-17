require_relative 'bike_container.rb'

class Van

	include BikeContainer
	# alias :fixed_bikes :available_bikes

	def initialize(options = {})
		available_bikes = []
		broken_bikes = []
		@capacity = options.fetch(:capacity, capacity)
	end

	def collect_bikes_from(station)
		move_bikes(station, self, station.available_bikes)
	end

	def collect_broken_from(station)
		move_bikes(station, self, station.broken_bikes)
	end

	def give_broken_to(garage)
		move_bikes(self, garage, broken_bikes)
	end

	def give_fixed_to(garage)
		move_bikes(self, garage, available_bikes)
	end

	def give_all_to(garage)
		move_bikes(self, garage, (broken_bikes + available_bikes))
	end

	def collect_fixed_from(garage)
		move_bikes(garage, self, garage.available_bikes)
	end

	def give_fixed_to(station)
		move_bikes(self, station, available_bikes)
	end
end