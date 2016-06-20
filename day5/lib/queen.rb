require_relative("pieces.rb")

class Queen < Piece
	def can_move?(final_x, final_y)
		if @x == final_x
			true
		elsif @y == final_y
			true
		elsif (@x-1 == final_x) && ((@y-1 == final_y) || @y+1 == final_y)
			true
		elsif (@x+1 == final_x) && ((@y-1 == final_y) || @y+1 == final_y)
			true
		else
			false
		end
	end
end
			