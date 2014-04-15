class Van
	
	include BikeContainer

	def initialze(bikes = [])
		@bikes = bikes
	end

	def broken_bikes
		@bikes.select{|bike| bike.broken?}
	end
end