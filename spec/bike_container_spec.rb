require 'bike_container.rb'

describe BikeContainer do

	let(:person) { Person.new }
	let(:bike) { Bike.new}
	let(:van) { Van.new(capacity: 5) }
	let(:station) { Station.new(capacity: 20) }
	let(:garage) { Garage.new(capacity: 30) }
	# let(:test) {Test.new}

	it 'starts off empty' do
		expect(station.has_bikes?).to eq false
	end
	it 'can contain bikes' do
		station.dock(bike)
		expect(station.has_bikes?).to eq true
	end
	it 'can contain broken bikes' do
		bike.break!
		station.dock(bike)
		expect(station.broken_bikes).to eq [bike]
	end
	it 'can remove bikes' do
		station.dock(bike)
		station.release(bike)
		expect(station.has_bikes?).to eq false
	end
	xit 'has a maximum capacity' do
	end
	it 'can move bikes from one bikes from one container to another' do
		station.dock(bike)
		van.collect_fixed_from(station)
		expect(van.has_bikes?).to eq true
	end


end