require_relative 'bike.rb'

class DockingStation
	DEFAULT_CAPACITY = 20
	attr_reader :bikes

	def initialize
		@bikes = []
	end

	def release_bike
		raise "No bikes available."	if empty?
		@bikes.pop
	end

	def dock(bike)
		raise 'Docking station full' if full?
		@bikes << bike
	end

	def full?
		@bikes.count >= DEFAULT_CAPACITY
	end

	def empty?
		@bikes.empty?
	end

	private :full?, :empty?

end
