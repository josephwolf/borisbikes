require 'garageclass.rb'

describe Garage do 

	let(:person) { Person.new }
	let(:bike) { Bike.new}
	let(:van) { Van.new(capacity: 5) }
	let(:station) { Station.new(capacity: 20) }
	let(:garage) { Garage.new(capacity: 30) }

	shared_examples BikeContainer do
		let(:container) { described_class.new }
	end

	it 'should be able to fix bikes' do
		bike.break!
		garage.dock(bike)
		garage.fix_broken_bikes
		expect(bike.broken?).to be_false
	end
end