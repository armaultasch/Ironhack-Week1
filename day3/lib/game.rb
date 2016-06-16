class Game 
	attr_reader :position

	def initialize 
		@position = 0
		@rooms = []
	end

	def add_rooms(room)
		@rooms.push(room)
	end

	def room_view 
	@rooms.each do |x|
		puts "#{x.exit}, #{x.message}"
	end
	end

	def move_room
		puts @rooms[@position].message
		input = gets.chomp
			if input == @rooms[@position].exit

		@position += 1
		move_room
	elsif input == "exit"
		return
		else 
		puts "That is not an exit."
		move_room

		end

	end
end
	


