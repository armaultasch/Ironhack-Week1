
require("imdb")


# File.read("movies.txt")

# #below is to build an instance of the search
# the_search = Imdb::Search.new("Captain America: Civil War")
	
							##we should have a variable to do this
#the .movies method is the array that is in the text file that contains the results

#first_result = the_search.movies[0]
# puts "Got a total of #{the_search.movies.length} results"
# the Imdb::Movie class contains the movie info
# #Documentation -> http:www.rubydoc.info/github/ariejan/imdb/master/Imdb/Movie
# puts "First result:"
# puts first_result.title
# puts first_result.rating

#puts File.read("movies.txt")

movies = File.read("movies.txt").split(",")



		the_search = []
		movies.each do |x|
			the_movie = Imdb::Search.new(x).movies[0]
		the_search << the_movie	
	end


#movies_search(movies)

# puts Imdb::Search.new("batman").movies[0].title




#print array


def rating(argument)
	graph = ""
	argument.each do |x|
	if x.rating == 10
		graph += "|#"
	else
		graph += "| "
	end
end
	puts graph



	graph = ""
	argument.each do |x|

	if x.rating >= 9 && x.rating < 10
		graph += "|#"
	else 
		graph += "| "
	end
end
	puts graph


	graph = ""
	argument.each do |x|

	if x.rating >= 8 && x.rating < 9
		graph += "|#"
	else 
		graph += "| "
	end
end
	puts graph
	
	
	graph = ""
	argument.each do |x|

	if x.rating >= 7 && x.rating < 8
		graph += "|#"
	else 
		graph += "| "
	end
end
	puts graph

graph = ""
	argument.each do |x|

	if x.rating >= 6 #&& x.rating < 7
		graph += "|#"
	else 
		graph += "| "
	end
end
	puts graph

	graph = ""
	argument.each do |x|

	if x.rating >= 5 #&& x.rating < 6
		graph += "|#"
	else 
		graph += "| "
	end
end
	puts graph



	graph = ""
	argument.each do |x|

	if x.rating >= 4 #&& x.rating < 5
		graph += "|#"
	else 
		graph += "| "
	end
end
	puts graph

	graph = ""
	argument.each do |x|

	if x.rating >= 3 #&& x.rating < 4
		graph += "|#"
	else 
		graph += "| "
	end
end
	puts graph


	graph = ""
	argument.each do |x|

	if x.rating >= 2 #&& x.rating < 3
		graph += "|#"
	else 
		graph += "| "
	end
end
	puts graph

	graph = ""
	argument.each do |x|

	if x.rating >= 1 #&& x.rating < 2
		graph += "|#" 
	else 
		graph += "| "
	end
end
	puts graph


end

rating(the_search)
movies.each_index {|idx| print idx}