class Station

	include BikeContainer

	def initialize(bikes = [])
		@bikes = bikes
	end
end