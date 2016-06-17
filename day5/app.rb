app.rbrequire_relative("lib/rook.rb")

black_rook_right = Rook.new(8, 8, "black")



puts "Rook Tests"

p black_rook_right.can_move?(8,5) == true
p black_rook_right.can_move?(4,8) == true
p black_rook_right.can_move?(5,5) == false
p black_rook_right.can_move?(3,6) == false

puts ""
black_king = King.new(5,8)

puts "King Tests"

p black_king.can_move?(5,7) == true #forward movement
p black_king.can_move?(6,7) == true #diagnal movement
p black_king.can_move?(5,4) == false 
p black_king.can_move?(7,5) == false 