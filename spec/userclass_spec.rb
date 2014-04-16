require 'userclass.rb'

describe Person do

	let(:person) { Person.new }
	let(:bike) { Bike.new }

	it 'has no bike' do
		expect(person).not_to have_bike
	end

	it 'can rent a bike from a docking station' do
		station = double :station
		expect(station).to receive(:release)
		person.rent_bike_from(station)
	end

	it "has a bike after renting one" do
		station = double(:station, {release: :bike})
		person.rent_bike_from(station)
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