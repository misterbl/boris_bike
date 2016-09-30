require 'docking_station'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  it 'starts with default capacity of bikes docked' do
    expect(subject.bikes.length).to eq(DockingStation::DEFAULT_CAPACITY)
  end

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

  describe '#dock' do   #Double
    it 'docks a bike' do
      subject.bikes.pop
      bike = double(:bike)
      subject.dock(bike)
      expect(subject.bikes).to include(bike)
    end
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      subject.bikes = []
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#release_bike' do
    it 'does not release a broken bike', focus: :true do
      bike = subject.release_bike
      broken_bike = subject.report(bike)
      subject.dock(broken_bike)
      expect(subject.release_bike).to_not eq(broken_bike)
    end
  end

  describe '#dock' do   #Double
    it 'raises an error when there is no space in a docking station' do
      expect {subject.dock(double(:bike))}.to raise_error 'Docking station full'
    end
  end

  describe '#dock' do
    it 'accepts broken bikes', focus: :true do
      bike = subject.release_bike
      broken_bike = subject.report(bike)
      subject.dock(broken_bike)
      expect(subject.broken_bikes).to include(broken_bike)
    end
  end


  describe '#initialize' do
    it 'has a default capacity of 20 when no parameter is passed' do
    station = DockingStation.new()
    expect(station.bikes.count).to eq(DockingStation::DEFAULT_CAPACITY)
    end
  end

  describe '#initialize' do
    it 'has a variable capacity' do
      station = DockingStation.new(17)
      expect(station.bikes.count).to eq(17)
    end
  end


  describe '#report' do
    it 'allows a bike to be reported as broken' do
      bike = double(:bike)
      subject.report(bike)
      expect(bike.working).to eq(false)
    end
  end


end
