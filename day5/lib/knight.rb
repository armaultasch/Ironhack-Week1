require_relative("pieces.rb")

class Knight < Piece
	def can_move?(final_x, final_y)
		change_x = (final_x - @x).abs
		change_y = (final_y - @y).abs

			if (change_x ==2 && change_y == 1) ||
				(change_x == 1 && change_y == 2)
				true
			else
				false
			end
		end
end
	# 	if (@x+1 == final_x) && ((@y+2 == final_y) || (@y-2 == final_y))
	# 		 true
	# 	elsif (@x-1 == final_x) && ((@y+2 == final_y) || (@y-2 == final_y))
	# 		 true
	# 	elsif (@x+2 == final_x) && ((@y+1 == final_y) || (@y-1 == final_y))
	# 		 true
	# 	elsif (@x-2 == final_x) && ((@y+1 == final_y) || (@y-1 == final_y))
	# 		 true
	# 	else 
	# 		false
	# 	end
	# end

	# end