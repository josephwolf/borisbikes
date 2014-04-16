class Person
	def initialize(bike = nil)
		@bike = bike
	end

	def crash!
		@bike.break!
	end

	def has_bike?
		!@bike.nil?
	end

	def rent_bike_from(station)
		@bike = station.release
	end

	def return_bike_to(station)
		@bike = station.dock
		@bike = nil
	end
end