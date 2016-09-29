require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
	subject(:docking_station) {described_class.new}

	it { is_expected.to respond_to :release_bike }

# Long way
# it "respond to the method release bike" do
#   expect(subject).to respond_to :release_bike
# end


it "gets a bike and checks if it works" do
	if @bike != nil
  	bike = docking_station.release_bike
  	expect(bike).to be_working
	end
end

it {is_expected.to respond_to(:dock).with(1).arguments}

it "returns docked bikes" do
	bike = Bike.new
	subject.dock(bike)
	expect(subject.bike).to eq bike
end

it "doesn't release bikes when there aren't any available" do
	if @bike == nil
		expect{docking_station.release_bike}.to raise_error ("No bike available.")
	end
end

#it "returns hired bikes to the docking station" do
#	expect{bike.length}.to change{DockingStation.co}(from 0).to(1)
#end

end
