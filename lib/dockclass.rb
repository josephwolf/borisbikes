require_relative 'bike_container.rb'

class Station

	include BikeContainer

	def initialize(options = {})
	  @capacity = options.fetch(:capacity, capacity)
	end
	
	# def give_broken_to(van)
	# 	move_bikes(self, van, broken_bikes)
	# end

	# def collect_fixed_from(van)
	# 	move_bikes(van, self, fixed_bikes)
	# end

end