require 'dockclass.rb'

describe Station do

	#it behaves like a bike container

	xit 'can hold bikes' do
	end

	it 'rents out a bike' do
		station = Station.new([:bike])
		expect(station.rent).to eq :bike
	end

end