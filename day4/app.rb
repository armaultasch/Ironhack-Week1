# require_relative("lib/ex_caffeine_consumer.rb")
# require_relative("lib/ex_designer.rb")
# require_relative("lib/ex_programmer.rb")
# require_relative("lib/ex_module.rb")

# the_designer = Designer.new
# the_designer.design_things

# the_programmer = Programmer.new
# the_programmer.program
# the_programmer.receive_salary

require_relative("lib/wheel_count.rb")
require_relative("lib/vehicle.rb")



transport = [Car.new, Motorcycle.new, Boat.new]

# harley = Motorcycle.new

# mersea = Boat.new

 my_wheelcount = WheelCounter.new

# my_wheelcount.add_vehicle("bmw")
# my_wheelcount.add_vehicle("harley")
# my_wheelcount.add_vehicle("mersea")
my_wheelcount.add_vehicle(transport)

p my_wheelcount(vehicles)