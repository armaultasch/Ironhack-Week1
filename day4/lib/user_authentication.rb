require_relative("word_counter.rb")
#require_relative("../app2.rb")

class Authentication
	def initialize (username, password)
		@username = username
		@password = password
	end

	def text_entry
		puts "Please log in to this awesome word processing program!"
		
puts "Username:"
	username = gets.chomp

puts "Password:"
				
password = gets.chomp
		if (username.downcase == @username) && (password.downcase == @password)
						puts ""
						puts "Hello, #{username.capitalize}!"
						
						# text = gets.chomp
					else puts "I'm sorry you may not enter this special place."
				
	end

end
end
