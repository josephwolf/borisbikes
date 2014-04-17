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
		raise "I already have a bike!" if @bike == !nil
		@bike = station.available_bikes.pop
		station.release(bike)
	end

	def return_bike_to(station)
		@bike = station.dock(bike)
		@bike = nil
	end

	def bike
		@bike
	end
end