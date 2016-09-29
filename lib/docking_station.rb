require_relative 'bike.rb'
class DockingStation
attr_reader :bikes
def initialize
	@bikes = []
end
	def release_bike
		if @bikes.empty?
			raise "No bike available."
		else
			 @bikes.pop
		end

		#bike.working? == true
	end

	def dock(bike)
			raise 'Docking station full' if @bikes.count >= 20
				@bikes << bike

	end
end
