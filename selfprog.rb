homes = []

class Home
	attr_reader(:name, :city, :capacity, :price)
	def initialize (name, city, capacity, price)
		@name = name
		@city = city
		@capacity = capacity
		@price = price
	end
	
	# def to_s
	# 	"#{@name} in #{@city}"
	# end

end 

def add_home (name)
		name.each do |place| 
			puts "name: #{place.name} | city: #{place.city} | capacity: #{place.capacity} | price: #{place.price}"
	end
end

home1 = Home.new("Nizar's Place", "San Juan", 2, 42)
home2 = Home.new("Fernando's Place", "Seville", 5, 47)
home3 = Home.new("Josh's Place", "Pittsburgh", 3, 41)
home4 = Home.new("Gonzalo's Place", "Malaga", 2, 45)
home5 = Home.new("Ariel's Place", "San Juan", 4, 49)

homes.push(home1)
homes.push(home2)
homes.push(home3)
homes.push(home4)
homes.push(home5)

 homes.each do |hm|
 	puts hm.name + " is in " + hm.city + " and costs " + hm.price.to_s + " a night."
end

homes.each_with_index do |hm, index|
	puts "Home number #{index + 1}: #{hm.name}"
end

# san_juan_homes = homes.select do |hm|
# 	hm.city === "San Juan"
# end


# san_juan_homes.each do |x|
# 	puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"

# end

high_capacity_homes = homes.select do |hm|
	hm.capacity >=4
end

high_capacity_homes.each do |x|
	puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
end
puts high_capacity_homes

home_41_dollars = homes.find do |hm|
	hm.price == 41
end

puts "The first home that costs $41 is: "
puts home_41_dollars.name

cost = homes.map do |hm|
	hm.price
end

# total_cost = 0
# for x in cost
# 	total_cost += x
# end
total_cost = homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end

puts total_cost
puts average_cost = total_cost/cost.length

#average_cost = (cost[0]+cost[1]+cost[2]+cost[3]+cost[4])/cost.length
#puts average_cost

# total_capacities = 0.0

# homes.each do |hm|
# 	total_capacities = total_capacities + hm.capacity
# end

#puts "The total capacity is: #{total_capacities}" 
#or puts total_capacities after is:


total_capacities = homes.reduce(0.0) do |sum, hm|
	sum + hm.capacity
end

puts "The average capacity is: "
puts total_capacities/homes.length
#average capacity




cities = homes.map do |hm|
	hm.city
end
#to create a new array from another aray (homes) and only taking cities into a new arrap "cities"
puts cities
#add_home(homes)