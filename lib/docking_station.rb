require_relative 'bike'
class DockingStation

  attr_accessor :bikes

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
    DEFAULT_CAPACITY.times { @bikes.push(Bike.new) }
  end

  def release_bike
  	raise 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
  	raise 'Docking station full' if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
