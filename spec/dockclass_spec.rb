require 'dockclass.rb'

describe Station do

	let(:person) { Person.new }
	let(:bike) { Bike.new}
	let(:van) { Van.new(capacity: 5) }
	let(:station) { Station.new(capacity: 20) }
	let(:garage) { Garage.new(capacity: 30) }

	it 'rents out a bike' do
		station.dock(bike)
		user.rent_bike_from(bike, station)
		expect(station.bikes).to eq []
	end

end