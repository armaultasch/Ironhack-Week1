# foods = ["Mac & Cheese", "Donuts", "Pizza", "French Fries", "Black Truffles"]
# #makes a new array from an array with the same positioning as it is derrived from it

# lengths = foods.map do |dish|
# dish.length 
# end

# lowercased = foods.map do |dish|
# 	dish.downcase
# end

# #p lengths
# p foods
# p lowercased

cities = ["new york", "miami", "barcelona", "ralleigh"]

proper = cities.map do |city|
	proper_new = city.split(" ").map do |the_word|
		the_word.capitalize
	end
	proper_new.join(" ")

end

p proper