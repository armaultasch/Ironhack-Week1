homes = []
class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

def add_home (name)
		name.each do |place| 
			puts "name: #{place.name} | city: #{place.city} | capacity: #{place.capacity} | price: #{place.price}"
	end

	# def to_s
	# 	"#{@name} #{@city}"
	# end
end

home1 =	Home.new("Ali's place", "Miami", 2, 100)
home2 =	Home.new("Jason's place", "Miami", 7, 50)
home3 =	Home.new("Alana's place", "San Francisco", 3, 55)
home4 =	Home.new("Maddie's place", "Los Angeles", 5, 45)
home5 =	Home.new("Rachel's place", "London", 3, 60)
home6 =	Home.new("Sarah's place", "New York", 2, 20)
home7 =	Home.new("Jonathan's place", "New York", 10, 100)
home8 =	Home.new("Jessie's place", "Boulder", 4, 30)
home9 =	Home.new("Jessica's place", "Madrid", 9, 20)
home10 = Home.new("Sean's place", "New York", 4, 35)

homes.push(home1)
homes.push(home2)
homes.push(home3)
homes.push(home4)
homes.push(home5)
homes.push(home6)
homes.push(home7)
homes.push(home8)
homes.push(home9)
homes.push(home10)

add_home(homes)

# puts "Do you want to sort by price or capacity?"
# user_input = gets.chomp

		
# 		if "#{user_input}".downcase == "price"
# 		puts "Highest or Lowest?"
# 			choice = gets.chomp
# 				if "#{choice}".downcase == "highest" || "#{choice}".downcase == "high"
# 		 price_sort = homes.sort_by! {|x| -x.price}
# 				price_sort.each do |x|
# 	puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
# 	price_sort
# end
# 			elsif "#{choice}".downcase == "lowest" || "#{choice}".downcase == "low"
# 			 price_sort = homes.sort_by! {|x| x.price}
# 			 		price_sort.each do |x|
# 	puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
# 	price_sort
# end
# 			else puts "I'm not sure I understand."
# 		end
# 	elsif "#{user_input}".downcase == "capacity"
# 		puts "Highest or Lowest?"
# 			choice = gets.chomp
# 				if "#{choice}".downcase == "highest"
# 			 cap_sort = homes.sort_by! {|x| -x.capacity}
# 			 		cap_sort.each do |x|
# 	puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
# 	cap_sort
# end	
# 				elsif "#{choice}".downcase == "lowest" || "#{choice}".downcase == "low"
# 			 cap_sort = homes.sort_by! {|x| x.capacity}
# 			 	cap_sort.each do |x|
# 	puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
# 	cap_sort
# end	
# 				else puts "Please select highest or lowest"

# 			end
# 	else puts "Please chose Price or Capacity"

# 	end

puts "What city are you looking for? (New York, Madrid, Miami, Boulder, San Francisco, Los Angeles, London):"
user_input = gets.chomp
	if "#{user_input}".downcase == "new york"
		ny_homes = homes.select do |hm|
	hm.city.downcase! == "new york"
end
	ny_homes.each do |x|
	puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
	ny_homes
	total_cost = ny_homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end

puts average_cost = total_cost/ny_homes.length

end
	elsif "#{user_input}".downcase == "madrid"
		md_homes = homes.select do |hm|
	hm.city.downcase! == "madrid"
end
	md_homes.each do |x|
	puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
	md_homes
total_cost = md_homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end

puts average_cost = total_cost/md_homes.length
end
	elsif "#{user_input}".downcase == "san francisco"
		sf_homes = homes.select do |hm|
	hm.city.downcase! == "san francisco"
end
	sf_homes.each do |x|
	puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
	sf_homes
	total_cost = sf_homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end

puts average_cost = total_cost/sf_homes.length

end
	elsif "#{user_input}".downcase == "los angeles"
		la_homes = homes.select do |hm|
	hm.city.downcase! == "los angeles"
end
	la_homes.each do |x|
	puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
	la_homes
	total_cost = la_homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end

puts average_cost = total_cost/la_homes.length

end
	elsif "#{user_input}".downcase == "boulder"
		co_homes = homes.select do |hm|
	hm.city.downcase! == "boulder"
end
	co_homes.each do |x|
	puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
	co_homes
	total_cost = co_homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end

puts average_cost = total_cost/co_homes.length

end
	elsif "#{user_input}".downcase == "miami"
		mia_homes = homes.select do |hm|
	hm.city.downcase! == "miami"
end
	mia_homes.each do |x|
	puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
	mia_homes
	total_cost = mia_homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end

puts average_cost = total_cost/mia_homes.length

end
	elsif "#{user_input}".downcase == "london"
		lnd_homes = homes.select do |hm|
	hm.city.downcase! == "london"
end
	lnd_homes.each do |x|
	puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
	lnd_homes
	total_cost = lnd_homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end

puts average_cost = total_cost/lnd_homes.length

end
else puts "what you mean"
end

puts "How much do you want to spend?"
user_input = gets.chomp
	if "#{user_input}" <= "20"
	 under20 = homes.select do |x|
	 	x.price <= 20
	end
	under20.each do |x|
		puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
	under20
end
	elsif "#{user_input}" <= "30"
	 under30 = homes.select do |x|
	 	x.price <= 30
	end
	under30.each do |x|
		puts "#{x.name}, #{x.city}, #{x.price}, #{x.capacity}"
	under30
end
end

