require_relative 'bike.rb'

class DockingStation
	DEFAULT_CAPACITY = 20
		attr_reader :capacity
		attr_accessor :bikes
		attr_accessor :broken_bikes

	def initialize(capacity=DEFAULT_CAPACITY)
		@capacity = capacity
		@bikes = []
		@broken_bikes = []
	end

	def release_bike
		raise "No bikes available."	if empty?
		@bikes.pop
	end

	def dock(bike)
		raise 'Docking station full' if full?
		if bike.working?
			@bikes << bike
		else
			report_bike(bike)
		end
	end

	def report_bike(bike)
		@broken_bikes << bike
	end

	private

		def full?
			@bikes.count >= @capacity
		end

		def empty?
			@bikes.empty?
		end

end
