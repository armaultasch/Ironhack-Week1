#lib/ex_designer.rb
require_relative("ex_module.rb")
require_relative("ex_caffeine_consumer.rb")

class Designer 
	include Payable
	include CaffeineConsumer
	
	def design_things
		consume_caffeine
		select_typography
		select_colours
	end

	def select_typography
		puts "Selecting Comic Sans"
	end

	def select_colours
		puts "Selecting black and white as the colours."
	end
end