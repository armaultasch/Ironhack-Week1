module SalariedPay
	def initialize(name, email, salary)
		@name = name
		@email = email
		@salary = salary
	end

	def calculated_salary_for_employer
		puts (@salary/52)
	end
	def calculated_salary_for_employee
		puts (@salary/52)*0.82
	end
end