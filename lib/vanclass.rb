require_relative 'bike_container.rb'

class Van

  include BikeContainer

  def initialize(options = {})
    @good_bikes = []
    @broken_bikes = []
    @capacity = options.fetch(:capacity, capacity)
  end
  
  def collect_broken_bikes(container)
    @broken_bikes << container.bikes.select(&:broken?)  
  end

  # def move(bike,from_container,to_container) 

  # end

  def broken_bikes
    @broken_bikes
  end

end