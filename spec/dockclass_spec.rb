require 'dockclass.rb'

describe Station do

	let(:user) { Person.new }
	let(:station) { Station.new }
	let(:bike) { Bike.new }

	it 'rents out a bike' do
		station.bikes << bike
		user.rent_bike_from(station)
		expect(station.rent).to eq :bike
	end

end