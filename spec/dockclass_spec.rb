require 'dockclass.rb'

describe Station do

	let(:person) { Person.new }
	let(:bike) { Bike.new}
	let(:van) { Van.new(capacity: 5) }
	let(:station) { Station.new(capacity: 20) }
	let(:garage) { Garage.new(capacity: 30) }

	# it_behaves_like BikeContainer

	it 'rents out a bike' do
		station.dock(bike)
		person.rent_bike_from(station)
		expect(station.bikes).to eq []
	end

end