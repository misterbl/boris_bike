require 'docking_station'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  describe '#release_bike' do
    it 'releases a bike' do
      bike = subject.bikes.last
      expect(subject.release_bike).to eq bike
	  end
  end

  describe '#dock' do
    it 'should require one argument' do
      expect(subject).to respond_to(:dock).with(1).argument
    end
  end

  describe '#dock' do
    it 'docks a bike' do
      subject.bikes.pop
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to include(bike)
    end
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available', focus: :true do
      subject.bikes = []
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when there is no space in a docking station' do
      expect {subject.dock(Bike.new)}.to raise_error 'Docking station full'
    end
  end

  it 'starts with 20 bikes docked' do
    expect(subject.bikes.length).to eq(20)
  end

end
