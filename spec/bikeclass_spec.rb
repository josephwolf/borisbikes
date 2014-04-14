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
	it "should be able to say when it is not broken" do
		bike.fix!
		expect(bike.status).to eq "Feelin A-okay! :D"
	end
	it "should be able to say when it is broken" do
		bike.break!
		expect(bike.status).to eq "Help me I can't get up ;~;"
	end
end
