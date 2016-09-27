require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do

	it { is_expected.to respond_to :release_bike }

# Long way
# it "respond to the method release bike" do
#   expect(subject).to respond_to :release_bike
# end


it "gets a bike and checks if it works" do
  docking_station = object_double(DockingStation.new)
  bike = object_double(Bike.new)
  docking_station.stub(:release_bike) {bike}
  #expect(subject.release_bike).to eq bike
  #expect(bike.working?).to eq true
end

end
