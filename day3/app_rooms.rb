require_relative("lib/rooms.rb")
require_relative("lib/game.rb")
require_relative("lib/inventory.rb")

Room1 = Room.new("N", "You are in the first room. There is candy [N] of here.\n >")
Room2 = Room.new("W", "You are in the second room. There is water [W] of here.\n >")
Room3 = Room.new("E", "You are in the third room. There are sparkles [E] of here.\n >")
Room4 = Room.new("N", "You are in the fourth room. There are treats [N] of here.\n >")
Room5 = Room.new("E", "You are in the fifth room. The prize is [E] of here.\n >")
Room6 = Room.new("S", "You Won! You are in the sixth and final room! Type [exit] to get the fuck out")
my_game = Game.new
my_inventory = Inventory.new

my_inventory.add_item("truth_sword")
my_inventory.add_item("jew_gold")
my_inventory.add_item("joint")

# def use_item(items)
# 	puts "Do you want to see what you have to play with?"
# 	user_play = gets.chomp
# 		if "#{user_play}" == "yes"
# 	puts @items
# 	end
# end
# my_inventory.use_item
my_inventory.get_item




my_game.add_rooms(Room1)
my_game.add_rooms(Room2)
my_game.add_rooms(Room3)
my_game.add_rooms(Room4)
my_game.add_rooms(Room5)
my_game.add_rooms(Room6)

#my_game.move_room


# exit = nil

# while exit != "exit"
# 	my_game.move_room
# end
