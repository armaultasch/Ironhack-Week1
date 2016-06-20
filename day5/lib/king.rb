require_relative("pieces.rb")

class King < Piece
	def can_move?(final_x, final_y)
		change_x = (final_x - @x).abs
		change_y = (final_y - @y).abs
		if (change_x == 0 || change_x == 1 ) &&
			(change_y == 0 || change_y == 1)
			true
		else false
		end
	end
end



	# 	if (@x == final_x) && (@y+1 == (final_y) || (@y-1 == final_y))
	# 		 true
	# 	elsif (@x-1 == final_x) || ((@x+1 == final_x) && (@y == final_y))
	# 		true
	# 	elsif ((@x+1 == final_x) || (@x-1 == final_x)) && (@x == final_y)
	# 		 true
	# 	elsif (@x-1 == final_x) && ((@y-1 == final_y) || (@y+1 == final_y))
	# 		true
	# 	elsif (@x+1 == final_x) && ((@y-1 == final_y) || (@y+1 == final_y))
	# 		true
	# 	elsif ((@x-1 == final_x) || (@x+1 == final_x)) && (@y+1 == final_y)
	# 		true
	# 	else 
	# 		false
	# 	end
	# end

	# end
