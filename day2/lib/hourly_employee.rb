

require_relative("salaried_pay.rb")

class HourlyEmployee < Employee
	include SalariedPay
	def initialize(name, email, hourly_rate, hours_worked)
		@name = name
		@email = email
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculated_salary_for_employer
@hours_worked * @hourly_rate

	end
	def calculated_salary_for_employee
(@hours_worked * @hourly_rate)*0.82

	end

end

# class SalariedEmployee < Employee
# 	def initialize(name, email, salary)
# 		@name = name
# 		@email = email
# 		@salary = salary
# 	end

# 	def calculated_salary_for_employer
# 		 (@salary/52)
# 	end
# 	def calculated_salary_for_employee
# 		 (@salary/52)*0.82
# 	end
# end

class MultiPaymentEmployee < Employee
	def initialize(name, email, salary, hourly_rate, hours_worked)
		@name = name
		@email = email
		@salary = salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculated_salary_for_employer
		if @hours_worked > 40
			total_salary = (@salary/52) + @hourly_rate*(@hours_worked-40)
		else 
			total_salary = @salary
		end
		total_salary
	end


	def calculated_salary_for_employee
		if @hours_worked > 40
			total_salary = ((@salary/52) + @hourly_rate*(@hours_worked-40))*0.82
		else 
			total_salary = @salary*0.82
		end
		total_salary
	end

end