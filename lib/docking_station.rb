require_relative 'bike'
class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
    20.times { @bikes.push(Bike.new) }
  end

  def release_bike
  	raise 'No bikes available' unless @bikes
    @bike = @bikes.last
    # @bikes.pop
  end

  def dock(bike)
  	raise 'Docking station full' unless @bikes == nil
    @bikes = bike
  end

end
