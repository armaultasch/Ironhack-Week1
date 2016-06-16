class WordCounter

	def word_count
	puts "Please enter your text so we can take a look."
	text = gets.chomp
	puts "Your text has #{text.split(" ").length} words in it"
	end
end