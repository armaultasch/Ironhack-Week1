require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")

black_rook_right = Rook.new(8, 8, "black")


puts "Rook Tests"


p black_rook_right.can_move?(8,5) == true
p black_rook_right.can_move?(4,8) == true
p black_rook_right.can_move?(5,5) == false
p black_rook_right.can_move?(3,6) == false

puts ""
black_king = King.new(5,8, "black")

puts "King Tests"

p black_king.can_move?(5,7) == true #forward movement
p black_king.can_move?(6,7) == true #diagnal movement
p black_king.can_move?(5,4) == false #diagnal movement (invalid)
p black_king.can_move?(7,5) == false #side diagnal movement? (invalid)

puts ""
white_bishop = Bishop.new(4,5, "white")

puts "Bishop Tests"
#diagnal only
p white_bishop.can_move?(5,6) == true 
p white_bishop.can_move?(3,4) == true 
p white_bishop.can_move?(6,4) == false #diagnal movement (invalid)
p white_bishop.can_move?(7,5) == false #side diagnal movement? (invalid)




puts ""
white_knight = Knight.new(5,4, "white")

puts "Knight Tests"
#diagnal only
p white_knight.can_move?(6,6) == true 
p white_knight.can_move?(7,3) == true 
p white_knight.can_move?(6,4) == false #diagnal movement (invalid)
p white_knight.can_move?(7,7) == false #side diagnal movement? (invalid)


puts ""
black_queen = Queen.new(4,5, "white")

puts "Queen Tests"
#diagnal only
p black_queen.can_move?(4,8) == true 
p black_queen.can_move?(2,5) == true 
p black_queen.can_move?(6,4) == false #diagnal movement (invalid)
p black_queen.can_move?(7,7) == false #side diagnal movement? (invalid)


puts ""
black_starter_pawn = Pawn.new(4,7, "black")
black_pawn = Pawn.new(5,6, "black")
white_starter_pawn = Pawn.new(4,2, "white")
white_pawn = Pawn.new(2,6, "white")

puts "Pawn Tests"
#diagnal only 
p black_starter_pawn.can_move?(3,5) == false 
p black_starter_pawn.can_move?(4,6) == true 
p black_starter_pawn.can_move?(3,5) == false 
p black_starter_pawn.can_move?(2,2) == false 
p black_pawn.can_move?(5,2) == true 
p black_pawn.can_move?(6,5) == false 
p white_starter_pawn.can_move?(4,4) == true 
p white_starter_pawn.can_move?(5,4) == false 
p white_pawn.can_move?(2,7) == true 
p white_pawn.can_move?(5,4) == false 

# p black_pawn.can_move?(5,5) == true 
# p black_pawn.can_move?(6,5) == false 
# p black_queen.can_move?(6,4) == false #diagnal movement (invalid)
# p black_queen.can_move?(7,7) == false #side diagnal movement? (invalid)




puts "My board tests"
my_board = Board.new

my_board.add_piece(white_knight)
my_board.add_piece(white_bishop)

p my_board.board_can_move?(5, 4, 6, 6) == true
p my_board.board_can_move?(5, 4, 7, 3) == true
p my_board.board_can_move?(4, 5, 3, 4) == true
p my_board.board_can_move?(57, 57, 7, 8) == false



