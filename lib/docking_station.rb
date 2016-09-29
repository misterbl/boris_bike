require_relative 'bike'
class DockingStation

  attr_accessor :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    @capacity.times { @bikes.push(Bike.new) }
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
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
