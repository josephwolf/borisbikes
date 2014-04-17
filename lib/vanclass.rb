require_relative 'bike_container.rb'

class Van

	include BikeContainer
	# alias :fixed_bikes :available_bikes

	def initialize(options = {})
		available_bikes = []
		broken_bikes = []
		@capacity = options.fetch(:capacity, capacity)
	end

	def collect_broken_from(place)
		move_bikes(place, self, place.broken_bikes)
	end

	def give_broken_to(place)
		move_bikes(self, place, broken_bikes)
	end

	def give_fixed_to(place)
		move_bikes(self, place, available_bikes)
	end

	def collect_fixed_from(place)
		move_bikes(place, self, place.available_bikes)
	end
	
	def give_all_to(place)
		move_bikes(self, place, (broken_bikes + available_bikes))
	end

end