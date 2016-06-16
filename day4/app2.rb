require_relative("lib/user_authentication.rb")
require_relative("lib/word_counter.rb")



# puts "Please log in to this awesome word processing program!"
		
# puts "Username:"
# 	username = gets.chomp

# puts "Password:"
				
# password = gets.chomp

alison = Authentication.new("alison", "maultasch")

my_count = WordCounter.new

alison.text_entry
my_count.word_count

