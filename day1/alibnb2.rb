
class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

def print_homes(home_array)
	home_array.each do |the_home|
		puts "#{the_home.name}: #{the_home.city}, $ #{the_home.price}, Capacity: #{the_home.capacity}"
end
end

homes = [
	Home.new("Ali's place", "Miami", 2, 100),
Home.new("Jason's place", "Miami", 7, 50),
Home.new("Alana's place", "San Francisco", 3, 55),
Home.new("Maddie's place", "Los Angeles", 5, 45),
Home.new("Rachel's place", "London", 3, 60),
Home.new("Sarah's place", "New York", 2, 20),
Home.new("Jonathan's place", "New York", 10, 100),
Home.new("Jessie's place", "Boulder", 4, 30),
Home.new("Jessica's place", "Madrid", 9, 20),
Home.new("Sean's place", "New York", 4, 35)
]

input = nil

while input != "exit"
	puts "Type [list], [price] or [capacity] for different sortings."
	puts "What is your selection?"
		input = gets.chomp

		####just to get another line
	puts ""
	if "#{input}" == "list"

		homes_by_price = homes.sort_by { |the_home| the_home.price }
									#same thing as sort { |home_a, home_b| home_a.price <=> home_b.price }
		print_homes(homes_by_price)

	elsif input == "price"

		highest_to_lowest = homes.sort { |home_a, home_b| home_b.price <=> home_a.price }
		print_homes(highest_to_lowest)

	elsif input == "capacity"

		homes_by_capacity = homes.sort_by { |the_home| the_home.capacity}
		print_homes(homes_by_capacity)
	else
		puts "what."
	end

end
