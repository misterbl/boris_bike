require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
	before(:all) do
	@bikes = []
end
	subject(:docking_station) {described_class.new}

	it { is_expected.to respond_to :release_bike }

# Long way
# it "respond to the method release bike" do
#   expect(subject).to respond_to :release_bike
# end


	it "gets a bike and checks if it works" do
		if @bikes.count != 0
	  	bike = docking_station.release_bike
	  	expect(bike).to be_working
		end
	end

	it {is_expected.to respond_to(:dock).with(1).arguments}


	it 'raises an error when full' do
		DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
	  expect { subject.dock(Bike.new) }.to raise_error 'Docking station full'
	end

	it "returns docked bikes" do
		bike = Bike.new
		subject.dock(bike)
		expect(@bikes).to eq @bikes << bike
	end

	it "doesn't release bikes when there aren't any available" do
		@bikes.empty?
			expect{docking_station.release_bike}.to raise_error ("No bikes available.")
	end

	it "allows the user to set the capacity when a new instance of DS is created" do
	expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
	end

	it "allows the user to report a bike as broken when they return it" do
		bike = Bike.new
		subject.report_bike(bike)
		expect(subject.broken_bikes).to eq ([bike])

		#expect(subject.report_bike(bike)).to eq :broken_bikes << bike
	end
end
