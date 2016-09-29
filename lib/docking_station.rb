require_relative 'bike'
class DockingStation

  attr_accessor :bikes

  def initialize
    @bikes = []
    20.times { @bikes.push(Bike.new) }
  end

  def release_bike
  	raise 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
  	raise 'Docking station full' if @bikes.count >= 20
    @bikes << bike
  end

end
