# app.rb
require_relative("lib/cars.rb")
require_relative("lib/spaceship.rb")
require_relative("lib/lightspeed_ship.rb")

porsche = Car.new("Broom", 2)

porsche.noise

bmw = Car.new("BROOOOOOM", 5)

bmw.noise

boeing = SpaceShip.new("Woooosh", 50)
boeing.fly

keeper = SpaceShip.new("Brrrrmm", 100)
keeper.fly
keeper.travel("Pluto")
keeper.travel("Mars")

p keeper.list_of_planets

lightspeed_ship = LightspeedShip.new("Bzzrrrrppp", 40)

lightspeed_ship.fly
lightspeed_ship.travel("Black Hole")




