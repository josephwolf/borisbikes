require_relative 'bike_container.rb'

class Garage

	include BikeContainer
	# alias :fixed_bikes :available_bikes

	def initialize(options = {})
		@capacity = options.fetch(:capacity, capacity)
	end

	def fix_broken_bikes
		broken_bikes.each do |bike|
			bike.fix!
		end
	end

end