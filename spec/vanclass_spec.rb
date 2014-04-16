require 'vanclass.rb'

describe Van do 

	let(:bike) { Bike.new}
	let(:van) { Van.new(capacity: 5) }
	let(:station) { Station.new(capacity: 20) }
	let(:garage) { Garage.new(capacity: 30) }

  	it 'has bikes' do
		van.dock(bike)
		expect(van).to have_bikes
	end

	it "should collect broken bikes from a station" do
    	bike.break!
    	station.dock(bike)
    	van.collect_broken_bikes(station)
    	expect(van.broken_bikes).to_not be 0
	end
	
end