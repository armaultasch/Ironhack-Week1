
class Payroll
	def initialize
		@employees = []
	end

	def add_employee (employee)
			@employees.push(employee)
	end

	
	def pay_employees 
	@employees.each do |x|
		puts "#{x.name}, #{x.calculated_salary_for_employee}"
	end
end
	def notify_employee
			@employees.each do |x|

		puts "We just sent an email to #{x.email} regarding your pay this week!"
	end	
end
	def employer_payout
		total_payout = @employees.reduce(0.0) do |sum, hm|
	sum + hm.calculated_salary_for_employer
end
puts "The Employers total payout for the week is #{total_payout}."
end
end


