class Inventory
	def initialize
		 @items = []
	end

	def add_item(item)
		 puts @items.push(item)
	end

	def show_item(array)
		@items.each do |x|
		 pus "#{x}"
		end
	end

# 	def use_item
# 	puts "Do you want to see what you have to play with?"
# 	user_play = gets.chomp
# 		if user_play == "yes"
# 	puts @items
# 	end
# end

def get_item
	puts "Do you want to see what you have to play with?"
	user_play = gets.chomp
		if user_play == "yes"
	puts @items
	end
		puts "Do you want to use any of your shit?"
		input = gets.chomp
		if input == "yes"
			puts "Which one?:"
			@items
			user_response = gets.chomp


			puts "sucks"
		end
end
	
end