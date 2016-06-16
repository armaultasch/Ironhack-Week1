require_relative("lib/blog.rb")
require_relative("lib/post.rb")


post1 = Post.new("The first title", 2014, "This is the first", "no")
post2 = Post.new("The second title", 2011, "This is the second", "yes")
post3 = Post.new("The third title", 2016, "This is the third", "no")
post4 = Post.new("The fourth title", 2015, "This is the fourth", "yes")
post5 = Post.new("The fifth title", 2010, "This is the 5th", "no")
post6 = Post.new("The sixth title", 2016, "This is the sixth", "yes")
post7 = Post.new("The seventh title", 2016, "This is the seventh", "no")
post8 = Post.new("The eigth title", 2016, "This is the eigth", "no")
my_blog = Blog.new

my_blog.add_post(post1)
my_blog.add_post(post2)
my_blog.add_post(post3)
my_blog.add_post(post4)
my_blog.add_post(post5)
my_blog.add_post(post6)
my_blog.add_post(post7)
my_blog.add_post(post8)

#my_blog.show_paginated(10)

input = nil

while input != "exit"
	puts "\nType [next] to see the next page or [prev] to see the previous page."
	input = gets.chomp

	if input == "next"
		my_blog.go_next

	elsif input == "prev"
		my_blog.go_prev
	end
my_blog.print_current
end
