require 'docking_station'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  it 'gets a working bike' do

  	bike = subject.release_bike
		expect(bike).to be_an_instance_of Bike
		expect(bike).to be_working

	end

  it 'docks a bike' do
    bike = subject.release_bike
    expect(subject).to respond_to(:dock).with(1).argument
    subject.dock(bike)
    expect(subject.instance_variable_defined?(:@bike)).to eq true
    expect(subject.bike).to eq bike    
  end

end

