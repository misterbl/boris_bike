require 'docking_station.rb'

describe DockingStation do

it "respond to the method release bike" do
  station = DockingStation.new
  expect(station.release_bike).to eq nil
  #expect(station).to respond_to release_bike
end

end
