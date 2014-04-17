require_relative 'bike_container.rb'

class Garage

	include BikeContainer

	def initialize(options = {})
		@capacity = options.fetch(:capacity, capacity)
	end

end