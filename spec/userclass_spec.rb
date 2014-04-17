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
		person.rent_bike_from(station)
		expect(station.bikes).to eq []
	end

	it "has a bike after renting one" do
		station.dock(bike)
		person.rent_bike_from(station)
		expect(person).to have_bike
	end

	it "can break a bike" do
		person = Person.new(bike)
		person.crash!
		expect(bike.broken?).to eq true
	end

	it "can return a bike to the docking station" do
		person = Person.new(bike)
		person.return_bike_to(station)
		expect(station.has_bikes?).to eq true
	end

	it "does not have bike after docking one" do
		person.return_bike_to(station)
		expect(person).not_to have_bike
	end

	it "cannot have more than one bike" do
		bike2 = Bike.new
		bike3 = Bike.new
		person = Person.new(bike3)
		station.dock(bike2)
		person.rent_bike_from(station)
		expect(person.bike.object_id).to eq bike3.object_id
	end

end