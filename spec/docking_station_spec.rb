require 'docking_station'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  it 'gets a working bike' do

  	bike = subject.release_bike
		expect(bike).to be_an_instance_of Bike
		expect(bike).to be_working 

	end

end
