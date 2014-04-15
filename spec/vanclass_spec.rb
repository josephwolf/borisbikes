require 'vanclass.rb'


describe Van do 
	it 'has bikes' do
		van = Van.new([:bike])
		expect(van.to have_bikes
	end
	
	# it 'has no bikes' do
	# 	expect(Van.new).not_to have_bikes
	# end
	
	# it 'has broken bikes' do
	# 	bike = double :bike, broken?: true
	# 	van = Van.new([bike])
	# 	expect van.broken_bikes.to eq [bike]
	# end
end