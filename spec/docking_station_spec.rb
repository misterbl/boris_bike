require 'docking_station'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  describe '#release_bike' do
    it 'releases a bike', focus: :true do
      expect(subject.release_bike).to eq subject.bikes.last
	  end
  end
  # add test to check count of bikes goes down by 1 after release_bike is called

  # ABOUT TO FIX THIS TEST FOR NEW VARIABLE NAMES
  it 'docks a bike' do
    bike = Bike.new
    expect(subject).to respond_to(:dock).with(1).argument
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'rasies an error when there is no space in a docking station' do
      subject.dock(Bike.new)
      expect {subject.dock(Bike.new)}.to raise_error 'Docking station full'
    end
  end

  it 'starts with 20 bikes docked' do
  expect(subject).to have_attributes(20.times { subject.dock Bike.new } )
  end

end
