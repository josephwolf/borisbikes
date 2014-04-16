require 'bikeclass.rb'

describe Bike do
	let(:bike) { Bike.new }

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
