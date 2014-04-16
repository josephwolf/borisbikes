require 'dockclass.rb'

describe Station do

	let(:user) { Person.new }
	let(:station) { Station.new }
	let(:bike) { Bike.new }

	it 'rents out a bike' do
		station.dock(bike)
		user.rent_bike_from(bike, station)
		expect(station.bikes).to eq []
	end

end