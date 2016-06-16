require_relative("lib/ex_caffeine_consumer.rb")
require_relative("lib/ex_designer.rb")
require_relative("lib/ex_programmer.rb")
require_relative("lib/ex_module.rb")

the_designer = Designer.new
the_designer.design_things

the_programmer = Programmer.new
the_programmer.program
the_programmer.receive_salary