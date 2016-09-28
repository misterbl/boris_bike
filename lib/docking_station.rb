#require_relative 'bike.rb'
class DockingStation
attr_reader :bike
	def release_bike
		 @bike = Bike.new
		#bike.working? == true
	end

	def dock(bike)
		@bike = bike
	end
end
