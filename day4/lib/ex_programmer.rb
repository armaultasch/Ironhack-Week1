#lib/ex_programmer.rb
require_relative("ex_module.rb")
require_relative("ex_caffeine_consumer.rb")
class Programmer 
	include Payable
	include CaffeineConsumer
		def program
			consume_caffeine
			do_wonderful_things_with_computers
		end


		def do_wonderful_things_with_computers
			puts "Coding wonderful things!"
		end

	end