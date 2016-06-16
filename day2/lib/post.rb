#lib/post.rb

class Post
	attr_reader :title, :date, :text, :sponsor
	def initialize(title, date, text, sponsor)
		@title = title
		@date = date
		@text = text
		@sponsor = sponsor
	end

	def print_post
		if @sponsor == "yes"
			puts "*******" + @title + "*******"
			puts "********"
			puts @text
			puts "--------"
		else
		puts @title
		puts "********"
		puts @text
		puts "--------"
	end
end

end