require_relative("pieces.rb")

class Pawn < Piece
	def can_move?(final_x, final_y)
		final_x = @x
		change_y = (final_y - @y).abs
		if (@x == @final_x) 
			if ((@final_y >= 8) || (@final_y <= 1))
			false
		elsif	((@x == @final_x) &&  (@colour == "black")) 
			if ((@y < 7) && (@y > 1))
				@y-1 == @final_y
				true
			elsif (@x == @final_x) && (@y == 7) 
				@y - @final_y <= 2

				#finaly_y connot be greater than 2 less than y
				true
			elsif 
			 false
			end
		elsif ((@x == @final_x) && (@colour == "white"))
			if ( @y < 8 && @y > 2)
				@y+1 == @final_y
				true
			elsif (@y == 2)
				y+2 == @final_y
				true 

				( @y < 8 && @y > 2)
				@y+1 == @final_y
				true
			else
			false
			end
	
		else
			false

		end
	end
end