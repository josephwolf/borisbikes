require 'vanclass.rb'

describe Van do 

	let(:person) { Person.new }
	let(:bike) { Bike.new}
	let(:van) { Van.new(capacity: 5) }
	let(:station) { Station.new(capacity: 20) }
	let(:garage) { Garage.new(capacity: 30) }

	shared_examples BikeContainer do
		let(:container) { described_class.new }
	end

	it "should collect broken bikes from a station" do
    	bike.break!
    	station.dock(bike)
    	van.collect_broken_from(station)
    	expect(van.bikes).to eq [bike]
	end
		it "should give fixed bikes to a station" do
    	bike.fix!
    	van.dock(bike)
    	van.give_fixed_to(station)
    	expect(station.available_bikes).to_not be 0
	end
end