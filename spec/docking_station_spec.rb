require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do

	it { is_expected.to respond_to :release_bike }

# Long way
# it "respond to the method release bike" do
#   expect(subject).to respond_to :release_bike
# end


it "gets a bike and checks if it works" do
  bike = subject.release_bike
  expect(bike).to be_working
end

end
