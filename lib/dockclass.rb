require_relative 'bike_container.rb'

class Station

	include BikeContainer

  def initialize(options = {})
    @capacity = options.fetch(:capacity, capacity)
  end

  def give_bike_to(user)
  	raise "Who am I giving a bike to?" if user == nil
  	user.bike << self.bikes[0]
  	user.rent_bike_from(self)
  end 

end