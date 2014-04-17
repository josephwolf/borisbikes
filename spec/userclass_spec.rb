require 'userclass.rb'
require 'dockclass'
require 'bikeclass'

describe Person do

	let(:person) { Person.new }
	let(:bike) { Bike.new}
	let(:van) { Van.new(capacity: 5) }
	let(:station) { Station.new(capacity: 20) }
	let(:garage) { Garage.new(capacity: 30) }

	it 'has no bike' do
		expect(person).not_to have_bike
	end

	it 'can rent a bike from a docking station' do
		# station = double :station
		expect(station).to receive(:release)
		person.rent_bike_from(bike, station)
	end

	it "has a bike after renting one" do
		station.dock(bike)
		person.rent_bike_from(bike, station)
		expect(person).to have_bike
	end

	it "can break a bike" do
		person = Person.new(bike)
		expect(bike).to receive(:break!)
		person.crash!
	end

	it "can return a bike to the docking station" do
		station = double :station
		person = Person.new(bike)
		expect(station).to receive(:dock)
		person.return_bike_to(station)
	end

	it "does not have bike after docking one" do
		station = double(:station, {dock: :bike})
		person.return_bike_to(station)
		expect(person).not_to have_bike
	end

end