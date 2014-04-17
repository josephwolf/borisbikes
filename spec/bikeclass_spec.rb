require 'bikeclass.rb'

describe Bike do

	let(:person) { Person.new }
	let(:bike) { Bike.new}
	let(:van) { Van.new(capacity: 5) }
	let(:station) { Station.new(capacity: 20) }
	let(:garage) { Garage.new(capacity: 30) }

	it "starts off not broken" do
		expect(bike).to_not be_broken
	end

	it "can be broken" do
		bike.break!
		expect(bike).to be_broken
	end
	it "can be fixed once broken" do
		bike.break!
		expect(bike.fix!).to_not be_broken
	end
end
