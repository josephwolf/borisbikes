require 'bike_container.rb'

describe BikeContainer do

	let(:person) { Person.new }
	let(:bike) { Bike.new}
	let(:van) { Van.new(capacity: 5) }
	let(:station) { Station.new(capacity: 20) }
	let(:garage) { Garage.new(capacity: 30) }

	xit 'can contain bikes' do
	end
	xit 'has a maximum capacity' do
	end

end