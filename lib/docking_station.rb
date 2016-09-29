require_relative 'bike.rb'
class DockingStation
attr_reader :bikes
def initialize
	@bikes = []
end
	def release_bike
		raise "No bike available."	if empty?
			 @bikes.pop
		end

		#bike.working? == true
	end

	def dock(bike)
			raise 'Docking station full' if full?
				@bikes << bike
	end

	def full?
		@bikes.count >= 20
	end

	def empty?
		@bikes.empty?
	end

	private :full?, :empty?


end
