module BikeContainer

  DEFAULT_CAPACITY = 10

  def bikes
    @bikes ||= []
  end

  def available_bikes
    bikes.reject { |bike| bike.broken? }
  end

  def broken_bikes
    bikes.select { |bike| bike.broken? }
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity ||= value
  end

  def bike_count
    bikes.count
  end

  def dock(bike)
    raise "No room!" if full?
    bikes << bike
  end

  def release(bike)
    bikes.delete(bike)
  end

  def full?
    bike_count == capacity
  end

  def has_bikes?
    bikes.any?
  end

def move_bikes (origin, destination, bike_type)
  bike_type.each do |bike|
    destination.dock(bike)
    origin.release(bike)
  end
end



# def drop_broken_bikes_into (place)
#   broken_bikes.each do |bike|
#   place.dock(release(bike))
#   end
# end

# def collects_broken_bikes_from (place)
#   place.broken_bikes.each do |bike|
#   dock(bike)
#   place.release(bike)
# end
# end

end