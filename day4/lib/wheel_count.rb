
class WheelCounter

	def initialize
		@vehicles = []
	end

	def add_vehicle (vehicle)
		@vehicles.push(vehicle)
	end

	def show_vehicles
		@vehicles.each do |x|
		 puts "#{x.wheels}, @#{x.noise}"
		end
		
	end

	def count_wheels
		@vehicles.reduce(0.0) do |sum, wh|
	sum + wh.wheels 
		end
	end
	
end